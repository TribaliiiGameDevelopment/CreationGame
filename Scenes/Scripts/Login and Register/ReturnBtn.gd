extends Button

onready var registerBox = get_parent().get_parent().get_node("RegisterBackground")
onready var createParentAccountBox = get_parent()
onready var loginClick = get_parent().get_parent().get_node("RegisterBackground").get_node("LoginClickText")
onready var emailInput = get_parent().get_parent().get_node("RegisterBackground").get_node("EmailInput")
onready var nameInput = get_parent().get_parent().get_node("RegisterBackground").get_node("NameInput")
onready var passwordInput = get_parent().get_parent().get_node("RegisterBackground").get_node("PasswordInput")
onready var confirmInput = get_parent().get_parent().get_node("RegisterBackground").get_node("ConfirmInput")
onready var dobInput = get_parent().get_parent().get_node("RegisterBackground").get_node("DoBInput")
onready var tocCheckBox = get_parent().get_parent().get_node("RegisterBackground").get_node("ToCCheckBox")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _pressed():
	createParentAccountBox.visible = false
	registerBox.modulate = Color(1, 1, 1)
	loginClick.disabled = false
	emailInput.editable = true
	nameInput.editable = true
	passwordInput.editable = true
	confirmInput.editable = true
	dobInput.editable = true
	tocCheckBox.disabled = false
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
