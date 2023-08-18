extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_gui_input(ev):
	if ev is InputEventMouseButton and ev.pressed:
		get_node("/root/badCardGame").key_collected()
