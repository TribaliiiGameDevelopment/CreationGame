extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.


#check user password input for password and confirm
func _process(delta):
	#fetch values from text fields
	var passwordText = get_parent().get_node("PasswordInput")
	var confirmText = get_parent().get_node("ConfirmInput")

	# if text field is empty, ignore,
	# else display warning based on the equality of the password and confirm password text
	if confirmText.text == "":
		pass
	else:
		if passwordText.text == confirmText.text:
			visible = false
		else:
			visible = true
