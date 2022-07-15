extends Button

var username
var password

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", self, "_on_button_pressed")

func _on_button_pressed():
	#Gets the login info entered in both Username and Password fields and stores them into their respective variables -Jihad
	username = get_node("../Username Field").get_text()
	password = get_node("../Password Field").get_text()
	
	#Login info check -Jihad
	if (AccountParser.account_data.has(username)): #Checks if the entered username is present in Accounts.json -Jihad
		#If it's present, the debug log will output "Found" and will continue onto the password check. -Jihad
		print("Found")
		if (password != str(AccountParser.account_data[username].Password)): #Checks if the enetered password does not match the account password in Accounts.json -Jihad
			#If it does not match, the WrongPassword node will become visible notifying the user that they entered the wrong password, and "Wrong Password" will be printed to the debug log -JIhad
			get_node("../WrongPassword").popup_centered()
			print("Wrong Password")
		else:
			#If the password is correct, the user will log into the game -Jihad
			print("Logged in!")
			get_tree().change_scene("res://Scenes/Placeholder Scenes/Placeholder Game Scene.tscn")
	else:
		#If a username not present in Accounts.json is entered, the AccountNotFound node will become visible notifying the user that the account was not found and "Not Found" will be printed tot he debug log -Jihad
		get_node("../AccountNotFound").popup_centered()
		print("Not Found")
		
