extends Node

#Finds the Accounts.json file -Jihad
var json_path = "res://JSON/Accounts/Accounts.json"

#Account data array -Jihad
var account_data = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	var jsonFile = File.new()
	
	jsonFile.open(json_path, jsonFile.READ)
	
	#Stores the data within Accounts.json as a string in the accounts_text variable -Jihad
	var accounts_text = JSON.parse(jsonFile.get_as_text())
	
	#Parses the Accounts.json through the accounts_text variable and stores it in account_data. -Jihad
	account_data = accounts_text.result
	
	#Json parsing is completed so we "close" it so that the program will no longer read the Accounts.json file. -Jihad
	jsonFile.close()
	
	print(account_data)
#-----------FINISHED PARSING THE JSON -Jihad----------------------
