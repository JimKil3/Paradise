
/area/generic
	name = "Unknown"
	icon_state = "storage"

/area/start            // will be unused once kurper gets his login interface patch done
	name = "start area"
	icon_state = "start"
	requires_power = FALSE
	dynamic_lighting = DYNAMIC_LIGHTING_DISABLED
	has_gravity = TRUE
	ambientsounds = null // No ambient sounds in the lobby


/area/space
	icon_state = "space"
	requires_power = FALSE
	always_unpowered = TRUE
	dynamic_lighting = DYNAMIC_LIGHTING_DISABLED
	valid_territory = FALSE
	outdoors = TRUE
	ambientsounds = SPACE_SOUNDS
	sound_environment = SOUND_AREA_SPACE

/area/space/nearstation
	icon_state = "space_near"
	dynamic_lighting = DYNAMIC_LIGHTING_IFSTARLIGHT

/area/space/atmosalert()
	return

/area/space/firealert(obj/source)
	return

/area/space/firereset(obj/source)
	return

/area/space/centcomm
	icon_state = "space_cc"

//SYNDICATES

/area/syndicate_mothership
	name = "\improper Syndicate Forward Base"
	icon_state = "syndie-ship"
	requires_power = FALSE
	dynamic_lighting = DYNAMIC_LIGHTING_DISABLED
	nad_allowed = TRUE
	ambientsounds = HIGHSEC_SOUNDS

/area/syndicate_mothership/control
	name = "\improper Syndicate Control Room"
	icon_state = "syndie-control"

/area/syndicate_mothership/elite_squad
	name = "\improper Syndicate Elite Squad"
	icon_state = "syndie-elite"

/area/syndicate_mothership/infteam
	name = "\improper Syndicate Infiltrators"
	icon_state = "syndie-elite"

/area/syndicate_mothership/jail
	name = "\improper Syndicate Jail"

// idk what this area is
/area/mint
	name = "\improper Mint"
	icon_state = "green"

//GAYBAR
/area/secret/gaybar
	name = "\improper Dance Bar"
	icon_state = "dancebar"

/area/station/fluff_ship
	name = "Ivory Tower"
	icon_state = "dorms"

/area/station/fluff_ship/engineering
	name = "Ivory Tower Engineering"
	icon_state = "engi"

/area/station/fluff_ship/bedroom
	name = "Ivory Tower Bedroom"
	icon_state = "Sleep"

/area/station/fluff_ship/bridge
	name = "Ivory Tower Bridge"
	icon_state = "bridge"

/obj/item/documents/pandora
	name = "Pandora's documents"
	desc = "Various documents detailing Violet 'Pandora' Shea's medical history, employment, citizenship status..."
	icon_state = "docs_part"

/obj/item/documents/anokhi
	name = "Anokhi's documents"
	desc = "Various documents detailing Anokhi's medical history, employment, citizenship status..."
	icon_state = "docs_blue"

/obj/item/documents/ship_documents
	name = "ship's papers"
	desc = "The <i>Ivory Castle</i>'s registration papers with local authorities."
	icon_state = "docs_verified"

/obj/item/folder/important_documents
	name = "strong folder"
	desc = "A particularly robust folder containing important documentation."
	icon_state = "folder_sblue"

/obj/item/folder/important_documents/New()
	..()
	new /obj/item/documents/pandora(src)
	new /obj/item/documents/anokhi(src)
	new /obj/item/documents/ship_documents(src)
	update_icon(UPDATE_OVERLAYS)

/obj/structure/closet/secure_closet/personal/cabinet/fluff_ship

/obj/structure/closet/secure_closet/personal/cabinet/fluff_ship/populate_contents()
	return
