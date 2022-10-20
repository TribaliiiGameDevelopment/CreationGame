extends KinematicBody

var movement_speed = 7.0
var gravity = 50.0
var jumping_speed = 10.0

var _velocity = Vector3.ZERO
var _snap_vector = Vector3.DOWN

onready var _springarm: SpringArm = $SpringArm
onready var _model: Spatial = $Sketchfab_model

func _physics_process(delta):
	var move_direction := Vector3.ZERO
	move_direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	move_direction.z = Input.get_action_strength("move_back") - Input.get_action_strength("move_forward")
	move_direction = move_direction.rotated(Vector3.UP, _springarm.rotation.y).normalized()
	
	_velocity.x = move_direction.x * movement_speed
	_velocity.z = move_direction.z * movement_speed
	_velocity.y -= gravity * delta
	
	var landed = is_on_floor() and _snap_vector == Vector3.ZERO
	var is_jumping = is_on_floor() and Input.is_action_just_pressed("jump")
	if is_jumping:
		_velocity.y = jumping_speed
		_snap_vector = Vector3.ZERO
	elif landed:
		_snap_vector = Vector3.DOWN
	_velocity = move_and_slide_with_snap(_velocity, _snap_vector, Vector3.UP, true)
	
	if _velocity.length() > 0.2:
		var look_direction = Vector2(_velocity.z, _velocity.y)
		_model.rotation.y = look_direction.angle()
		
		
func _process(_delta):
	_springarm.translation = translation
	

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
