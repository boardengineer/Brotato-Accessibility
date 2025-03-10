extends "res://ui/menus/ingame/upgrades_ui.gd"

func _ready():
	if RunData.is_coop_run:
		return
	
	var _upgrade_ui_1_select = _player_container1._upgrade_ui_1.button
	_upgrade_ui_1_select.set_shortcut(_create_shortcut_for_key(KEY_1))
	_upgrade_ui_1_select.text = tr(_upgrade_ui_1_select.text) + " [1]"
	
	var _upgrade_ui_2_select = _player_container1._upgrade_ui_2.button
	_upgrade_ui_2_select.set_shortcut(_create_shortcut_for_key(KEY_2))
	_upgrade_ui_2_select.text = tr(_upgrade_ui_2_select.text) + " [2]"
	
	var _upgrade_ui_3_select = _player_container1._upgrade_ui_3.button
	_upgrade_ui_3_select.set_shortcut(_create_shortcut_for_key(KEY_3))
	_upgrade_ui_3_select.text = tr(_upgrade_ui_3_select.text) + " [3]"
	
	var _upgrade_ui_4_select = _player_container1._upgrade_ui_4.button
	_upgrade_ui_4_select.set_shortcut(_create_shortcut_for_key(KEY_4))
	_upgrade_ui_4_select.text = tr(_upgrade_ui_4_select.text) + " [4]"
	
	_player_container1._reroll_button.set_shortcut(_create_shortcut_for_key(KEY_QUOTELEFT))

func _create_shortcut_for_key(key) -> ShortCut:
	var result := ShortCut.new()
	var event = InputEventKey.new()
	event.scancode = key
	result.set_shortcut(event)
	return result
