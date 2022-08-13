extends Node

#Finds the Accounts.json file and stores it into variable called json_path  -Jihad
var json_path = "res://JSON/Accounts/Accounts.json"

#Account data array -Jihad
var account_data = {}


# Called when the node enters the scene tree for the first time.
func _ready():
	#Creates object of class File called jsonFile. This will be used to store the Accounts.json file. -Jihad
	var jsonFile = File.new()

	#We open and read Accounts.json and store it into jsonFile. -Jihad
	jsonFile.open(json_path, jsonFile.READ)

	#Parses and stores the data within Accounts.json as a string in the accounts_text variable -Jihad
	var accounts_text = JSON.parse(jsonFile.get_as_text())

	#Parses the Accounts.json through the accounts_text variable and stores it in account_data. -Jihad
	account_data = accounts_text.result

	#Json parsing is completed so we "close" it so that the program will no longer read the Accounts.json file. This is to save memory usage. -Jihad
	jsonFile.close()

#-----------FINISHED PARSING THE JSON -Jihad----------------------
