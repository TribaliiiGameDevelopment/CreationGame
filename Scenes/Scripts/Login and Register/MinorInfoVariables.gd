extends Node

var minorUsername
var minorPassword
var minorEmail
# Called when the node enters the scene tree for the first time.
func _ready():
	minorUsername = ""
	minorPassword = ""
	minorEmail = ""

func setMinor(username, password, email):
	minorUsername = username
	minorPassword = password
	minorEmail = email
	
func getMinor():
	return [minorUsername, minorPassword, minorEmail]
