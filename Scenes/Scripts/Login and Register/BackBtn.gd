extends Button

#insert login scene path here
var RegisterPageScene = "res://Scenes/Register Page Scenes/mainRegisterPage.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "_back_pressed")

#when login text is pressed on, change to login scene
func _back_pressed():
	get_tree().change_scene(RegisterPageScene)
