extends Area2D
signal ballEntered(player)

@export var playerNum : int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if( body.get_meta("ball") ):
		ballEntered.emit(playerNum)
	pass # Replace with function body.
