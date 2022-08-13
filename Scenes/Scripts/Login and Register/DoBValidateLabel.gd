extends RichTextLabel

# set up a regular expression for date of births
var dobRegex = RegEx.new()
# Called when the node enters the scene tree for the first time.


#set a regex to validate format of date of birth
func _ready():
	dobRegex.compile("\\d{2}\\/\\d{2}\\/\\d{4}$")


#verify input from user
func _process(delta):
	var dobInput = get_parent().get_node("DoBInput")
	if dobInput.text == "":
		pass
	else:
		# if input is valid, hide warning message
		if dobRegex.search(dobInput.text):
			visible = false
		else:
			visible = true
