extends Sprite

var selected # {0,1,2,3} = {play, create, settings, quit}
# x,y of the sprite 
var selected_name = ["s_keybindings_button","s_back_button"]
var num_buttons = 2
var sprite_offset = Vector2(-112,64)

func _ready():
	move_selector(0)
	set_process_input(true)

func move_selector(v):
	if str(v) == "down":
		if selected >= (num_buttons - 1):
			selected = 0
		else:
			selected += 1
	elif str(v) == "up":
		if selected <= 0:
			selected = (num_buttons - 1)
		else:
			selected -= 1
	else:
		selected = v

	# move sprite
	set_pos(Vector2( get_node("../" + selected_name[selected]).get_pos().x + sprite_offset.x , get_node("../" + selected_name[selected]).get_pos().y + sprite_offset.y))
	
func option_accept():
	get_node("../" + selected_name[selected]).accept()



func _input(event):
	# keyboard
	if event.is_action_pressed("ui_down"):
		move_selector("down")
	elif event.is_action_pressed("ui_up"):
		move_selector("up")
	elif event.is_action_pressed("ui_accept"):
		option_accept()

