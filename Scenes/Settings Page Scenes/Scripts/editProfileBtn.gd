extends Button

#retrieve dependent nodes
onready var uploadOverlay = get_node("/root/main-settings-page/TempBackground/UploadPictureOverlay")
onready var mainSettingsPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#when edit profile button is pressed, display overlay
func _on_editProfileBtn_pressed():
	uploadOverlay.visible = true
	mainSettingsPage.modulate = Color(.5, .5, .5)
