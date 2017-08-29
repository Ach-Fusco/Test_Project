extends Button

func accept():
	return

func _on_create_button_mouse_enter():
	get_node("../menu_sprite").move_selector(1)

func _on_create_button_button_up():
	pass # replace with function body
