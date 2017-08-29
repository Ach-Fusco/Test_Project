extends Button


func accept():
	get_node("/root/menu_cont").change_menu("bindings")

func _on_s_keybindings_button_button_up():
	accept()

func _on_s_keybindings_button_mouse_enter():
	get_node("../settings_sprite").move_selector(0)
