extends Button

onready var nameInput = get_parent().get_parent().get_node("RegisterBackground").get_node("NameInput")
onready var emailInput = get_parent().get_parent().get_node("RegisterBackground").get_node("EmailInput")
onready var passwordInput = get_parent().get_parent().get_node("RegisterBackground").get_node("PasswordInput")
var guardianPageScene = "res://Scenes/Register Page Scenes/ParentRegisterPage.tscn"
var minorUsername
var minorPassword
var minorEmail
# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "_continue_pressed")

#when login text is pressed on, change to login scene
func _continue_pressed():
	get_tree().change_scene(guardianPageScene)
