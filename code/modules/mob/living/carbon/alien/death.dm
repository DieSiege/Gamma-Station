/mob/living/carbon/alien/facehugger/death(gibbed)
	if(stat == DEAD)	return
	if(healths)			healths.icon_state = "health6"
	stat = DEAD
	icon_state = "facehugger_dead"

	if(!gibbed)
		update_canmove()

	tod = worldtime2text() //weasellos time of death patch
	if(mind)	mind.store_memory("Time of death: [tod]", 0)
	living_mob_list -= src

	return ..(gibbed)

/mob/living/carbon/alien/larva/death(gibbed)
	if(stat == DEAD)	return
	if(healths)			healths.icon_state = "health6"
	stat = DEAD
	icon_state = "larva_dead"

	if(!gibbed)
		update_canmove()

	tod = worldtime2text() //weasellos time of death patch
	if(mind)	mind.store_memory("Time of death: [tod]", 0)
	living_mob_list -= src

	return ..(gibbed)

/mob/living/carbon/alien/humanoid/death(gibbed)
	if(stat == DEAD)	return
	if(healths)			healths.icon_state = "health6"
	stat = DEAD

	if(!gibbed)
		playsound(loc, 'sound/voice/hiss6.ogg', 80, 1, 1)
		for(var/mob/O in viewers(src, null))
			O.show_message("<B>[src]</B> lets out a waning guttural screech, green blood bubbling from its maw...", 1)
		update_canmove()
		update_icons()

	tod = worldtime2text() //weasellos time of death patch
	if(mind) 	mind.store_memory("Time of death: [tod]", 0)

	return ..(gibbed)

/mob/living/carbon/alien/humanoid/praetorian/death()
	..()
	praetorians = (praetorians+1)

/mob/living/carbon/alien/gib()
	death(1)
	var/atom/movable/overlay/animation = null
	monkeyizing = 1
	canmove = 0
	icon = null
	invisibility = 101

	animation = new(loc)
	animation.icon_state = "blank"
	animation.icon = 'icons/mob/mob.dmi'
	animation.master = src

	flick("gibbed-a", animation)
	xgibs(loc, viruses)
	dead_mob_list -= src

	spawn(15)
		if(animation)	qdel(animation)
		if(src)			qdel(src)

/mob/living/carbon/alien/dust()
	death(1)
	var/atom/movable/overlay/animation = null
	monkeyizing = 1
	canmove = 0
	icon = null
	invisibility = 101

	animation = new(loc)
	animation.icon_state = "blank"
	animation.icon = 'icons/mob/mob.dmi'
	animation.master = src

	flick("dust-a", animation)
	new /obj/effect/decal/remains/xeno(loc)
	dead_mob_list -= src

	spawn(15)
		if(animation)	qdel(animation)
		if(src)			qdel(src)
