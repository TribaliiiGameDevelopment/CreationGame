extends RichTextLabel

var dobRegex = RegEx.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	dobRegex.compile("\\d{2}\\/\\d{2}\\/\\d{4}$")
	pass # Replace with function body.



func _process(delta):
	var dobInput = get_parent().get_node("DoBInput")
	if(dobInput.text == ""):
		pass
	else:
		if dobRegex.search(dobInput.text):
			visible = false
		else:
			visible = true
