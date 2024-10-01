extends Label
@onready var timer = $"../Timer"



@onready var label_3 = %dailogue

var texts = [
	"Why was the knight inside the dungeon?",
	"Why was he getting teleported?",
	"What was his past?",
	"Why was he looking for the orb?",
	"Who was he?",
	"Many mysteries yet to be solved",
	"Many tales yet to be told",
	"Until then",
	"",
	"TO BE CONTINUED"
]

var current_index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	
	timer.start(3)  # Start the timer with an interval of 1 second
	label_3.text = texts[current_index]

func _on_timer_timeout():
	current_index += 1
	if current_index < len(texts):
		label_3.text = texts[current_index]
	else:
		timer.stop()
