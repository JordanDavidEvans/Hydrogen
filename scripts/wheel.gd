extends Node2D

var is_dragging = false
var initial_mouse_angle = 0
var rotation_at_mouse_press = 0
signal current_angle

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				# Start dragging
				is_dragging = true
				initial_mouse_angle = get_angle_to_mouse(event.global_position)
				rotation_at_mouse_press = rotation  # Store the current rotation
			else:
				# Stop dragging
				is_dragging = false

	if event is InputEventMouseMotion and is_dragging:
		# Calculate and apply the difference in rotation based on mouse movement
		var current_mouse_angle = get_angle_to_mouse(event.global_position)
		var angle_difference = current_mouse_angle - initial_mouse_angle
		rotation = rotation_at_mouse_press + angle_difference

func get_angle_to_mouse(mouse_global_pos):
	# Calculate the angle from the node to the mouse position
	var local_mouse_pos = to_local(mouse_global_pos)
	return local_mouse_pos.angle()
	
func _draw():
	draw_line(to_local(global_position), to_local(get_global_mouse_position()), Color.GREEN, 1.0)
	pass
func _physics_process(delta):
	queue_redraw()
	current_angle.emit(rotation)
	$"../Panel/HBoxContainer/angledial".text = str(rad_to_deg(rotation))
	pass

