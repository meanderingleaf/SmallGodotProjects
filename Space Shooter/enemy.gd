extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):
	velocity.y = 1

	move_and_collide(self.velocity)
