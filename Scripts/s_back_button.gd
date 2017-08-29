extends Button


func accept():
	get_node("/root/menu_cont").change_menu("main")

func _on_s_back_button_button_up():
	accept()

func _on_s_back_button_mouse_enter():
	get_node("../settings_sprite").move_selector(1)
