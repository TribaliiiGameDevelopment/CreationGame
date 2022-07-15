extends Button

#insert login scene path here
var loginScene = "res://Scenes/Login Page Scenes/Login Scene.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "_login_pressed")

#when login text is pressed on, change to login scene
func _login_pressed():
	get_tree().change_scene(loginScene)

