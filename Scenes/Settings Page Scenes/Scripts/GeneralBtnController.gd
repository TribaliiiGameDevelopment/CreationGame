extends Node2D

# set up variables for each button
onready var profileBtn = get_node("profileBtn")
onready var accountBtn = get_node("accountBtn")
onready var tutorialBtn = get_node("tutorialBtn")

#set up states to keep track of which button is pressed
enum state {PROFILE_PRESSED, ACCOUNT_PRESSED, TUTORIAL_PRESSED}
var curr_state

# Called when the node enters the scene tree for the first time.
#by default, profile section if active
func _ready():
	profileBtn.pressed = true
	accountBtn.pressed = false
	tutorialBtn.pressed = false
	curr_state = state.PROFILE_PRESSED


# Called every frame. 'delta' is the elapsed time since the previous frame.
# if a button is pressed, unpress all other buttons and set current state to that button
func _process(_delta):
	if(profileBtn.pressed and curr_state != state.PROFILE_PRESSED):
		curr_state = state.PROFILE_PRESSED
		accountBtn.pressed = false
		tutorialBtn.pressed = false
	elif(accountBtn.pressed and curr_state != state.ACCOUNT_PRESSED):
		curr_state = state.ACCOUNT_PRESSED
		profileBtn.pressed = false
		tutorialBtn.pressed = false
	elif(tutorialBtn.pressed and curr_state != state.TUTORIAL_PRESSED):
		curr_state = state.TUTORIAL_PRESSED
		profileBtn.pressed = false
		accountBtn.pressed = false
		
	if(curr_state == state.PROFILE_PRESSED):
		profileBtn.pressed = true
	elif(curr_state == state.ACCOUNT_PRESSED):
		accountBtn.pressed = true
	elif(curr_state == state.TUTORIAL_PRESSED):
		tutorialBtn.pressed = true
