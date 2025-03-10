extends "res://ui/menus/ingame/upgrades_ui.gd"

onready var _upgrade_ui_1_select = $MarginContainer / Content / VBoxContainer / HBoxContainer2 / VBoxContainer / HBoxContainer / UpgradeUI / MarginContainer / VBoxContainer / ChooseButton
onready var _upgrade_ui_2_select = $MarginContainer / Content / VBoxContainer / HBoxContainer2 / VBoxContainer / HBoxContainer / UpgradeUI2 / MarginContainer / VBoxContainer / ChooseButton
onready var _upgrade_ui_3_select = $MarginContainer / Content / VBoxContainer / HBoxContainer2 / VBoxContainer / HBoxContainer / UpgradeUI3 / MarginContainer / VBoxContainer / ChooseButton
onready var _upgrade_ui_4_select = $MarginContainer / Content / VBoxContainer / HBoxContainer2 / VBoxContainer / HBoxContainer / UpgradeUI4 / MarginContainer / VBoxContainer / ChooseButton

func _ready():
	_upgrade_ui_1_select.set_shortcut(_create_shortcut_for_key(KEY_1))
	_upgrade_ui_1_select.text = tr(_upgrade_ui_1_select.text) + " [1]"
	
	_upgrade_ui_2_select.set_shortcut(_create_shortcut_for_key(KEY_2))
	_upgrade_ui_2_select.text = tr(_upgrade_ui_2_select.text) + " [2]"
	
	_upgrade_ui_3_select.set_shortcut(_create_shortcut_for_key(KEY_3))
	_upgrade_ui_3_select.text = tr(_upgrade_ui_3_select.text) + " [3]"
	
	_upgrade_ui_4_select.set_shortcut(_create_shortcut_for_key(KEY_4))
	_upgrade_ui_4_select.text = tr(_upgrade_ui_4_select.text) + " [4]"
	
#	_reroll_button.set_shortcut(_create_shortcut_for_key(KEY_QUOTELEFT))

func _create_shortcut_for_key(key) -> ShortCut:
	var result := ShortCut.new()
	var event = InputEventKey.new()
	event.scancode = key
	result.set_shortcut(event)
	return result
