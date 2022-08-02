extends Node2D

# set up variables for each button
onready var generalBtn = get_node("GeneralBtn")
onready var controlBtn = get_node("ControlsBtn")
onready var audioBtn = get_node("AudioBtn")
onready var videoBtn = get_node("VideoBtn")

#set up states to keep track of which button is pressed
enum state {GENERAL_PRESSED, CONTROL_PRESSED, AUDIO_PRESSED, VIDEO_PRESSED}
var curr_state

# Called when the node enters the scene tree for the first time.
func _ready():
	generalBtn.pressed = true
	controlBtn.pressed = false
	audioBtn.pressed = false
	videoBtn.pressed = false
	curr_state = state.GENERAL_PRESSED


# Called every frame. 'delta' is the elapsed time since the previous frame.
# if a button is pressed, unpress all other buttons
func _process(_delta):
	if(generalBtn.pressed and curr_state != state.GENERAL_PRESSED):
		curr_state = state.GENERAL_PRESSED
		controlBtn.pressed = false
		audioBtn.pressed = false
		videoBtn.pressed = false
	elif(controlBtn.pressed and curr_state != state.CONTROL_PRESSED):
		curr_state = state.CONTROL_PRESSED
		generalBtn.pressed = false
		audioBtn.pressed = false
		videoBtn.pressed = false
	elif(audioBtn.pressed and curr_state != state.AUDIO_PRESSED):
		curr_state = state.AUDIO_PRESSED
		generalBtn.pressed = false
		controlBtn.pressed = false
		videoBtn.pressed = false
	elif(videoBtn.pressed and curr_state != state.VIDEO_PRESSED):
		curr_state = state.VIDEO_PRESSED
		generalBtn.pressed = false
		controlBtn.pressed = false
		audioBtn.pressed = false
		
	if(curr_state == state.GENERAL_PRESSED):
		generalBtn.pressed = true
	elif(curr_state == state.CONTROL_PRESSED):
		controlBtn.pressed = true
	elif(curr_state == state.AUDIO_PRESSED):
		audioBtn.pressed = true
	elif(curr_state == state.VIDEO_PRESSED):
		videoBtn.pressed = true
	

