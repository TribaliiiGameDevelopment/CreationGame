extends Button


onready var mainSettingsPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ExitBtn_pressed():
	get_parent().visible = false
	mainSettingsPage.modulate = Color(1, 1, 1)
