extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		print(MinorInfoVariables.isGuardianAccount)
	if Input.is_action_pressed("return_login"):
		if get_tree().get_current_scene().get_name() == "Placeholder Game":
			get_tree().change_scene("res://Scenes/Login Page Scenes/Login Scene.tscn")
