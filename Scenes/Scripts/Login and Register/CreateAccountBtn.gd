extends Button

#retrieve dependent nodes
onready var loginClick = get_parent().get_node("LoginClickText")
onready var emailInput = get_parent().get_node("EmailInput")
onready var nameInput = get_parent().get_node("NameInput")
onready var passwordInput = get_parent().get_node("PasswordInput")
onready var confirmInput = get_parent().get_node("ConfirmInput")
onready var dobInput = get_parent().get_node("DoBInput")
onready var tocInput = get_parent().get_node("ToCCheckBox")
onready var registerBox = get_parent()
onready var emailVerifBox = get_parent().get_parent().get_node("EmailVerfication")
onready var parentAccountCreateBox = get_parent().get_parent().get_node("CreateParentAccountScene")
onready var passwordCriteriaBox = get_parent().get_parent().get_parent().get_node(
	"PasswordCriteriaPopUp"
)
onready var passwordMatchLabel = get_parent().get_node("PasswordMatchLabel")
onready var emailValidateLabel = get_parent().get_node("EmailValidateLabel")
onready var dobValidateLabel = get_parent().get_node("DoBValidateLabel")
onready var userExistPopup = get_parent().get_node("UserExistPopUp")
var time = OS.get_date()


# Called when the node enters the scene tree for the first time.
# reset minor variables to empty
func _ready():
	MinorInfoVariables.reset()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#if all fields are filled out, enable create account button
	if (
		emailInput.text != ""
		and nameInput.text != ""
		and passwordInput.text != ""
		and confirmInput.text != ""
		and dobInput.text != ""
		and tocInput.pressed == true
		and passwordCriteriaBox.criteriaMet
		and passwordMatchLabel.visible == false
		and emailValidateLabel.visible == false
		and dobValidateLabel.visible == false
	):
		disabled = false
	else:
		disabled = true


func _pressed():
	#if account already exists, enable popup, else open a window accordingly
	if AccountParser.account_data.has(nameInput.text):
		userExistPopup.popup_centered()
		userExistPopup.dialog_text = "Username already exist!"

	else:
		registerBox.modulate = Color(217 / 255, 217 / 255, 217 / 255, (255 * .6) / 255)
		emailInput.editable = false
		nameInput.editable = false
		passwordInput.editable = false
		confirmInput.editable = false
		dobInput.editable = false
		tocInput.disabled = true
		loginClick.disabled = true

		#if a minor, open a guardian message, else proceed to email verification
		if time["year"] - int(dobInput.text.substr(6)) < 14:
			parentAccountCreateBox.visible = true
		else:
			emailVerifBox.visible = true
