/datum/computer_file/program/pai_sechud
	filename = "sechud"
	filedesc = "pAI Security HUD"
	extended_desc = "This program is for enabling security HUD."
	size = 10

/datum/computer_file/program/pai_sechud/service_activate()
	. = ..()
	if(!istype(computer, /obj/item/modular_computer/silicon))
		return
	var/obj/item/modular_computer/silicon/true_computer = computer
	if(!istype(true_computer.computer_host, /mob/living/silicon/pai))
		return
	var/mob/living/silicon/pai/host = true_computer.computer_host
	host.secHUD = TRUE

/datum/computer_file/program/pai_sechud/service_decactivate()
	. = ..()
	if(!istype(computer, /obj/item/modular_computer/silicon))
		return
	var/obj/item/modular_computer/silicon/true_computer = computer
	if(!istype(true_computer.computer_host, /mob/living/silicon/pai))
		return
	var/mob/living/silicon/pai/host = true_computer.computer_host
	host.secHUD = FALSE

/datum/computer_file/program/pai_medhud
	filename = "medhud"
	filedesc = "pAI Medical HUD"
	extended_desc = "This program is for enabling security HUD."
	size = 10

/datum/computer_file/program/pai_medhud/service_activate()
	. = ..()
	if(!istype(computer, /obj/item/modular_computer/silicon))
		return
	var/obj/item/modular_computer/silicon/true_computer = computer
	if(!istype(true_computer.computer_host, /mob/living/silicon/pai))
		return
	var/mob/living/silicon/pai/host = true_computer.computer_host
	host.medHUD = TRUE

/datum/computer_file/program/pai_medhud/service_decactivate()
	. = ..()
	if(!istype(computer, /obj/item/modular_computer/silicon))
		return
	var/obj/item/modular_computer/silicon/true_computer = computer
	if(!istype(true_computer.computer_host, /mob/living/silicon/pai))
		return
	var/mob/living/silicon/pai/host = true_computer.computer_host
	host.medHUD = FALSE