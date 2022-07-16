extends Button

func _ready():
	connect("pressed", self, "_on_RegisterButton_pressed")

func _on_RegisterButton_pressed():
	if MinorInfoVariables.isGuardianAccount == true:
		get_tree().change_scene("res://Scenes/Register Page Scenes/ParentRegisterPage.tscn")
	else:
		get_tree().change_scene("res://Scenes/Register Page Scenes/mainRegisterPage.tscn")
