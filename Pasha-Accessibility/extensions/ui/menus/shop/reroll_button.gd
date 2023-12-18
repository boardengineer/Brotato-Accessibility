extends "res://ui/menus/shop/reroll_button.gd"

func init(value:int)->void :
	.init(value)
	set_text((tr("REROLL") + " - " + str(value)).to_upper() + " [`]")
