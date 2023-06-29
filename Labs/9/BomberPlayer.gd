extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta):

	var direction = Input.get_axis("ui_left", "ui_right")
	
	self.rotate(direction * .1)
	
	if Input.is_action_pressed("ui_up"):
		velocity = self.transform.x * SPEED
	
	velocity *= .94

	move_and_slide()
