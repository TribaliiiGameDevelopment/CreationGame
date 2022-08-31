extends LineEdit

#retrieve next scene after registering
var loginScene = "res://Scenes/Login Page Scenes/Login Scene.tscn"

#retrieve dependent nodes
onready var emailVerficationBox = get_parent().get_parent()
onready var usernameInput = get_parent().get_parent().get_parent().get_node("RegisterBackground").get_node(
	"NameInput"
)
onready var passwordInput = get_parent().get_parent().get_parent().get_node("RegisterBackground").get_node(
	"PasswordInput"
)
onready var emailInput = get_parent().get_parent().get_parent().get_node("RegisterBackground").get_node(
	"EmailInput"
)

# set up hard coded 6 digit code (need to be randomized) and access temporary database
var code = "123456"
var json_path = "res://JSON/Accounts/Accounts.json"
var newUser


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#fetch the code from each input from user
	var code1 = get_parent().get_node("Code1Input")
	var code2 = get_parent().get_node("Code1Input2")
	var code3 = get_parent().get_node("Code1Input3")
	var code4 = get_parent().get_node("Code1Input4")
	var code5 = get_parent().get_node("Code1Input5")
	var code6 = get_parent().get_node("Code1Input6")

	#concatenate the codes
	var codeText = code1.text + code2.text + code3.text + code4.text + code5.text + code6.text

	#if the code is equal to required code
	if codeText == "123456":
		code1 = ""
		code2 = ""
		code3 = ""
		code4 = ""
		code5 = ""
		code6 = ""

		#if on guardian register screen, register for minor, else register for regular users and save in json
		if get_parent().get_parent().get_parent().name == "ParentRegisterScreen":
			var minorInfo = MinorInfoVariables.getMinor()
			print("Registering for minor...")
			AccountParser.account_data[usernameInput.text] = {
				"Password": passwordInput.text, "Email": emailInput.text
			}
			AccountParser.account_data[minorInfo[0]] = {
				"Password": minorInfo[1], "Email": emailInput.text, "Guardian": usernameInput.text
			}
		else:
			print("Registering for regular...")
			AccountParser.account_data[usernameInput.text] = {
				"Password": passwordInput.text, "Email": emailInput.text
			}

		#update json account files
		var jsonFile = File.new()
		jsonFile.open(json_path, File.WRITE)
		jsonFile.store_string(JSON.print(AccountParser.account_data, "  ", true))
		jsonFile.close()

		#change to character creation scene after successful registration
		print("Registration Successful!")
		MinorInfoVariables.reset()
		get_tree().change_scene(loginScene)
