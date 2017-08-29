extends Button


func accept():
	get_tree().quit()

func _on_exit_button_button_up():
	accept()

func _on_exit_button_mouse_enter():
	get_node("../menu_sprite").move_selector(3)
