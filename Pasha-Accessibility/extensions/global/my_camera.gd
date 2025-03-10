extends "res://global/my_camera.gd"

var disable_auto_zoom = false

func _input(event):
	if event is InputEventMouseButton: 
		if event.button_index == BUTTON_WHEEL_UP:
			disable_auto_zoom = true
			zoom.x -= 0.01
			zoom.y -= 0.01
		if event.button_index == BUTTON_WHEEL_DOWN:
			disable_auto_zoom = true
			zoom.x += 0.01
			zoom.y += 0.01
		if event.button_index == BUTTON_MIDDLE:
			disable_auto_zoom = true
			zoom.x = 1.00
			zoom.y = 1.00


func _adjust_zoom(alive_targets:Array, delta:float)->void :
	if not disable_auto_zoom:
		._adjust_zoom(alive_targets, delta)
