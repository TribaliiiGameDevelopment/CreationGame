extends Button

func _ready():
	connect("pressed", self, "_on_SignOutButton_pressed")


func _on_SignOutButton_pressed():
	get_tree().change_scene("res://Scenes/Login Page Scenes/Login Scene.tscn")
