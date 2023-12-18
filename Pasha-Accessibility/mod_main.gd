extends Node

const MOD_DIR = "Pasha-Accessibility/"

func _init():
	var dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	var ext_dir = dir + "extensions/"
	
	ModLoaderMod.install_script_extension(ext_dir + "global/my_camera.gd")
	ModLoaderMod.install_script_extension(ext_dir + "ui/menus/ingame/upgrades_ui.gd")
	ModLoaderMod.install_script_extension(ext_dir + "ui/menus/shop/shop_item_container.gd")
