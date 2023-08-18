#generic AI state
#Honestly it does nothing, just exists to be extended.
extends Node2D
class_name PetState

signal change_state(new_state)

func enter():
	pass

func update():
	pass

func exit():
	pass

func transition_to(new_state):
	change_state.emit(new_state)
	pass
