extends LineEdit


var loginScene = "res://Scenes/Login Scene.tscn"
onready var emailVerficationBox = get_parent().get_parent()
onready var usernameInput = get_parent().get_parent().get_parent().get_node("RegisterBackground").get_node("NameInput")
onready var passwordInput = get_parent().get_parent().get_parent().get_node("RegisterBackground").get_node("PasswordInput")
onready var emailInput = get_parent().get_parent().get_parent().get_node("RegisterBackground").get_node("EmailInput")
var code = "123456"
var json_path = "res://JSON/Accounts/Accounts.json"
var newUser
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var code1 = get_parent().get_node("Code1Input")
	var code2 = get_parent().get_node("Code1Input2")
	var code3 = get_parent().get_node("Code1Input3")
	var code4 = get_parent().get_node("Code1Input4")
	var code5 = get_parent().get_node("Code1Input5")
	var code6 = get_parent().get_node("Code1Input6")
	
	var codeText = code1.text + code2.text + code3.text + code4.text + code5.text + code6.text
	if codeText == "123456":
		code1 = ""
		code2 = ""
		code3 = ""
		code4 = ""
		code5 = ""
		code6 = ""
		emailVerficationBox.visible = false
		AccountParser.account_data[usernameInput.text] = {"Password": passwordInput.text, "Email": emailInput.text}
		
		var jsonFile = File.new()
		jsonFile.open(json_path, File.WRITE)
		jsonFile.store_string(JSON.print(AccountParser.account_data, "  ", true))
		jsonFile.close()
		
		print("Registration Successful!")
		get_tree().change_scene(loginScene)
		
