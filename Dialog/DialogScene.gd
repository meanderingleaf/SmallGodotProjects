extends Node2D


@export var txtShow : Label
@export var container : Container
@export var btnNext : Button

var ticker = 0
var dialog = [ 
	{ 
		"text": "Left or right?", "options": [ 
			{ "text": "Left", "goto": 1 },
			{ "text": "Right", "goto": 2 }
		] 
	},
	{
		"text": "You went left"
	},
	{
		"text": "You went right"
	}
 ]


func _ready():
	btnNext.connect("pressed", next_pressed)
	update_ui()

func next_pressed(_event):
	ticker = ticker + 1
	update_ui()
		
func option_pressed(btn):
	ticker = btn.goto
	update_ui()

func update_ui():
	txtShow.text = dialog[ticker].text
	
	#clear out old options
	for btn in container.get_children():
		container.remove_child(btn)
		btn.queue_free()
	
	if("options" in dialog[ticker] ):
		for option in dialog[ticker].options:
			#make a new label
			var txtOpt = DialogButton.new()
			txtOpt.text = option.text
			txtOpt.goto = option.goto
			
			#add to screen
			container.add_child(txtOpt)
			
			#ready it for cliken
			txtOpt.connect("pressed", option_pressed.bind(txtOpt))
			#txtOpt.connect("pressed", option_pressed, 2)
			
	
	
