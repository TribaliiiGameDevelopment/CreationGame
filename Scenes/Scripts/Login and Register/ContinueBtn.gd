extends Button

#insert login scene path here
var guardianPageScene = "res://Scenes/ParentRegisterPage.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "_continue_pressed")

#when login text is pressed on, change to login scene
func _continue_pressed():
	get_tree().change_scene(guardianPageScene)
