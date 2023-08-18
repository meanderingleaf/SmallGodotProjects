extends PetState

class_name BoredState

var wait

func enter():
	print("entering bored state")
	wait = 100
	pass
	
func update():
	wait = wait - 1
	
	if(wait < 0):
		transition_to(PlayState)
	pass
	
func exit():
	print("exiting bored state")
	pass
