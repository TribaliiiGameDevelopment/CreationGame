extends Button

onready var generalPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage/General-page-box")
onready var controlPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage/Controls-page-box")
onready var audioPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage/Audio-page-box")
onready var videoPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage/Video-page-box")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# when button is pressed
func _on_ControlsBtn_pressed():
	generalPage.visible = false
	controlPage.visible = true
	audioPage.visible = false
	videoPage.visible = false
