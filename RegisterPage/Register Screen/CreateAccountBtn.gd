extends Button

onready var emailInput = get_parent().get_node("EmailInput")
onready var nameInput = get_parent().get_node("NameInput")
onready var passwordInput = get_parent().get_node("PasswordInput")
onready var confirmInput = get_parent().get_node("ConfirmInput")
onready var dobInput = get_parent().get_node("DoBInput")
onready var tocInput = get_parent().get_node("ToCCheckBox")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#if all fields are filled out, enable create account button
	if (emailInput.text != "" and 
		nameInput.text != "" and 
		passwordInput.text != "" and
		confirmInput.text != "" and
		dobInput.text != "" and
		tocInput.pressed == true):
		disabled = false
	else:
		disabled = true
