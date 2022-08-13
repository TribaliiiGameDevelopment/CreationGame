extends Button

#retrieve dependent nodes
onready var nameInput = get_parent().get_parent().get_node("RegisterBackground").get_node(
	"NameInput"
)
onready var emailInput = get_parent().get_parent().get_node("RegisterBackground").get_node(
	"EmailInput"
)
onready var passwordInput = get_parent().get_parent().get_node("RegisterBackground").get_node(
	"PasswordInput"
)
var guardianPageScene = "res://Scenes/Register Page Scenes/ParentRegisterPage.tscn"

#set up necessary variables
var minorUsername
var minorPassword
var minorEmail


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "_continue_pressed")


#when continue button is pressed, change to guardian scene and record minors credentials
func _continue_pressed():
	minorUsername = nameInput.text
	minorPassword = passwordInput.text
	minorEmail = emailInput.text
	#save minor information
	MinorInfoVariables.setMinor(minorUsername, minorPassword, minorEmail)
	#change to guadian register scene
	get_tree().change_scene(guardianPageScene)
