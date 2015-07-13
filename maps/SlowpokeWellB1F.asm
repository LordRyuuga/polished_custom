SlowpokeWellB1F_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

KurtScript_0x5a5d5:
	jumptextfaceplayer UnknownText_0x5a6b5

TrainerGruntM29:
	; bit/flag number
	dw EVENT_BEAT_ROCKET_GRUNTM_22

	; trainer group && trainer id
	db GRUNTM, 29

	; text when seen
	dw GruntM29SeenText

	; text when trainer beaten
	dw GruntM29BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM29Script

GruntM29Script:
	talkaftercancel
	loadfont
	writetext TrainerGruntM29SlowpokeProfitText
	closetext
	loadmovesprites
	end

TrainerGruntM1:
	; bit/flag number
	dw EVENT_BEAT_ROCKET_GRUNTM_1

	; trainer group && trainer id
	db GRUNTM, 1

	; text when seen
	dw GruntM1SeenText

	; text when trainer beaten
	dw GruntM1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM1Script

GruntM1Script:
	loadfont
	writetext TrainerGruntM1WhenTalkText
	closetext
	loadmovesprites
	special Function8c0b6
	special Functiond91
	disappear $2
	disappear $3
	disappear $4
	disappear $5
	pause 15
	special Function8c0ab
	disappear $8
	moveperson $8, $b, $6
	appear $8
	applymovement $8, KurtSlowpokeWellVictoryMovementData
	spriteface $0, RIGHT
	loadfont
	writetext KurtLeaveSlowpokeWellText
	closetext
	loadmovesprites
	setevent EVENT_CLEARED_SLOWPOKE_WELL
	variablesprite $6, $4
	domaptrigger GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN, $1
	clearevent EVENT_6F3
	clearevent EVENT_6E9
	setevent EVENT_6F5
	setevent EVENT_6F6
	setevent EVENT_6FB
	setevent EVENT_740
	clearevent EVENT_6F9
	clearevent EVENT_6FD
	clearevent EVENT_73E
	special Function8c084
	special HealParty
	pause 15
	warp GROUP_KURTS_HOUSE, MAP_KURTS_HOUSE, $3, $3
	end

TrainerGruntM2:
	; bit/flag number
	dw EVENT_BEAT_ROCKET_GRUNTM_2

	; trainer group && trainer id
	db GRUNTM, 2

	; text when seen
	dw GruntM2SeenText

	; text when trainer beaten
	dw GruntM2BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntM2Script

GruntM2Script:
	talkaftercancel
	loadfont
	writetext UnknownText_0x5aaf2
	closetext
	loadmovesprites
	end

TrainerGruntF1:
	; bit/flag number
	dw EVENT_BEAT_ROCKET_GRUNTF_1

	; trainer group && trainer id
	db GRUNTF, 1

	; text when seen
	dw GruntF1SeenText

	; text when trainer beaten
	dw GruntF1BeatenText

	; script when lost
	dw $0000

	; script when talk again
	dw GruntF1Script

GruntF1Script:
	talkaftercancel
	loadfont
	writetext UnknownText_0x5ab8d
	closetext
	loadmovesprites
	end

SlowpokeScript_0x5a681:
	faceplayer
	loadfont
	cry SLOWPOKE
	writetext UnknownText_0x5abcb
	yesorno
	iftrue UnknownScript_0x5a68f
	loadmovesprites
	end

UnknownScript_0x5a68f:
	writetext UnknownText_0x5ac09
	closetext
	loadmovesprites
	end

SlowpokeScript_0x5a695:
	faceplayer
	loadfont
	writetext UnknownText_0x5ac61
	cry SLOWPOKE
	closetext
	loadmovesprites
	end

SlowpokeWellB1FBoulder:
	jumpstd strengthboulder

ItemFragment_0x5a6a3:
	db SUPER_POTION, 1

KurtSlowpokeWellVictoryMovementData:
	step_left
	step_left
	step_left
	step_left
	step_up
	accelerate_last
	accelerate_last
	accelerate_last
	step_left
	step_up
	step_up
	accelerate_last
	accelerate_last
	accelerate_last
	turn_head_left
	step_end

UnknownText_0x5a6b5:
	text "KURT: Hey there,"
	line "<PLAYER>!"

	para "The guard up top"
	line "took off when I"
	cont "shouted at him."

	para "But then I took a"
	line "tumble down the"
	cont "WELL."

	para "I slammed down"
	line "hard on my back,"
	cont "so I can't move."

	para "Rats! If I were"
	line "fit, my #MON"

	para "would've punished"
	line "them…"

	para "Ah, it can't be"
	line "helped."

	para "<PLAYER>, show them"
	line "how gutsy you are"
	cont "in my place!"
	done

KurtLeaveSlowpokeWellText:
	text "KURT: Way to go,"
	line "<PLAYER>!"

	para "TEAM ROCKET has"
	line "taken off."

	para "My back's better"
	line "too. Let's get out"
	cont "of here."
	done

GruntM29SeenText:
	text "Darn! I was stand-"
	line "ing guard up top"

	para "when some old coot"
	line "yelled at me."

	para "He startled me so"
	line "much that I fell"
	cont "down here."

	para "I think I'll vent"
	line "my anger by taking"
	cont "it out on you!"
	done

GruntM29BeatenText:
	text "Arrgh! This is NOT"
	line "my day!"
	done

TrainerGruntM29SlowpokeProfitText:
	text "Sure, we've been"
	line "hacking the tails"

	para "off SLOWPOKE and"
	line "selling them."

	para "Everything we do"
	line "is for profit."

	para "That's right!"
	line "We're TEAM ROCKET,"

	para "and we'll do any-"
	line "thing for money!"
	done

GruntM1SeenText:
	text "What do you want?"

	para "If you interrupt"
	line "our work, don't"
	cont "expect any mercy!"
	done

GruntM1BeatenText:
	text "You did OK today,"
	line "but wait till next"
	cont "time!"
	done

TrainerGruntM1WhenTalkText:
	text "Yeah, TEAM ROCKET"
	line "was broken up"
	cont "three years ago."

	para "But we continued"
	line "our activities"
	cont "underground."

	para "Now you can have"
	line "fun watching us"
	cont "stir up trouble!"
	done

GruntM2SeenText:
	text "Quit taking SLOW-"
	line "POKETAILS?"

	para "If we obeyed you,"
	line "TEAM ROCKET's rep"
	cont "would be ruined!"
	done

GruntM2BeatenText:
	text "Just…"
	line "Too strong…"
	done

UnknownText_0x5aaf2:
	text "We need the money,"
	line "but selling SLOW-"
	cont "POKETAILS?"

	para "It's tough being a"
	line "ROCKET GRUNT!"
	done

GruntF1SeenText:
	text "Stop taking TAILS?"

	para "Yeah, just try to"
	line "defeat all of us!"
	done

GruntF1BeatenText:
	text "You rotten brat!"
	done

UnknownText_0x5ab8d:
	text "SLOWPOKETAILS"
	line "grow back fast!"

	para "What's wrong with"
	line "selling them?"
	done

UnknownText_0x5abcb:
	text "A SLOWPOKE with"
	line "its TAIL cut off…"

	para "Huh? It has MAIL."
	line "Read it?"
	done

UnknownText_0x5ac09:
	text "<PLAYER> read the"
	line "MAIL."

	para "Be good and look"
	line "after the house"

	para "with Grandpa and"
	line "SLOWPOKE."

	para "Love, Dad"
	done

UnknownText_0x5ac61:
	text "A SLOWPOKE with"
	line "its TAIL cut off…"
	done

SlowpokeWellB1F_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $f, $11, 6, GROUP_AZALEA_TOWN, MAP_AZALEA_TOWN
	warp_def $b, $7, 1, GROUP_SLOWPOKE_WELL_B2F, MAP_SLOWPOKE_WELL_B2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 9
	person_event SPRITE_ROCKET, 11, 19, $6, $0, 255, 255, $2, 3, TrainerGruntM29, EVENT_6FC
	person_event SPRITE_ROCKET, 6, 9, $6, $0, 255, 255, $2, 1, TrainerGruntM1, EVENT_6FC
	person_event SPRITE_ROCKET, 10, 9, $9, $0, 255, 255, $2, 2, TrainerGruntM2, EVENT_6FC
	person_event SPRITE_ROCKET_GIRL, 8, 14, $9, $0, 255, 255, $82, 4, TrainerGruntF1, EVENT_6FC
	person_event SPRITE_SLOWPOKE, 8, 11, $1, $0, 255, 255, $80, 0, SlowpokeScript_0x5a681, EVENT_6FB
	person_event SPRITE_SLOWPOKE, 6, 10, $1, $0, 255, 255, $80, 0, SlowpokeScript_0x5a695, EVENT_6FB
	person_event SPRITE_KURT, 18, 20, $7, $0, 255, 255, $0, 0, KurtScript_0x5a5d5, EVENT_740
	person_event SPRITE_BOULDER, 6, 7, $19, $0, 255, 255, $0, 0, SlowpokeWellB1FBoulder, -1
	person_event SPRITE_POKE_BALL, 7, 14, $1, $0, 255, 255, $1, 0, ItemFragment_0x5a6a3, EVENT_662
