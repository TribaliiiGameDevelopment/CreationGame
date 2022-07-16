extends Node

var minorUsername
var minorPassword
var minorEmail
var isGuardianAccount
var json_path = "res://JSON/Accounts/Accounts.json"

# Called when the node enters the scene tree for the first time.
func _ready():
	minorUsername = ""
	minorPassword = ""
	minorEmail = ""

func setMinor(username, password, email):
	isGuardianAccount = true
	minorUsername = username
	minorPassword = password
	minorEmail = email
	
func getMinor():
	return [minorUsername, minorPassword, minorEmail]

func setGuardian(username, email):
	AccountParser.account_data[minorUsername] = {"Password": minorPassword, "Email": email, "Guardian": username}
	var jsonFile = File.new()
	jsonFile.open(json_path, File.WRITE)
	jsonFile.store_string(JSON.print(AccountParser.account_data, "  ", true))
	jsonFile.close()

func reset():
	isGuardianAccount = false
