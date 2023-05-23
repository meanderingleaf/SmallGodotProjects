extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.linear_velocity.y = -2000


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	var poof = get_node("/root/SpaceShooterGame/Poof")
	
	poof.position.x = self.position.x
	poof.position.y = self.position.y
	poof.get_child(0).restart()
	
	var sound = get_node("/root/SpaceShooterGame/Sounds/Explosion")
	sound.play()
	
	body.queue_free()
	self.queue_free()
	pass # Replace with function body.
