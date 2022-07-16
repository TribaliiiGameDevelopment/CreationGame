extends RichTextLabel

var emailRegex = RegEx.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	emailRegex.compile("^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$")
	pass # Replace with function body.



func _process(delta):
	var emailInput = get_parent().get_node("EmailInput")
	if(emailInput.text == ""):
		pass
	else:
		if emailRegex.search(emailInput.text):
			visible = false
		else:
			visible = true
