extends Timer

@export var enemyToSpawn : Resource
var random = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timeout():
	var eny = enemyToSpawn.instantiate()
	eny.position = Vector2(randi() % 800,randi() % 600)
	add_child(eny)
	pass # Replace with function body.
