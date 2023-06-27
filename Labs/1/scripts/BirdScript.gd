extends RigidBody2D

var tracking = false
var startPos = Vector2()

func _input(evt):
	if( evt is InputEventMouseButton and evt.button_index == MOUSE_BUTTON_LEFT):
		if(evt.is_pressed()):
			tracking = true
			startPos = evt.position
		else:
			tracking = false
			var kickDir = startPos - evt.position
			gravity_scale = 1
			apply_force(kickDir * 300)
			

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
