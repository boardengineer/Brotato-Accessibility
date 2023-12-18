extends "res://ui/menus/upgrades/item_box_ui.gd"

func _ready():
	_discard_button.set_shortcut(_create_shortcut_for_key(KEY_2))
	_take_button.set_shortcut(_create_shortcut_for_key(KEY_1))

func set_item_data(p_item_data:ItemParentData)->void :
	.set_item_data(p_item_data)
	
	_discard_button.text = tr(_discard_button.text) + " [2]"
	_take_button.text = tr(_take_button.text) + " [1]"

func _create_shortcut_for_key(key) -> ShortCut:
	var result := ShortCut.new()
	var event = InputEventKey.new()
	event.scancode = key
	result.set_shortcut(event)
	return result
