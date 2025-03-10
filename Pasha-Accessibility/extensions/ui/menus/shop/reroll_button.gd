extends "res://ui/menus/shop/reroll_button.gd"

func init(value:int, player_index)->void :
	.init(value, player_index)
	set_text((tr("REROLL") + " - " + str(value)).to_upper() + " [`]")
