extends Spatial

const file_name = "user://gamedata.json"
var level = 1

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func savedata():
	var file = File.new()
	file.open(file_name,_File.WRITE)
	file.store_32(level)
	file.close()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
