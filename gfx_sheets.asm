check bankcross off
!SHEET = $00

macro add_sheet(n, f)
	<n>_sheet:
	pushpc
	org $00CF80+!SHEET : db <n>_sheet>>16
	org $00D05F+!SHEET : db <n>_sheet>>8
	org $00D13E+!SHEET : db <n>_sheet>>0
	pullpc
	incbin "<f>"
	!SHEET #= !SHEET+1
endmacro

%add_sheet("sheet_00", "vanilla/GFX00.4bpp") ; 
%add_sheet("sheet_01", "vanilla/GFX01.4bpp") ; 
%add_sheet("sheet_02", "vanilla/GFX02.4bpp") ; 
%add_sheet("sheet_03", "vanilla/GFX03.4bpp") ; 
%add_sheet("sheet_04", "vanilla/GFX04.4bpp") ; 
%add_sheet("sheet_05", "vanilla/GFX05.4bpp") ; 
%add_sheet("sheet_06", "vanilla/GFX06.4bpp") ; 
%add_sheet("sheet_07", "vanilla/GFX07.4bpp") ; 
%add_sheet("sheet_08", "vanilla/GFX08.4bpp") ; 
%add_sheet("sheet_09", "vanilla/GFX09.4bpp") ; 
%add_sheet("sheet_0A", "vanilla/GFX0A.4bpp") ; 
%add_sheet("sheet_0B", "vanilla/GFX0B.4bpp") ; 
%add_sheet("sheet_0C", "vanilla/GFX0C.4bpp") ; 
%add_sheet("sheet_0D", "vanilla/GFX0D.4bpp") ; 
%add_sheet("sheet_0E", "vanilla/GFX0E.4bpp") ; 
%add_sheet("sheet_0F", "vanilla/GFX0F.4bpp") ; 

%add_sheet("sheet_10", "vanilla/GFX10.4bpp") ; 
%add_sheet("sheet_11", "vanilla/GFX11.4bpp") ; 
%add_sheet("sheet_12", "vanilla/GFX12.4bpp") ; 
%add_sheet("sheet_13", "vanilla/GFX13.4bpp") ; 
%add_sheet("sheet_14", "vanilla/GFX14.4bpp") ; 
%add_sheet("sheet_15", "vanilla/GFX15.4bpp") ; 
%add_sheet("sheet_16", "vanilla/GFX16.4bpp") ; 
%add_sheet("sheet_17", "vanilla/GFX17.4bpp") ; 
%add_sheet("sheet_18", "vanilla/GFX18.4bpp") ; 
%add_sheet("sheet_19", "vanilla/GFX19.4bpp") ; 
%add_sheet("sheet_1A", "vanilla/GFX1A.4bpp") ; 
%add_sheet("sheet_1B", "vanilla/GFX1B.4bpp") ; 
%add_sheet("sheet_1C", "vanilla/GFX1C.4bpp") ; 
%add_sheet("sheet_1D", "vanilla/GFX1D.4bpp") ; 
%add_sheet("sheet_1E", "vanilla/GFX1E.4bpp") ; 
%add_sheet("sheet_1F", "vanilla/GFX1F.4bpp") ; 

%add_sheet("sheet_20", "vanilla/GFX20.4bpp") ; 
%add_sheet("sheet_21", "vanilla/GFX21.4bpp") ; 
%add_sheet("sheet_22", "vanilla/GFX22.4bpp") ; 
%add_sheet("sheet_23", "vanilla/GFX23.4bpp") ; 
%add_sheet("sheet_24", "vanilla/GFX24.4bpp") ; 
%add_sheet("sheet_25", "vanilla/GFX25.4bpp") ; 
%add_sheet("sheet_26", "vanilla/GFX26.4bpp") ; 
%add_sheet("sheet_27", "vanilla/GFX27.4bpp") ; 
%add_sheet("sheet_28", "vanilla/GFX28.4bpp") ; 
%add_sheet("sheet_29", "vanilla/GFX29.4bpp") ; 
%add_sheet("sheet_2A", "vanilla/GFX2A.4bpp") ; 
%add_sheet("sheet_2B", "vanilla/GFX2B.4bpp") ; 
%add_sheet("sheet_2C", "vanilla/GFX2C.4bpp") ; 
%add_sheet("sheet_2D", "vanilla/GFX2D.4bpp") ; 
%add_sheet("sheet_2E", "vanilla/GFX2E.4bpp") ; 
%add_sheet("sheet_2F", "vanilla/GFX2F.4bpp") ; 

%add_sheet("sheet_30", "vanilla/GFX30.4bpp") ; 
%add_sheet("sheet_31", "vanilla/GFX31.4bpp") ; 
%add_sheet("sheet_32", "vanilla/GFX32.4bpp") ; 
%add_sheet("sheet_33", "vanilla/GFX33.4bpp") ; 
%add_sheet("sheet_34", "vanilla/GFX34.4bpp") ; 
%add_sheet("sheet_35", "vanilla/GFX35.4bpp") ; 
%add_sheet("sheet_36", "vanilla/GFX36.4bpp") ; 
%add_sheet("sheet_37", "vanilla/GFX37.4bpp") ; 
%add_sheet("sheet_38", "vanilla/GFX38.4bpp") ; 
%add_sheet("sheet_39", "vanilla/GFX39.4bpp") ; 
%add_sheet("sheet_3A", "vanilla/GFX3A.4bpp") ; 
%add_sheet("sheet_3B", "vanilla/GFX3B.4bpp") ; 
%add_sheet("sheet_3C", "vanilla/GFX3C.4bpp") ; 
%add_sheet("sheet_3D", "vanilla/GFX3D.4bpp") ; 
%add_sheet("sheet_3E", "vanilla/GFX3E.4bpp") ; 
%add_sheet("sheet_3F", "vanilla/GFX3F.4bpp") ; 

%add_sheet("sheet_40", "vanilla/GFX40.4bpp") ; 
%add_sheet("sheet_41", "vanilla/GFX41.4bpp") ; 
%add_sheet("sheet_42", "vanilla/GFX42.4bpp") ; 
%add_sheet("sheet_43", "vanilla/GFX43.4bpp") ; 
%add_sheet("sheet_44", "vanilla/GFX44.4bpp") ; 
%add_sheet("sheet_45", "vanilla/GFX45.4bpp") ; 
%add_sheet("sheet_46", "vanilla/GFX46.4bpp") ; 
%add_sheet("sheet_47", "vanilla/GFX47.4bpp") ; 
%add_sheet("sheet_48", "vanilla/GFX48.4bpp") ; 
%add_sheet("sheet_49", "vanilla/GFX49.4bpp") ; 
%add_sheet("sheet_4A", "vanilla/GFX4A.4bpp") ; 
%add_sheet("sheet_4B", "vanilla/GFX4B.4bpp") ; 
%add_sheet("sheet_4C", "vanilla/GFX4C.4bpp") ; 
%add_sheet("sheet_4D", "vanilla/GFX4D.4bpp") ; 
%add_sheet("sheet_4E", "vanilla/GFX4E.4bpp") ; 
%add_sheet("sheet_4F", "vanilla/GFX4F.4bpp") ; 

%add_sheet("sheet_50", "vanilla/GFX50.4bpp") ; 
%add_sheet("sheet_51", "vanilla/GFX51.4bpp") ; 
%add_sheet("sheet_52", "vanilla/GFX52.4bpp") ; 
%add_sheet("sheet_53", "vanilla/GFX53.4bpp") ; 
%add_sheet("sheet_54", "vanilla/GFX54.4bpp") ; 
%add_sheet("sheet_55", "vanilla/GFX55.4bpp") ; 
%add_sheet("sheet_56", "vanilla/GFX56.4bpp") ; 
%add_sheet("sheet_57", "vanilla/GFX57.4bpp") ; 
%add_sheet("sheet_58", "vanilla/GFX58.4bpp") ; 
%add_sheet("sheet_59", "vanilla/GFX59.4bpp") ; 
%add_sheet("sheet_5A", "vanilla/GFX5A.4bpp") ; 
%add_sheet("sheet_5B", "vanilla/GFX5B.4bpp") ; 
%add_sheet("sheet_5C", "vanilla/GFX5C.4bpp") ; 
%add_sheet("sheet_5D", "vanilla/GFX5D.4bpp") ; 
%add_sheet("sheet_5E", "vanilla/GFX5E.4bpp") ; 
%add_sheet("sheet_5F", "vanilla/GFX5F.4bpp") ; 

%add_sheet("sheet_60", "vanilla/GFX60.4bpp") ; 
%add_sheet("sheet_61", "vanilla/GFX61.4bpp") ; blank sheet
%add_sheet("sheet_62", "vanilla/GFX62.4bpp") ; blank sheet
%add_sheet("sheet_63", "vanilla/GFX63.4bpp") ; blank sheet
%add_sheet("sheet_64", "vanilla/GFX64.4bpp") ; blank sheet
%add_sheet("sheet_65", "vanilla/GFX65.4bpp") ; blank sheet
%add_sheet("sheet_66", "vanilla/GFX66.4bpp") ; blank sheet
%add_sheet("sheet_67", "vanilla/GFX67.4bpp") ; blank sheet
%add_sheet("sheet_68", "vanilla/GFX68.4bpp") ; blank sheet
%add_sheet("sheet_69", "vanilla/GFX69.4bpp") ; blank sheet
%add_sheet("sheet_6A", "vanilla/GFX6A.4bpp") ; blank sheet
%add_sheet("sheet_6B", "vanilla/GFX6B.4bpp") ; blank sheet
%add_sheet("sheet_6C", "vanilla/GFX6C.4bpp") ; blank sheet
%add_sheet("sheet_6D", "vanilla/GFX6D.4bpp") ; blank sheet
%add_sheet("sheet_6E", "vanilla/GFX6E.4bpp") ; blank sheet
%add_sheet("sheet_6F", "vanilla/GFX6F.4bpp") ; blank sheet

%add_sheet("sheet_70", "vanilla/GFX70.4bpp") ; blank sheet
%add_sheet("sheet_71", "vanilla/GFX71.4bpp") ; 
%add_sheet("sheet_72", "vanilla/GFX72.4bpp") ; 
%add_sheet("sheet_73", "vanilla/GFX73.4bpp") ; rods, bow, hammer, arrows, hook, boom, hearts, ms, small shadow
%add_sheet("sheet_74", "vanilla/GFX74.4bpp") ; sign, rocks, bush, decanters, arrow item, sparkles, fish, bomb, shadow, key, numbers, blobs, explosion, thrown object debris
%add_sheet("sheet_75", "vanilla/GFX75.4bpp") ; ether?, bomb, shadow
%add_sheet("sheet_76", "vanilla/GFX76.4bpp") ; bombos?, bomb, shadow
%add_sheet("sheet_77", "vanilla/GFX77.4bpp") ; quake?, bomb, shadow
%add_sheet("sheet_78", "vanilla/GFX78.4bpp") ; GAMEOVR, fairy,  map icons, mirror portal, numbers
%add_sheet("sheet_79", "vanilla/GFX79.4bpp") ; hit stars, bomb explosion, poofs, fire, dust, tall grass?, splash
%add_sheet("sheet_7A", "vanilla/GFX7A.4bpp") ; water splash, somaria bullet, tall grass, bubbles, spin attack, heart piece, leaf, small ember, bee, somaria block, fairy, whirlpool
%add_sheet("sheet_7B", "vanilla/GFX7B.4bpp") ; Nintendo presents
%add_sheet("sheet_7C", "vanilla/GFX7C.4bpp") ; Big beam explosion thing? rock, shadow
%add_sheet("sheet_7D", "vanilla/GFX7D.4bpp") ; pots, debris, big tock, meat, decanters, arrow item, blob, numbers, explosion?, key, shadow, bomb
%add_sheet("sheet_7E", "vanilla/GFX7E.4bpp") ; sign, skull rock, bush, decanters, arrow item, sparkles, fish skellington, bomb, shadow, key, numbers, blobs, explosion, thrown object debris
%add_sheet("sheet_7F", "vanilla/GFX7F.4bpp") ; octorok, zora, zora whirlpool, octoballoon, oktorok face, crab, splash

%add_sheet("sheet_80", "vanilla/GFX80.4bpp") ; bull soldier
%add_sheet("sheet_81", "vanilla/GFX81.4bpp") ; thief, lantern ghost, gravestone
%add_sheet("sheet_82", "vanilla/GFX82.4bpp") ; lumberack tree, leaves, lumber :D, hoarder facing up
%add_sheet("sheet_83", "vanilla/GFX83.4bpp") ; armos statue, deadrock, tektite, hoarder facing down, boulder
%add_sheet("sheet_84", "vanilla/GFX84.4bpp") ; toppo, raven, buzzblob, cukeman face (again?), hoarder facing down, pchest guy, mushroom item
%add_sheet("sheet_85", "vanilla/GFX85.4bpp") ; vulture, jazzhand, tablet, desert barrier
%add_sheet("sheet_86", "vanilla/GFX86.4bpp") ; Spikey helmet?, pull switch (pull upwards), falling guard, knife guard body
%add_sheet("sheet_87", "vanilla/GFX87.4bpp") ; bully, pink victim, lynel
%add_sheet("sheet_88", "vanilla/GFX88.4bpp") ; rat thief, frog, poe, pchest, undead cucco
%add_sheet("sheet_89", "vanilla/GFX89.4bpp") ; hinox, ropa, snapdragon facing down
%add_sheet("sheet_8A", "vanilla/GFX8A.4bpp") ; moblin, snapdragon facing up
%add_sheet("sheet_8B", "vanilla/GFX8B.4bpp") ; dw octorok, dw zora, zora whirlpool, catfish
%add_sheet("sheet_8C", "vanilla/GFX8C.4bpp") ; swamolas, murderdactyl, kiki
%add_sheet("sheet_8D", "vanilla/GFX8D.4bpp") ; aga2 cutscene
%add_sheet("sheet_8E", "vanilla/GFX8E.4bpp") ; flying bomber, pikit, ropa
%add_sheet("sheet_8F", "vanilla/GFX8F.4bpp") ; keese, rat, snake, old man

%add_sheet("sheet_90", "vanilla/GFX90.4bpp") ; armos, aga barrier, magic bat
%add_sheet("sheet_91", "vanilla/GFX91.4bpp") ; hardhat beetle, mini helma, mini moldorm
%add_sheet("sheet_92", "vanilla/GFX92.4bpp") ; stalfos, bari, biri, spark
%add_sheet("sheet_93", "vanilla/GFX93.4bpp") ; blob, stalfos knight, babasu, zoro
%add_sheet("sheet_94", "vanilla/GFX94.4bpp") ; ganon body
%add_sheet("sheet_95", "vanilla/GFX95.4bpp") ; hover, orange fish rat, kyameron
%add_sheet("sheet_96", "vanilla/GFX96.4bpp") ; gibdo, wallmaster
%add_sheet("sheet_97", "vanilla/GFX97.4bpp") ; dw keese, crickets, stalrope
%add_sheet("sheet_98", "vanilla/GFX98.4bpp") ; bomb slug, wizzrobe, something fuzzy??
%add_sheet("sheet_99", "vanilla/GFX99.4bpp") ; pengator, freezor
%add_sheet("sheet_9A", "vanilla/GFX9A.4bpp") ; pokey, chomp, roller, somaria platform
%add_sheet("sheet_9B", "vanilla/GFX9B.4bpp") ; zazak, gibo
%add_sheet("sheet_9C", "vanilla/GFX9C.4bpp") ; skeletal wizzrobe, falling bull soldier
%add_sheet("sheet_9D", "vanilla/GFX9D.4bpp") ; dig game guy, race game guy?, terrorpin, kodongo
%add_sheet("sheet_9E", "vanilla/GFX9E.4bpp") ; blank sheet
%add_sheet("sheet_9F", "vanilla/GFX9F.4bpp") ; popo, mimic, beamos, blind laser?

%add_sheet("sheet_A0", "vanilla/GFXA0.4bpp") ; The End
%add_sheet("sheet_A1", "vanilla/GFXA1.4bpp") ; metal balls, eyegore
%add_sheet("sheet_A2", "vanilla/GFXA2.4bpp") ; devalant, cball, cball shooter, leever
%add_sheet("sheet_A3", "vanilla/GFXA3.4bpp") ; moldorm
%add_sheet("sheet_A4", "vanilla/GFXA4.4bpp") ; lanmolas
%add_sheet("sheet_A5", "vanilla/GFXA5.4bpp") ; intro sword
%add_sheet("sheet_A6", "vanilla/GFXA6.4bpp") ; more ganon, falling tiles
%add_sheet("sheet_A7", "vanilla/GFXA7.4bpp") ; sasha, net kid, oldman, human bully+friend (probably all credits)
%add_sheet("sheet_A8", "vanilla/GFXA8.4bpp") ; zelda, maidens, old man, dwarf, human soldier, squirrel, human king (probably all credits)
%add_sheet("sheet_A9", "vanilla/GFXA9.4bpp") ; sleeping maiden, squirrel, bird, hot fairy, fat fairy (probably all credits)
%add_sheet("sheet_AA", "vanilla/GFXAA.4bpp") ; sparks and lines???, hobo
%add_sheet("sheet_AB", "vanilla/GFXAB.4bpp") ; mothula
%add_sheet("sheet_AC", "vanilla/GFXAC.4bpp") ; arrghus, healing fairy
%add_sheet("sheet_AD", "vanilla/GFXAD.4bpp") ; helma part 1 (body)
%add_sheet("sheet_AE", "vanilla/GFXAE.4bpp") ; blind
%add_sheet("sheet_AF", "vanilla/GFXAF.4bpp") ; kholdstare

%add_sheet("sheet_B0", "vanilla/GFXB0.4bpp") ; vitreous, combat lightning
%add_sheet("sheet_B1", "vanilla/GFXB1.4bpp") ; helma part 2 (mask and fireballs)
%add_sheet("sheet_B2", "vanilla/GFXB2.4bpp") ; trinexx middle
%add_sheet("sheet_B3", "vanilla/GFXB3.4bpp") ; trinexx middle head
%add_sheet("sheet_B4", "vanilla/GFXB4.4bpp") ; more ganon, trident, fire bats
%add_sheet("sheet_B5", "vanilla/GFXB5.4bpp") ; agahnim
%add_sheet("sheet_B6", "vanilla/GFXB6.4bpp") ; more agahnim, energy ball
%add_sheet("sheet_B7", "vanilla/GFXB7.4bpp") ; king zora, zoras
%add_sheet("sheet_B8", "vanilla/GFXB8.4bpp") ; more ganon, fire bats, dead uncle body
%add_sheet("sheet_B9", "vanilla/GFXB9.4bpp") ; cannon soldier, bnc
%add_sheet("sheet_BA", "vanilla/GFXBA.4bpp") ; priest, mantle
%add_sheet("sheet_BB", "vanilla/GFXBB.4bpp") ; tutorial guards, some grass?, some statue?
%add_sheet("sheet_BC", "vanilla/GFXBC.4bpp") ; standard soldier, sword, shield
%add_sheet("sheet_BD", "vanilla/GFXBD.4bpp") ; little kid, lumberjack, old woman, bottle merchant
%add_sheet("sheet_BE", "vanilla/GFXBE.4bpp") ; shopkeeper, squid hint guy, hamburger helper, watto, fortune teller, arrow game guy, numbers
%add_sheet("sheet_BF", "vanilla/GFXBF.4bpp") ; witch, sasha, stumpy

%add_sheet("sheet_C0", "vanilla/GFXC0.4bpp") ; dwarf hammering, bombshop guy, more fortune teller, broccoli, big bomb, bird hint
%add_sheet("sheet_C1", "vanilla/GFXC1.4bpp") ; flute kid, flute kid animals
%add_sheet("sheet_C2", "vanilla/GFXC2.4bpp") ; fighting guy, snitch, santa barfly, running guy, librarian dude
%add_sheet("sheet_C3", "vanilla/GFXC3.4bpp") ; old snitch, innkeeper, cucco
%add_sheet("sheet_C4", "vanilla/GFXC4.4bpp") ; uncle, bedsheet, sick kid, credits uncle, Zzzzz
%add_sheet("sheet_C5", "vanilla/GFXC5.4bpp") ; statue, spike, big spike, laser eyes, lasers, crystal switch, pull switch, falling tile, tile room tile, bumper, big key lock, switch
%add_sheet("sheet_C6", "vanilla/GFXC6.4bpp") ; statue, spike, big spike, laser eyes, lasers, crystal switch, drain switch, tongue switch, tile room tile, bumper, big key lock, switch
%add_sheet("sheet_C7", "vanilla/GFXC7.4bpp") ; falling block, big spike
%add_sheet("sheet_C8", "vanilla/GFXC8.4bpp") ; agahnim captures zelda cutscene
%add_sheet("sheet_C9", "vanilla/GFXC9.4bpp") ; dungeon map display
%add_sheet("sheet_CA", "vanilla/GFXCA.4bpp") ; dungeon map display
%add_sheet("sheet_CB", "vanilla/GFXCB.4bpp") ; duck, pchest follower, big bomb follower
%add_sheet("sheet_CC", "vanilla/GFXCC.4bpp") ; pchest guy follower, kiki follower
%add_sheet("sheet_CD", "vanilla/GFXCD.4bpp") ; potion in shop, bombs in shop, 10 arrow get, heart container, mail get, red shield, get, red shield upgrade?, fighter shield get, bow get, fighter sword get, cane get, hookshot get, rod get, hammer get, powder get, 10 bomb get, glove get, book get, key get, boom get
%add_sheet("sheet_CE", "vanilla/GFXCE.4bpp") ; flipper get, mirror get, bomb get, lamp get, cape get, compass get, pearl get, ms get, shovel get, medallions get, bottles get, mushroom get, map get, big key get
%add_sheet("sheet_CF", "vanilla/GFXCF.4bpp") ; rupee get, net get, crystal get, bows get, fairy bottled get, bee bottled get, fs stolen?, heart piece get, flute get, mirror shield get, small heart get, small decanter get, arrow get, 50/100/300 rupees get

%add_sheet("sheet_D0", "vanilla/GFXD0.4bpp") ; 20 rupees get, boots get, pendant get, warp tile (credits?), credits chest, credits desert guy, skeletal king, barrier (attract?)
%add_sheet("sheet_D1", "vanilla/GFXD1.4bpp") ; sword swing tiles, file select fairy, file select numbers 1-8
%add_sheet("sheet_D2", "vanilla/GFXD2.4bpp") ; file select numbers 9/0, shield equipped tiles, shovel use, Zzzzz, Quavers, book read
%add_sheet("sheet_D3", "vanilla/GFXD3.4bpp") ; animated rupees, net use, somaria use, clock
%add_sheet("sheet_D4", "vanilla/GFXD4.4bpp") ; dungeon map bg
%add_sheet("sheet_D5", "vanilla/GFXD5.4bpp") ; dungeon map display
%add_sheet("sheet_D6", "vanilla/GFXD6.4bpp") ; dungeon map display
%add_sheet("sheet_D7", "vanilla/GFXD7.4bpp") ; Zelda follower
%add_sheet("sheet_D8", "vanilla/GFXD8.4bpp") ; maiden follower, old man follower
%add_sheet("sheet_D9", "vanilla/GFXD9.4bpp") ; dwarf follower, frog follower
%add_sheet("sheet_DA", "vanilla/GFXDA.2bpp") ; attract mode previews
%add_sheet("sheet_DB", "vanilla/GFXDB.2bpp") ; unused filler
%add_sheet("sheet_DC", "vanilla/GFXDC.2bpp") ; item border, map label, floor numbers, pendants, crystals, equipment level numbers, menu alphabet, "BOOMERANG",  "BOW &", "SILVER ARROWS", opened big chest icon, power glove
%add_sheet("sheet_DD", "vanilla/GFXDD.2bpp") ; "BUG-CATCHING NET", boots, pearl, net, mushroom, powder, wood bow, magic meter, quake, ether, bombos, ms+ sword, fighter sword hilt, mirror, item select circle, hud key, "DUNGEON", "EQUIPME", "ITEM", bottled fairy, bottled bee, armor
%add_sheet("sheet_DE", "vanilla/GFXDE.2bpp") ; "A", "Y", "DO", heart pieces, equipment's "NT", hud "LIFE", hud hearts, hud numbers, hud arrows, hud bombs, hud rupee, menu borders, silvers bow, boomerang, hookshot, bombs, rods, lamp, hammer, flute, book, empty bottle, filled bottle, canes, cape, gloves, flippers, big key, map, compass, fighter sword blade, fighter shield, fire shield, mirror shield
;add_sheet("sheet_DF", "vanilla/GFXDF.4bpp") ; 

;add_sheet("sheet_E0", "vanilla/GFXE0.4bpp") ; 
;add_sheet("sheet_E1", "vanilla/GFXE1.4bpp") ; 
;add_sheet("sheet_E2", "vanilla/GFXE2.4bpp") ; 
;add_sheet("sheet_E3", "vanilla/GFXE3.4bpp") ; 
;add_sheet("sheet_E4", "vanilla/GFXE4.4bpp") ; 
;add_sheet("sheet_E5", "vanilla/GFXE5.4bpp") ; 
;add_sheet("sheet_E6", "vanilla/GFXE6.4bpp") ; 
;add_sheet("sheet_E7", "vanilla/GFXE7.4bpp") ; 
;add_sheet("sheet_E8", "vanilla/GFXE8.4bpp") ; 
;add_sheet("sheet_E9", "vanilla/GFXE9.4bpp") ; 
;add_sheet("sheet_EA", "vanilla/GFXEA.4bpp") ; 
;add_sheet("sheet_EB", "vanilla/GFXEB.4bpp") ; 
;add_sheet("sheet_EC", "vanilla/GFXEC.4bpp") ; 
;add_sheet("sheet_ED", "vanilla/GFXED.4bpp") ; 
;add_sheet("sheet_EE", "vanilla/GFXEE.4bpp") ; 
;add_sheet("sheet_EF", "vanilla/GFXEF.4bpp") ; 

;add_sheet("sheet_F0", "vanilla/GFXF0.4bpp") ; 
;add_sheet("sheet_F1", "vanilla/GFXF1.4bpp") ; 
;add_sheet("sheet_F2", "vanilla/GFXF2.4bpp") ; 
;add_sheet("sheet_F3", "vanilla/GFXF3.4bpp") ; 
;add_sheet("sheet_F4", "vanilla/GFXF4.4bpp") ; 
;add_sheet("sheet_F5", "vanilla/GFXF5.4bpp") ; 
;add_sheet("sheet_F6", "vanilla/GFXF6.4bpp") ; 
;add_sheet("sheet_F7", "vanilla/GFXF7.4bpp") ; 
;add_sheet("sheet_F8", "vanilla/GFXF8.4bpp") ; 
;add_sheet("sheet_F9", "vanilla/GFXF9.4bpp") ; 
;add_sheet("sheet_FA", "vanilla/GFXFA.4bpp") ; 
;add_sheet("sheet_FB", "vanilla/GFXFB.4bpp") ; 
;add_sheet("sheet_FC", "vanilla/GFXFC.4bpp") ; 
;add_sheet("sheet_FD", "vanilla/GFXFD.4bpp") ; 
;add_sheet("sheet_FE", "vanilla/GFXFE.4bpp") ; 
;add_sheet("sheet_FF", "vanilla/GFXFF.4bpp") ; 

check bankcross on

org $C08000
ItemGetSheets: ; This keeps the item get sprites all together, so we can reference them from rom
incbin "vanilla/GFXCD.4bpp" ; potion in shop, bombs in shop, 10 arrow get, heart container, mail get, red shield, get, red shield upgrade?, fighter shield get, bow get, fighter sword get, cane get, hookshot get, rod get, hammer get, powder get, 10 bomb get, glove get, book get, key get, boom get
incbin "vanilla/GFXCE.4bpp" ; flipper get, mirror get, bomb get, lamp get, cape get, compass get, pearl get, ms get, shovel get, medallions get, bottles get, mushroom get, map get, big key get
incbin "vanilla/GFXCF.4bpp" ; rupee get, net get, crystal get, bows get, fairy bottled get, bee bottled get, fs stolen?, heart piece get, flute get, mirror shield get, small heart get, small decanter get, arrow get, 50/100/300 rupees get
incbin "vanilla/GFXD0.4bpp" ; 20 rupees get, boots get, pendant get, warp tile (credits?, credits chest, credits desert guy, skeletal king, barrier (attract?
