extends Button

#retrieve main settings page
onready var mainSettingsPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#when exit button of edit profile window is pressed, hide the profile window
func _on_ExitBtn_pressed():
	get_parent().visible = false
	mainSettingsPage.modulate = Color(1, 1, 1)
