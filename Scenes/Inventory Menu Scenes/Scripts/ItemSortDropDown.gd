extends OptionButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
# default choices
func _ready():
	add_item("Item Sort")
	add_item("Attack")
	add_item("Defense")
	add_item("Speed")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
