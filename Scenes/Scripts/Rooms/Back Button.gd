extends Button

func _ready():
	connect("pressed", self, "_on_BackButton_pressed")


func _on_BackButton_pressed():
	get_tree().change_scene("res://Scenes/MainMenuandQuit/MainMenu.tscn")
