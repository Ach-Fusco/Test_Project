extends Container

var cur_menu
var n_main_cont
var n_settings_cont
var n_bindings_cont


func _ready():
	n_main_cont = get_node("main_cont")
	n_settings_cont = get_node("settings_cont")
	n_bindings_cont = get_node("bindings_cont")
	cur_menu = n_main_cont
	
	# disable everything but main menu
	remove_child(n_settings_cont)
	remove_child(n_bindings_cont)
	# number of buttons in each menu
	#var num_buttons = {n_main_cont = Vector2(1,4), n_settings_cont = Vector2(1,1), n_bindings_cont = Vector2(1,1)}
	
# change current menu, argument is a node
func change_menu(m):
	remove_child(cur_menu)
	print("change_menu(" + m + ")")
	if m == "main":
		add_child(n_main_cont)
		cur_menu = n_main_cont
	elif m == "settings":
		add_child(n_settings_cont)
		cur_menu = n_settings_cont
	elif m == "bindings":
		add_child(n_bindings_cont)
		cur_menu = n_bindings_cont

