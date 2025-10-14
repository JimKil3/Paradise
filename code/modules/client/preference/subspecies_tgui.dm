/datum/ui_module/subspecies
	name = "Subspecies Selection"

/datum/ui_module/subspecies/ui_state(mob/user)
	return GLOB.always_state

/datum/ui_module/subspecies/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "SubspeciesSelection", name)
		ui.set_autoupdate(FALSE)
		ui.open()

/datum/ui_module/subspecies/ui_data(mob/user)
	var/list/data = list()
	//data["gear_slots"] = user?.client?.prefs.build_loadout() !!TODO commented for reference remove later
	//data["selected_gears"] = user?.client?.prefs?.active_character?.loadout_gear
	return data

/datum/ui_module/subspecies/ui_static_data(mob/user)
	var/list/data = list()
	//data["gears"] = GLOB.gear_tgui_info !!TODO commented for reference remove later
	//data["max_gear_slots"] = user?.client?.prefs?.max_gear_slots
	//data["user_tier"] = user?.client?.donator_level
	return data

/datum/ui_module/subspecies/ui_act(action, list/params)
	if(..())
		return
	. = TRUE

	var/mob/user = usr
	var/datum/character_save/active_character = user.client.prefs.active_character
