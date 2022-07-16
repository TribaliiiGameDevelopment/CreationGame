extends Button

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
onready var passwordCriteriaBox = get_parent().get_parent().get_parent().get_node("PasswordCriteriaPopUp")
onready var passwordMatchLabel = get_parent().get_node("PasswordMatchLabel")
onready var emailValidateLabel = get_parent().get_node("EmailValidateLabel")
onready var dobValidateLabel = get_parent().get_node("DoBValidateLabel")
var time = OS.get_date()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#if all fields are filled out, enable create account button
	if (emailInput.text != "" and 
		nameInput.text != "" and 
		passwordInput.text != "" and
		confirmInput.text != "" and
		dobInput.text != "" and
		tocInput.pressed == true and
		passwordCriteriaBox.criteriaMet and
		passwordMatchLabel.visible == false and
		emailValidateLabel.visible == false and
		dobValidateLabel.visible == false):
		disabled = false
	else:
		disabled = true

func _pressed():
	registerBox.modulate = Color(217/255, 217/255, 217/255, (255 * .6) / 255)
	emailInput.editable = false
	nameInput.editable = false
	passwordInput.editable = false
	confirmInput.editable = false
	dobInput.editable = false
	tocInput.disabled = true
	loginClick.disabled = true
	
	if time['year'] - int(dobInput.text.substr(6)) < 14:
		parentAccountCreateBox.visible = true
	else:
		emailVerifBox.visible = true
