extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _on_QuitButton_pressed():
	get_tree().change_scene("res://Scenes/MainMenuandQuit/QuitNotification.tscn")
	queue_free()
