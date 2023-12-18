extends "res://ui/menus/shop/shop_items_container.gd"

func _ready():
	_shop_items[0]._button.set_shortcut(_create_shortcut_for_key(KEY_1))
	_shop_items[1]._button.set_shortcut(_create_shortcut_for_key(KEY_2))
	_shop_items[2]._button.set_shortcut(_create_shortcut_for_key(KEY_3))
	_shop_items[3]._button.set_shortcut(_create_shortcut_for_key(KEY_4))
	
	_shop_items[0]._lock_button.set_shortcut(_create_shortcut_for_key(KEY_1, true))
	_shop_items[1]._lock_button.set_shortcut(_create_shortcut_for_key(KEY_2, true))
	_shop_items[2]._lock_button.set_shortcut(_create_shortcut_for_key(KEY_3, true))
	_shop_items[3]._lock_button.set_shortcut(_create_shortcut_for_key(KEY_4, true))

func _create_shortcut_for_key(key, shift = false) -> ShortCut:
	var result := ShortCut.new()
	var event := InputEventKey.new()
	event.scancode = key
	event.shift = shift
	result.set_shortcut(event)
	return result
