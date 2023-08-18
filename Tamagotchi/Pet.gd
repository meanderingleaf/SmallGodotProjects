extends CharacterBody2D

var current_state
var movement_speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	change_state(BoredState)
	pass # Replace with function body.


func change_state(new_state):
	if(current_state):
		current_state.exit()
		current_state.queue_free()
	
	current_state = new_state.new()
	self.add_child(current_state)
	current_state.enter()
	current_state.change_state.connect(self.change_state)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	current_state.update()
	pass
