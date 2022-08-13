extends OptionButton


# Called when the node enters the scene tree for the first time.
#default choices
func _ready():
	add_item("Item Color")
	add_item("Red")
	add_item("Green")
	add_item("Blue")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
