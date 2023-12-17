extends "res://ui/menus/ingame/upgrades_ui.gd"

onready var _upgrade_ui_1_select = $MarginContainer / Content / VBoxContainer / HBoxContainer2 / VBoxContainer / HBoxContainer / UpgradeUI / MarginContainer / VBoxContainer / ChooseButton
onready var _upgrade_ui_2_select = $MarginContainer / Content / VBoxContainer / HBoxContainer2 / VBoxContainer / HBoxContainer / UpgradeUI2 / MarginContainer / VBoxContainer / ChooseButton
onready var _upgrade_ui_3_select = $MarginContainer / Content / VBoxContainer / HBoxContainer2 / VBoxContainer / HBoxContainer / UpgradeUI3 / MarginContainer / VBoxContainer / ChooseButton
onready var _upgrade_ui_4_select = $MarginContainer / Content / VBoxContainer / HBoxContainer2 / VBoxContainer / HBoxContainer / UpgradeUI4 / MarginContainer / VBoxContainer / ChooseButton

func _ready():
	_upgrade_ui_1_select.set_shortcut(_create_shortcut_for_key(KEY_1))
	_upgrade_ui_2_select.set_shortcut(_create_shortcut_for_key(KEY_2))
	_upgrade_ui_3_select.set_shortcut(_create_shortcut_for_key(KEY_3))
	_upgrade_ui_4_select.set_shortcut(_create_shortcut_for_key(KEY_4))

func _create_shortcut_for_key(key) -> ShortCut:
	var result := ShortCut.new()
	var event = InputEventKey.new()
	event.scancode = key
	result.set_shortcut(event)
	return result
