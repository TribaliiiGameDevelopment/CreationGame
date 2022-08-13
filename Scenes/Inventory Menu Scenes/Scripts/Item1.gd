extends Panel

onready var ItemDescPanel = get_node("/root/InventoryMenu/InventoryBackground/ItemDescription")
onready var ItemDescNameText = get_node(
	"/root/InventoryMenu/InventoryBackground/ItemDescription/ItemName"
)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Item1_gui_input(event):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		ItemDescPanel.visible = true
		ItemDescNameText.text = get_name()
