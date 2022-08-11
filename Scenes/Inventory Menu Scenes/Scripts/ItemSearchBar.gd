extends LineEdit


onready var inventoryList = get_node('/root/InventoryMenu/InventoryBackground/InventoryList/ScrollContainer/GridContainer')

func resetList():
	for items in inventoryList.get_children():
		items.visible = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ItemSearchBar_text_changed(new_text):
	for items in inventoryList.get_children():
		if new_text in str(items):
			items.visible = true
		else:
			items.visible = false
	
	if new_text == '':
		resetList()
			
