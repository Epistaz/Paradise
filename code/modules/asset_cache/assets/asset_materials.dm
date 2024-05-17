/datum/asset/spritesheet/materials
	name = "materials"

/datum/asset/spritesheet/materials/create_spritesheets()
	for(var/datum/material/material_typepath as anything in subtypesof(/datum/material))
		var/obj/item/stack/stack_type = initial(material_typepath.sheet_type)
		if(!stack_type)
			continue

		Insert(material_typepath.id, stack_type.icon, stack_type.icon_state)


/**
	for(var/n in list("metal", "glass", "silver", "gold", "diamond", "uranium", "plasma", "clown", "mime", "titanium", "plastic",
		"rglass", "plasteel", "plastitanium", "plasmaglass", "titaniumglass", "plastitaniumglass", "f_rods"))
		assets["sheet-[n].png"] = icon('icons/obj/items.dmi', "sheet-[n]")
	for(var/n in list("alienalloy")) //because this file in abductor.dmi, not items.dmi
		assets["sheet-[n].png"] = icon('icons/obj/abductor.dmi', "sheet-abductor")
	assets["sheet-bluespace.png"] = icon('icons/obj/telescience.dmi', "polycrystal")
	..()
	**/
