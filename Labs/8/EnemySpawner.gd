extends Node2D

var enemy = preload("res://Space Shooter/enemy.tscn")

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var en = enemy.instantiate()
	en.position.x =  rng.randf_range(10.0, 1200.0)
	en.position.y = -30
	en.set_name("enemy")
	get_node("/root/SpaceShooterGame").add_child(en)
	pass # Replace with function body.
