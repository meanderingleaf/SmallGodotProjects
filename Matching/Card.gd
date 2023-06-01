extends Area2D

@export var value : String 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_value(val):
	var texture = load("res://sprites/boardgame/Cards/card"+val+".png")
	$"Face".set_texture(  texture )
	self.value = val
	pass
	
func flip_back():
	$"Back".show()

func on_click():
	if($"Back".visible):
		$"Back".hide()
		$"/root/Matching".card_clicked(self)

func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed):
		self.on_click()
