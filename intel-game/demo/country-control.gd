extends Control




# 2020-12-21 Demo
# Russia Control Script
# 
# FUTURE: Implement Area2D Collision Detection
# https://www.youtube.com/watch?v=Om7JzfU_plw
# https://www.youtube.com/watch?v=cQyyD-ykAHU
# https://godotengine.org/qa/9834/body_enter-area_enter-signal-area2d-something-become-visible




# Spawning Stuff on Map
var holders = []




# Random Generation
var fake_random = [9,5,0,7,0,2,4,1,3,2,8,9,4,7,8,6,1,6,5,3]
onready var current_fake = 0
onready var max_fake = fake_random.size()




# For Editor Hinting
# Note that the iterator below does not actually use this variable
var holder: Node = Node.new()




# User Interface

# Allow us to exit
export(NodePath) var exit_menu_path
onready var exit_menu: ConfirmationDialog = get_node(exit_menu_path)

# If we are hovered or not
onready var hovered: bool = false

# If someone opened the context menu on us
onready var inspected: bool = false

# For tracking whether or not we can close the game
onready var inspections: int = 0
# Prevents race conditions
var last_inspections: int = 0





# User Interface Polish

# Sound Effects
# SUPER temp stuff, NEVER hardcode a path to a resource, very bad practice
# TODO
onready var ui_hover:	AudioStreamOGGVorbis = load("res:///misc/sounds/ui-hover.ogg")
onready var ui_select:	AudioStreamOGGVorbis = load("res:///misc/sounds/ui-select.ogg")
onready var ui_yes:		AudioStreamOGGVorbis = load("res:///misc/sounds/ui-confirm.ogg")
onready var ui_no:		AudioStreamOGGVorbis = load("res:///misc/sounds/ui-no.ogg")
onready var ui_back:	AudioStreamOGGVorbis = load("res:///misc/sounds/ui-back.ogg")

# Sound Player
onready var sounds: AudioStreamPlayer = get_node("sounds")






func _ready():
	
	# Prep holders list
	holders.clear()
	for holder in get_node("holders").get_children():
		holders.append(holder)
	
	# Turn Off Looping (Just in case)
	ui_hover.loop = false
	ui_select.loop = false
	ui_yes.loop = false
	ui_no.loop = false
	ui_back.loop = false
	
	# DEBUG
	print(name + " has")
	print("\t" + str(exit_menu_path) + " for exit menu path")
	print("\t" + str(exit_menu) + " for exit menu")
	print("\texit calls itself " + exit_menu.name)



# Play a Sound
# sound_name = local reference to a sound
func sound(sound_name) -> void:
	sounds.stop()
	sounds.stream = sound_name
	sounds.play()
	return




# Generate a random int on range 0-9
# NOT RANDOM!
func _next_random_int() -> int:
	if current_fake > max_fake:
		current_fake = 0
	var next_fake = fake_random[current_fake]
	current_fake += 1
	return next_fake


# Chooses randomly from a list and returns its index
func _next_random_index(list: Array) -> int:
	var size = list.size()
	var random_count = _next_random_int()
	var current_index = 0
	for _n in range(random_count):
		current_index += 1
		if current_index > size:
			current_index = 0
	return current_index



# Remove all abilities
func clear() -> void:
	for holder in holders:
		if not holder.get_children().empty():
			var child = holder.get_child(0)
			holder.remove_child(child)





# Add 1 Ability by direct reference
# Tries to insert it somewhat randomly
func add_ability(ability: Node) -> void:
	
	# Look for open spots
	var open = []
	for holder in holders:
		if holder.get_children().empty():
			open.append(holder)
	
	# Pick Randomly from the list (if we can)
	if not open.empty():
		
		# Insert the Ability and Return
		var next_fake = open[_next_random_index(open)]
		next_fake.add_child(ability)
		return
	
	# If we did not find anything, crash
	assert(false, "Could not add ability, found no empty locations")




# Remove 1 Ability by direct reference
func remove_ability(ability: Node) -> void:
	for holder in holders:
		if not holder.get_children().empty():
			var child = holder.get_child(0)
			if child == ability:
				holder.remove_child(child)
				return
	assert(false, "Could not remove ability, not found in here")




# Input Handling runs every few milliseconds
func _input(event: InputEvent):
	
	# Mouse Clicks
	# See https://godotengine.org/qa/1079/how-do-you-know-if-the-inputevent-is-a-left-mouse-click?show=1087#a1087
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed and hovered:
			if inspected:
				inspected = false
				sound(ui_back)
			_on_left_click()
		if event.button_index == BUTTON_RIGHT and event.pressed and hovered:
			if inspected:
				inspected = false
				sound(ui_back)
			_on_right_click()
	
	# User Exit
	if event.is_action_pressed("ui_cancel"):
		if inspections <= 0 and last_inspections <= 0:
			exit_menu.popup()
		if inspections <= 0:
			last_inspections = 0
		if inspected:
			inspected = false
			sound(ui_back)
			print(name + ": Closing Inspection")
			get_tree().call_group("countries", "inspection_stopped")




# On Mouse Hover
func _on_hover():
	hovered = true
	sound(ui_hover)



# When the mouse stops hovering over us
func _on_leave():
	hovered = false



# On Left Mouse
# Selects the target
func _on_left_click():
	sound(ui_select)



# On Right Mouse
# Opens Context Menu
func _on_right_click():
	sound(ui_yes)
	inspected = true
	print(name + ": Opening Inspection")
	get_tree().call_group("countries", "inspection_started")




func inspection_started():
	print(name + ": has noticed an inspection START")
	last_inspections = inspections
	inspections += 1

func inspection_stopped():
	print(name + ": has noticed an inspection STOP")
	last_inspections = inspections
	inspections -= 1











