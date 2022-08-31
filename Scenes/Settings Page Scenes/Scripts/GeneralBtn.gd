extends Button

#retrieve dependent nodes
onready var generalPage = get_node(
	"/root/main-settings-page/MainSettingPage/General-page-box"
)
onready var controlPage = get_node(
	"/root/main-settings-page/MainSettingPage/Controls-page-box"
)
onready var audioPage = get_node(
	"/root/main-settings-page/MainSettingPage/Audio-page-box"
)
onready var videoPage = get_node(
	"/root/main-settings-page/MainSettingPage/Video-page-box"
)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# when general button is pressed, set all other pages visibility to false
func _on_GeneralBtn_pressed():
	generalPage.visible = true
	controlPage.visible = false
	audioPage.visible = false
	videoPage.visible = false
