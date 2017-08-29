extends Button

func accept():
	get_node("/root/menu_cont").change_menu("settings")

func _on_settings_button_button_up():
	accept()

func _on_settings_button_mouse_enter():
	get_node("../menu_sprite").move_selector(2)
