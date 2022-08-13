extends LineEdit

#retrieve the inventory list node
onready var inventoryList = get_node(
	"/root/InventoryMenu/InventoryBackground/InventoryList/ScrollContainer/GridContainer"
)


#function to set visibility of all inventory items in inventory list to true
func resetList():
	for items in inventoryList.get_children():
		items.visible = true


# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# when text changed in the search input,
# update the inventory list to display on items that contains the substring of the text
# if the text is empty, reset the list
func _on_ItemSearchBar_text_changed(new_text):
	for items in inventoryList.get_children():
		if new_text in str(items):
			items.visible = true
		else:
			items.visible = false

	if new_text == "":
		resetList()
