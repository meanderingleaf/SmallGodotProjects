extends Node2D

@export var txtDialog: Node

@export var charOne : Resource
@export var charTwo : Resource

var charOneSprite = Sprite2D.new()
var charTwoSprite = Sprite2D.new()

var dialog = [
	{ "text": "AAA", "character": charOneSprite },
	{ "text": "BBB", "character": charTwoSprite },
	{ "text": "CCC", "character": charOneSprite }
]

var currentDialogStep = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	#make the two sprites and put them on the page
	charOneSprite.texture = charOne
	charTwoSprite.texture = charTwo

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed( "click" ): # Left click
		
		if currentDialogStep >= 0:
			remove_child(dialog[currentDialogStep].character)
			
		currentDialogStep  += 1
		if currentDialogStep < dialog.size():
			txtDialog.text = dialog[currentDialogStep].text
			add_child(dialog[currentDialogStep].character)
			move_child(dialog[currentDialogStep].character, 0)
	pass
