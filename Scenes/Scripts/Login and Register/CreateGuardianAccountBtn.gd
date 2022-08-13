extends Button

#retrieve dependent nodes
onready var loginClick = get_parent().get_node("LoginClickText")
onready var emailInput = get_parent().get_node("EmailInput")
onready var nameInput = get_parent().get_node("NameInput")
onready var passwordInput = get_parent().get_node("PasswordInput")
onready var confirmInput = get_parent().get_node("ConfirmInput")
onready var tocInput = get_parent().get_node("ToCCheckBox")
onready var ageInput = get_parent().get_node("AgeCheckBox")
onready var registerBox = get_parent()
onready var emailVerifBox = get_parent().get_parent().get_node("EmailVerfication")
onready var passwordCriteriaBox = get_parent().get_parent().get_parent().get_node(
	"PasswordCriteriaPopUp"
)
onready var passwordMatchLabel = get_parent().get_node("PasswordMatchLabel")
onready var userExistPopup = get_parent().get_node("UserExistPopUp")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#if all fields are filled out, enable create account button
	if (
		emailInput.text != ""
		and nameInput.text != ""
		and passwordInput.text != ""
		and confirmInput.text != ""
		and tocInput.pressed == true
		and ageInput.pressed == true
		and passwordCriteriaBox.criteriaMet
		and passwordMatchLabel.visible == false
	):
		disabled = false
	else:
		disabled = true


func _pressed():
	#if account exists, else proceed to email verfication
	if AccountParser.account_data.has(nameInput.text):
		userExistPopup.popup_centered()
		userExistPopup.dialog_text = "Username already exist!"
	else:
		registerBox.modulate = Color(217 / 255, 217 / 255, 217 / 255, (255 * .6) / 255)
		emailInput.editable = false
		nameInput.editable = false
		passwordInput.editable = false
		confirmInput.editable = false
		tocInput.disabled = true
		ageInput.disabled = true
		loginClick.disabled = true
		emailVerifBox.visible = true
