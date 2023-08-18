extends PetState

class_name PlayState

var ball
@onready var nav_agent = get_node("../NavigationAgent2D")
@onready var parent = get_parent()

func enter():
	print("entering play state")
	#find the ball
	ball = get_tree().get_nodes_in_group("ball")[0]
	nav_agent.set_target_position(ball.position)
	pass

func on_collision():
	pass

func update():
	#run towards the ball
	var next_path_position = nav_agent.get_next_path_position()
	
	var new_velocity = (next_path_position - parent.position).normalized() * parent.movement_speed

	print(new_velocity)
	parent.velocity = new_velocity
	parent.move_and_slide()
	
	for i in parent.get_slide_collision_count():
		var collision = parent.get_slide_collision(i)
		print("I collided with ", collision.get_collider().name)
		collision.get_collider().apply_force( Vector2(randi_range(-10000,10000), randi_range(-10000,10000) ) )
		
		#bored again
		transition_to(BoredState)
	
		
	pass
	
func exit():
	print("exiting play state")
	pass
