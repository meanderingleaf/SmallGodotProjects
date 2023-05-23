extends RigidBody2D

@export var shouldReset = false

# Called when the node enters the scene tree for the first time.
func _ready():
	self.apply_impulse(Vector2(300,300))
	pass # Replace with function body.


func _physics_process(delta):
	if shouldReset == true:
		print("res")
		self.sleeping = true
		self.global_transform = Transform2D(0, Vector2(180, 180))
		shouldReset = false
	
	#if self.sleeping:
		#self.sleeping = false
		#self.apply_impulse(Vector2(300,300))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
