extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	var passwordText = get_parent().get_node("PasswordInput")
	var confirmText = get_parent().get_node("ConfirmInput")
	if confirmText.text == "":
		pass
	else:
		if passwordText.text == confirmText.text:
			visible = false
		else:
			visible = true
