extends LineEdit


var loginScene = "res://Scenes/Login Scene.tscn"
onready var emailVerficationBox = get_parent().get_parent()
onready var usernameInput = get_parent().get_parent().get_parent().get_node("RegisterBackground").get_node("NameInput")
onready var passwordInput = get_parent().get_parent().get_parent().get_node("RegisterBackground").get_node("PasswordInput")

var code = "123456"
var json_path = "res://JSON/Accounts/Accounts.json"
var newUser
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if text == "123456":
		text = ""
		emailVerficationBox.visible = false
		AccountParser.account_data[usernameInput.text] = {"Password": passwordInput.text}
		
		var jsonFile = File.new()
		jsonFile.open(json_path, File.WRITE)
		jsonFile.store_string(JSON.print(AccountParser.account_data, "  ", true))
		jsonFile.close()
		
		get_tree().change_scene(loginScene)
		
