extends Button

func _ready():
	connect("pressed", self, "_on_RegisterButton_pressed")

func _on_RegisterButton_pressed():
	get_tree().change_scene("res://Scenes/mainRegisterPage.tscn")
