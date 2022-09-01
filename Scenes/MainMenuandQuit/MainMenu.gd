extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _on_QuitButton_pressed():
	get_tree().change_scene("res://Scenes/MainMenuandQuit/QuitNotification.tscn")
	queue_free()


func _on_MarketplaceButton_button_down():
	pass # Replace with function body.
