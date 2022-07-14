extends LineEdit


var loginScene = "res://Scenes/Login Scene.tscn"
onready var emailVerficationBox = get_parent().get_parent()
var code = "123456"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if text == "123456":
		text = ""
		emailVerficationBox.visible = false
		get_tree().change_scene(loginScene)
		
