extends Button

func accept():
	return

func _on_play_button_mouse_enter():
	get_node("../menu_sprite").move_selector(0)

func _on_play_button_button_up():
	pass # replace with function body
