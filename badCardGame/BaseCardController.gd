extends Node2D

@export var door : Node2D

func key_collected():
	#remove door
	door.queue_free()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
