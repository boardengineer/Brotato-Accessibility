extends "res://ui/menus/shop/shop.gd"

func _ready():
	_reroll_button.set_shortcut(_create_shortcut_for_key(KEY_QUOTELEFT, false))
	_go_button.set_shortcut(_create_shortcut_for_key(KEY_QUOTELEFT, true))

func _create_shortcut_for_key(key, shift = false) -> ShortCut:
	var result := ShortCut.new()
	var event := InputEventKey.new()
	event.scancode = key
	event.shift = shift
	result.set_shortcut(event)
	return result
