extends Button

func _ready():
	connect("pressed", self, "_on_SettingsButton_pressed")


func _on_SettingsButton_pressed():
	get_tree().change_scene("res://Scenes/Settings Page Scenes/main-settings-page.tscn")

