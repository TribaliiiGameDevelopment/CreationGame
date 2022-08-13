extends RichTextLabel

# set up new regular expressions for email format
var emailRegex = RegEx.new()


# Called when the node enters the scene tree for the first time.
#set up regex to verify email format
func _ready():
	emailRegex.compile("^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$")


#verify email format based on input
func _process(delta):
	var emailInput = get_parent().get_node("EmailInput")
	if emailInput.text == "":
		pass
	else:
		# if email is valid, hide warning message
		if emailRegex.search(emailInput.text):
			visible = false
		else:
			visible = true
