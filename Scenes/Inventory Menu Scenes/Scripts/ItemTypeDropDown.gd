extends OptionButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	add_item('Item Type')
	add_item('Sword')
	add_item('Shield')
	add_item('Armor')


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
