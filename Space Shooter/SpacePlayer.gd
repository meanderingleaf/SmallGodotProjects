extends CharacterBody2D

var bulletScene = preload("res://Space Shooter/laser.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("left"):
		velocity.x = -350
	if Input.is_action_pressed("right"):
		velocity.x = 350
		
	if Input.is_action_just_pressed("fire"):
		var kapow = bulletScene.instantiate()
		kapow.position.x = self.position.x
		kapow.position.y = self.position.y
		kapow.set_name("kapow")
		get_node("/root/SpaceShooterGame").add_child(kapow)
		
		
	velocity.x *= .96
		
	move_and_slide()
