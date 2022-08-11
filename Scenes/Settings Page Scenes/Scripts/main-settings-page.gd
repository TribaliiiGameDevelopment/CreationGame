extends Node2D

#set up access to dependent nodes
onready var generalPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage/General-page-box")
onready var controlPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage/Controls-page-box")
onready var audioPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage/Audio-page-box")
onready var videoPage = get_node("/root/main-settings-page/TempBackground/MainSettingPage/Video-page-box")


# Called when the node enters the scene tree for the first time.
# by default, general page is active
func _ready():
	generalPage.visible = true
	controlPage.visible = false
	audioPage.visible = false
	videoPage.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
