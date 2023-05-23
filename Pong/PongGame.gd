extends Node2D

@export var p1score : int = 0
@export var p2score : int = 0
@export var txtp1 : Label
@export var txtp2 : Label
@export var startPoint: Node2D
@export var ball : RigidBody2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func addScore(pnum):
	if(pnum == 2):
		p1score = p1score + 1
	else:
		p2score = p2score + 1
	
	txtp1.text = str(p1score)
	txtp2.text = str(p2score)
	
	ball.shouldReset =  true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_goal_one_ball_entered(player):
	addScore(player)
	pass # Replace with function body.
