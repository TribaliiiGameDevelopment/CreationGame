extends Node

var minorUsername
var minorPassword
var minorEmail
var isGuardianAccount
var json_path = "res://JSON/Accounts/Accounts.json"

# Called when the node enters the scene tree for the first time.
# set minor variables to empty
func _ready():
	minorUsername = ""
	minorPassword = ""
	minorEmail = ""

#function that sets minor credentials
func setMinor(username, password, email):
	isGuardianAccount = true
	minorUsername = username
	minorPassword = password
	minorEmail = email
	
# return a list of the credential
func getMinor():
	return [minorUsername, minorPassword, minorEmail]

# set the guardian to the minor
func setGuardian(username, email):
	AccountParser.account_data[minorUsername] = {"Password": minorPassword, "Email": email, "Guardian": username}
	var jsonFile = File.new()
	jsonFile.open(json_path, File.WRITE)
	jsonFile.store_string(JSON.print(AccountParser.account_data, "  ", true))
	jsonFile.close()

# set registering user to be not a guardian
func reset():
	isGuardianAccount = false
