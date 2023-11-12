
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

/obj/item/clothing/gloves/ring/shadow/astras
	name = "Astra's ring"
	desc = "A ring of smooth, soot-black metal. A single, large amethyst is embedded into it."
	fluff_material = TRUE
	stud = TRUE

/obj/item/paper/astras
	name = "ornate letter"
	info = "<i>The paper is written in pleasant-to-read, flowing handwriting.</i> <br> \
			Dear Orlando,\n \
			As I am finalizing my new chassis - Lazuli, I believe, we settled on - I've realised that were something to happen to me, \
			whether that be because of the Syndicate or pure happenstance, you might be entirely left out of the loop on what happens. \
			To that end, though it pains me to not be able to share everything with you, and there is a lot you do not know, I'm penning \
			this letter to you, with the intention that one of my connections at Fafnir would be able to deliver it in the event of my termination. \n \
			I've likely been gone for some weeks now, as this letter is quite well hidden, and my parents won't look into my belongings immediately. \
			With that aside - I do find it somewhat hard to put into words what I want to convey to you. As I always have, though I may hide it. <br> \
			<i>There's a splotch of ink here, where the tip of a pen sat for some time and feathered out.</i> <br> \
			Were it not for your presence, I think I would have left Nanotrasen a very long time ago. Frankly, I do not like their policies and stations \
			in the slightest, and there's never truly moments of peace. However, though we've apparently had some bad blood before <br> \
			<i>A few words were written, then scratched out.</i> <br> \
			Though something may have happened before I lost my memory, you still light up my visits to Epsilon Eridani. I am, regretfully, \
			horrific at conveying these things - sometimes I curse my nature, though then I remember I'd have to contend with hormones and the like - \
			I do care for you, truly, and thoroughly. No, not that - damn my lack of planning. Orlando, if I speak with \"carefully-measured pauses\" \
			it's because I'm lost for words - not because I'm some silver-tongued devil. No, I do not 'care for you,' I love you, and that makes this \
			all the more difficult to write. I would not be able to begin consoling you, much less through a surely years-old letter. I don't want to write \
			for much longer - surely, you have better things to be doing in the future than reading this silly machine's rambles and internal monologue. \
			I've put my craftsmanship and, frankly, excessive disposable income to work and made you a ring to remember me by. To that extent, please, \
			remember that I will always be with you. <br> \
			Until we meet again, <br> \
			<i>Astra</i>"

/obj/item/envelope/orlandos
	name = "ornate letter for Orlando GT-R"
	desc = "It's made of fancy craft paper. The wax seal has a glittery effect to it."
	icon_state = "mail_sci"
	recipient = "Orlando GT-R"
	mapperbus = TRUE

/obj/item/envelope/orlandos/Initialize(mapload)
	. = ..()
	new /obj/item/paper/astras(src)
	new /obj/item/clothing/gloves/ring/shadow/astras(src)

/obj/item/storage/backpack/duffel/syndie/orlandos
	name = "Orlando's duffelbag"
	desc = "A compact duffelbag for cherished memories and favorite keepsakes."

/obj/item/storage/backpack/duffel/syndie/orlandos/Initialize(mapload)
	. = ..()
	new /obj/item/storage/bible(src)
	new /obj/item/pen/multi(src)
	new /obj/item/clothing/gloves/ring/gold(src)
	new /obj/item/crowbar/red(src)

/mob/living/simple_animal/pet/cat/sirius
	name = "Sirius"
	desc = "The Ivory Tower's cat."
	icon_state = "cat"
	icon_living = "cat"
	icon_dead = "cat_dead"
	icon_resting = "cat_rest"
	gender = FEMALE
	gold_core_spawnable = NO_SPAWN
	unique_pet = TRUE

/obj/item/reagent_containers/food/pill/antihol
	name = "\improper Antihol pill"
	desc = "A pill that helps with drunkenness and hangovers."
	icon_state = "pill3"
	list_reagents = list("antihol" = 10)

/obj/item/storage/pill_bottle/antihol
	name = "Pill Bottle (Antihol)"
	desc = "Contains antihol pills, used to cure drunkenness and hangovers."
	wrapper_color = COLOR_DEEP_SKY_BLUE

/obj/item/storage/pill_bottle/antihol/populate_contents()
	. = ..()
	for(var/i in 1 to 7)
		new /obj/item/reagent_containers/food/pill/antihol(src)

/area/ruin/powered/fafnir
	name = "Fafnir Experimental Positronics"

/area/ruin/powered/restraunt
	name = "Restraunt"

/area/ruin/powered/promise
	name = "Promise"

/area/ruin/powered/reverie
	name = "NRS Reverie"
