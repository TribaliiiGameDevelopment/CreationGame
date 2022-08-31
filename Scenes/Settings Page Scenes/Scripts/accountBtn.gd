extends Button

#retrieving dependent nodes
onready var profilePage = get_node(
	"/root/main-settings-page/MainSettingPage/General-page-box/Profile-page-box"
)
onready var accountPage = get_node(
	"/root/main-settings-page/MainSettingPage/General-page-box/Account-page-box"
)
onready var tutorialPage = get_node(
	"/root/main-settings-page/MainSettingPage/General-page-box/Tutorials-page-box"
)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#if button is pressed, set profile page and tutorial page visibility to false
func _on_accountBtn_pressed():
	profilePage.visible = false
	accountPage.visible = true
	tutorialPage.visible = false
