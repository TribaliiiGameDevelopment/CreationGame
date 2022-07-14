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
	
	if (AccountParser.account_data.has(username)):
		print("Found")
		if (password != str(AccountParser.account_data[username].Password)):
			print("Wrong Password")
		else:
			print("Logged in!")
	else:
		get_node("../AccountNotFound").popup_centered()
		print("Not Found")
		
	print(password)
