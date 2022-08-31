extends Button

func _ready():
	connect("pressed", self, "_on_RoomButton_pressed")


func _on_RoomButton_pressed():
	get_tree().change_scene("res://Scenes/Rooms Page Scenes/Rooms Scene.tscn")
