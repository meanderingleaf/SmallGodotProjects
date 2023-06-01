extends CharacterBody2D

@export var speed : float  = 150.0
@export var snakeBitResource : Resource
var tail = []

@onready
var root = $"/root/snake/"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func fruit_collected():
	#make new tail piece and put into array
	var newBit = snakeBitResource.instantiate()
	newBit.position.x = self.position.x
	newBit.position.y = self.position.y
	root.add_child(newBit)
	tail.append(newBit)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("left"):
		self.velocity.y = 0
		self.velocity.x = -speed
	
	if Input.is_action_just_pressed("right"):
		self.velocity.y = 0
		self.velocity.x = speed
		
	if Input.is_action_just_pressed("ui_up"):
		self.velocity.x = 0
		self.velocity.y = -speed
	
	if Input.is_action_just_pressed("ui_down"):
		self.velocity.x = 0
		self.velocity.y = speed
		
	
	var oldX = self.position.x
	var oldY = self.position.y
	
	move_and_collide(self.velocity * delta)
	
	for bit in tail:
		var diffX = oldX- bit.position.x 
		var diffY = oldY - bit.position.y
		oldX = bit.position.x 
		oldY = bit.position.y
		bit.position.x += diffX * .1
		bit.position.y += diffY * .1
		
	
	pass
