extends Button

onready var charactersScene = get_parent().get_node("Characters Scene")

func _ready():
	connect("pressed", self, "_on_CharactersButton_pressed")


func _on_CharactersButton_pressed():
	if (charactersScene.visible != false):
		charactersScene.visible = false
	else:
		charactersScene.visible = true
