extends OptionButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
# default choices
func _ready():
	add_item('Item Size')
	add_item('Small')
	add_item('Medium')
	add_item('Large')


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
