extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "_on_MainMenuBtn_pressed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# when back to main menu button is pressed, send back to the main menu scene
func _on_MainMenuBtn_pressed():
	get_tree().change_scene("res://Scenes/MainMenuandQuit/MainMenu.tscn")
