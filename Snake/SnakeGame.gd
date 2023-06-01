extends Node2D

@export var fruitResource : Resource
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func generate_fruit():
	var fruit = fruitResource.instantiate()
	fruit.position.x = rng.randf_range(0.0, 400.0)
	fruit.position.y = rng.randf_range(0.0, 300.0)
	add_child(fruit)

func game_over():
	print("Well the game should be over.")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
