extends "res://global/my_camera.gd"

func _input(event):
	if event is InputEventMouseButton: 
		if event.button_index == BUTTON_WHEEL_UP:
			zoom.x -= 0.01
			zoom.y -= 0.01
		if event.button_index == BUTTON_WHEEL_DOWN:
			zoom.x += 0.01
			zoom.y += 0.01
