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

%add_sheet("vanilla_00", "vanilla/GFX00.4bpp") ; 
%add_sheet("vanilla_01", "vanilla/GFX01.4bpp") ; 
%add_sheet("vanilla_02", "vanilla/GFX02.4bpp") ; 
%add_sheet("vanilla_03", "vanilla/GFX03.4bpp") ; 
%add_sheet("vanilla_04", "vanilla/GFX04.4bpp") ; 
%add_sheet("vanilla_05", "vanilla/GFX05.4bpp") ; 
%add_sheet("vanilla_06", "vanilla/GFX06.4bpp") ; 
%add_sheet("vanilla_07", "vanilla/GFX07.4bpp") ; 
%add_sheet("vanilla_08", "vanilla/GFX08.4bpp") ; 
%add_sheet("vanilla_09", "vanilla/GFX09.4bpp") ; 
%add_sheet("vanilla_0A", "vanilla/GFX0A.4bpp") ; 
%add_sheet("vanilla_0B", "vanilla/GFX0B.4bpp") ; 
%add_sheet("vanilla_0C", "vanilla/GFX0C.4bpp") ; 
%add_sheet("vanilla_0D", "vanilla/GFX0D.4bpp") ; 
%add_sheet("vanilla_0E", "vanilla/GFX0E.4bpp") ; 
%add_sheet("vanilla_0F", "vanilla/GFX0F.4bpp") ; 

%add_sheet("vanilla_10", "vanilla/GFX10.4bpp") ; 
%add_sheet("vanilla_11", "vanilla/GFX11.4bpp") ; 
%add_sheet("vanilla_12", "vanilla/GFX12.4bpp") ; 
%add_sheet("vanilla_13", "vanilla/GFX13.4bpp") ; 
%add_sheet("vanilla_14", "vanilla/GFX14.4bpp") ; 
%add_sheet("vanilla_15", "vanilla/GFX15.4bpp") ; 
%add_sheet("vanilla_16", "vanilla/GFX16.4bpp") ; 
%add_sheet("vanilla_17", "vanilla/GFX17.4bpp") ; 
%add_sheet("vanilla_18", "vanilla/GFX18.4bpp") ; 
%add_sheet("vanilla_19", "vanilla/GFX19.4bpp") ; 
%add_sheet("vanilla_1A", "vanilla/GFX1A.4bpp") ; 
%add_sheet("vanilla_1B", "vanilla/GFX1B.4bpp") ; 
%add_sheet("vanilla_1C", "vanilla/GFX1C.4bpp") ; 
%add_sheet("vanilla_1D", "vanilla/GFX1D.4bpp") ; 
%add_sheet("vanilla_1E", "vanilla/GFX1E.4bpp") ; 
%add_sheet("vanilla_1F", "vanilla/GFX1F.4bpp") ; 

%add_sheet("vanilla_20", "vanilla/GFX20.4bpp") ; 
%add_sheet("vanilla_21", "vanilla/GFX21.4bpp") ; 
%add_sheet("vanilla_22", "vanilla/GFX22.4bpp") ; 
%add_sheet("vanilla_23", "vanilla/GFX23.4bpp") ; 
%add_sheet("vanilla_24", "vanilla/GFX24.4bpp") ; 
%add_sheet("vanilla_25", "vanilla/GFX25.4bpp") ; 
%add_sheet("vanilla_26", "vanilla/GFX26.4bpp") ; 
%add_sheet("vanilla_27", "vanilla/GFX27.4bpp") ; 
%add_sheet("vanilla_28", "vanilla/GFX28.4bpp") ; 
%add_sheet("vanilla_29", "vanilla/GFX29.4bpp") ; 
%add_sheet("vanilla_2A", "vanilla/GFX2A.4bpp") ; 
%add_sheet("vanilla_2B", "vanilla/GFX2B.4bpp") ; 
%add_sheet("vanilla_2C", "vanilla/GFX2C.4bpp") ; 
%add_sheet("vanilla_2D", "vanilla/GFX2D.4bpp") ; 
%add_sheet("vanilla_2E", "vanilla/GFX2E.4bpp") ; 
%add_sheet("vanilla_2F", "vanilla/GFX2F.4bpp") ; 

%add_sheet("vanilla_30", "vanilla/GFX30.4bpp") ; 
%add_sheet("vanilla_31", "vanilla/GFX31.4bpp") ; 
%add_sheet("vanilla_32", "vanilla/GFX32.4bpp") ; 
%add_sheet("vanilla_33", "vanilla/GFX33.4bpp") ; 
%add_sheet("vanilla_34", "vanilla/GFX34.4bpp") ; 
%add_sheet("vanilla_35", "vanilla/GFX35.4bpp") ; 
%add_sheet("vanilla_36", "vanilla/GFX36.4bpp") ; 
%add_sheet("vanilla_37", "vanilla/GFX37.4bpp") ; 
%add_sheet("vanilla_38", "vanilla/GFX38.4bpp") ; 
%add_sheet("vanilla_39", "vanilla/GFX39.4bpp") ; 
%add_sheet("vanilla_3A", "vanilla/GFX3A.4bpp") ; 
%add_sheet("vanilla_3B", "vanilla/GFX3B.4bpp") ; 
%add_sheet("vanilla_3C", "vanilla/GFX3C.4bpp") ; 
%add_sheet("vanilla_3D", "vanilla/GFX3D.4bpp") ; 
%add_sheet("vanilla_3E", "vanilla/GFX3E.4bpp") ; 
%add_sheet("vanilla_3F", "vanilla/GFX3F.4bpp") ; 

%add_sheet("vanilla_40", "vanilla/GFX40.4bpp") ; 
%add_sheet("vanilla_41", "vanilla/GFX41.4bpp") ; 
%add_sheet("vanilla_42", "vanilla/GFX42.4bpp") ; 
%add_sheet("vanilla_43", "vanilla/GFX43.4bpp") ; 
%add_sheet("vanilla_44", "vanilla/GFX44.4bpp") ; 
%add_sheet("vanilla_45", "vanilla/GFX45.4bpp") ; 
%add_sheet("vanilla_46", "vanilla/GFX46.4bpp") ; 
%add_sheet("vanilla_47", "vanilla/GFX47.4bpp") ; 
%add_sheet("vanilla_48", "vanilla/GFX48.4bpp") ; 
%add_sheet("vanilla_49", "vanilla/GFX49.4bpp") ; 
%add_sheet("vanilla_4A", "vanilla/GFX4A.4bpp") ; 
%add_sheet("vanilla_4B", "vanilla/GFX4B.4bpp") ; 
%add_sheet("vanilla_4C", "vanilla/GFX4C.4bpp") ; 
%add_sheet("vanilla_4D", "vanilla/GFX4D.4bpp") ; 
%add_sheet("vanilla_4E", "vanilla/GFX4E.4bpp") ; 
%add_sheet("vanilla_4F", "vanilla/GFX4F.4bpp") ; 

%add_sheet("vanilla_50", "vanilla/GFX50.4bpp") ; 
%add_sheet("vanilla_51", "vanilla/GFX51.4bpp") ; 
%add_sheet("vanilla_52", "vanilla/GFX52.4bpp") ; 
%add_sheet("vanilla_53", "vanilla/GFX53.4bpp") ; 
%add_sheet("vanilla_54", "vanilla/GFX54.4bpp") ; 
%add_sheet("vanilla_55", "vanilla/GFX55.4bpp") ; 
%add_sheet("vanilla_56", "vanilla/GFX56.4bpp") ; 
%add_sheet("vanilla_57", "vanilla/GFX57.4bpp") ; 
%add_sheet("vanilla_58", "vanilla/GFX58.4bpp") ; 
%add_sheet("vanilla_59", "vanilla/GFX59.4bpp") ; 
%add_sheet("vanilla_5A", "vanilla/GFX5A.4bpp") ; 
%add_sheet("vanilla_5B", "vanilla/GFX5B.4bpp") ; 
%add_sheet("vanilla_5C", "vanilla/GFX5C.4bpp") ; 
%add_sheet("vanilla_5D", "vanilla/GFX5D.4bpp") ; 
%add_sheet("vanilla_5E", "vanilla/GFX5E.4bpp") ; 
%add_sheet("vanilla_5F", "vanilla/GFX5F.4bpp") ; 

%add_sheet("vanilla_60", "vanilla/GFX60.4bpp") ; 
%add_sheet("vanilla_61", "vanilla/GFX61.4bpp") ; 
%add_sheet("vanilla_62", "vanilla/GFX62.4bpp") ; 
%add_sheet("vanilla_63", "vanilla/GFX63.4bpp") ; 
%add_sheet("vanilla_64", "vanilla/GFX64.4bpp") ; 
%add_sheet("vanilla_65", "vanilla/GFX65.4bpp") ; 
%add_sheet("vanilla_66", "vanilla/GFX66.4bpp") ; 
%add_sheet("vanilla_67", "vanilla/GFX67.4bpp") ; 
%add_sheet("vanilla_68", "vanilla/GFX68.4bpp") ; 
%add_sheet("vanilla_69", "vanilla/GFX69.4bpp") ; 
%add_sheet("vanilla_6A", "vanilla/GFX6A.4bpp") ; 
%add_sheet("vanilla_6B", "vanilla/GFX6B.4bpp") ; 
%add_sheet("vanilla_6C", "vanilla/GFX6C.4bpp") ; 
%add_sheet("vanilla_6D", "vanilla/GFX6D.4bpp") ; 
%add_sheet("vanilla_6E", "vanilla/GFX6E.4bpp") ; 
%add_sheet("vanilla_6F", "vanilla/GFX6F.4bpp") ; 

%add_sheet("vanilla_70", "vanilla/GFX70.4bpp") ; 
%add_sheet("vanilla_71", "vanilla/GFX71.4bpp") ; 
%add_sheet("vanilla_72", "vanilla/GFX72.4bpp") ; 
%add_sheet("vanilla_73", "vanilla/GFX73.4bpp") ; rods, bow, hammer, arrows, hook, boom, hearts, ms, small shadow
%add_sheet("vanilla_74", "vanilla/GFX74.4bpp") ; sign, rocks, bush, decanters, arrow item, sparkles, fish, bomb, shadow, key, numbers, blobs, explosion, thrown object debris
%add_sheet("vanilla_75", "vanilla/GFX75.4bpp") ; ether?, bomb, shadow
%add_sheet("vanilla_76", "vanilla/GFX76.4bpp") ; bombos?, bomb, shadow
%add_sheet("vanilla_77", "vanilla/GFX77.4bpp") ; quake?, bomb, shadow
%add_sheet("vanilla_78", "vanilla/GFX78.4bpp") ; GAMEOVR, fairy,  map icons, mirror portal, numbers
%add_sheet("vanilla_79", "vanilla/GFX79.4bpp") ; hit stars, bomb explosion, poofs, fire, dust, tall grass?, splash
%add_sheet("vanilla_7A", "vanilla/GFX7A.4bpp") ; water splash, somaria bullet, tall grass, bubbles, spin attack, heart piece, leaf, small ember, bee, somaria block, fairy, whirlpool
%add_sheet("vanilla_7B", "vanilla/GFX7B.4bpp") ; Nintendo presents
%add_sheet("vanilla_7C", "vanilla/GFX7C.4bpp") ; Big beam explosion thing? rock, shadow
%add_sheet("vanilla_7D", "vanilla/GFX7D.4bpp") ; pots, debris, big tock, meat, decanters, arrow item, blob, numbers, explosion?, key, shadow, bomb
%add_sheet("vanilla_7E", "vanilla/GFX7E.4bpp") ; sign, skull rock, bush, decanters, arrow item, sparkles, fish skellington, bomb, shadow, key, numbers, blobs, explosion, thrown object debris
%add_sheet("vanilla_7F", "vanilla/GFX7F.4bpp") ; octorok, zora, zora whirlpool, octoballoon, oktorok face, crab, splash

%add_sheet("vanilla_80", "vanilla/GFX80.4bpp") ; bull soldier
%add_sheet("vanilla_81", "vanilla/GFX81.4bpp") ; thief, lantern ghost, gravestone
%add_sheet("vanilla_82", "vanilla/GFX82.4bpp") ; lumberack tree, leaves, lumber :D, hoarder facing up
%add_sheet("vanilla_83", "vanilla/GFX83.4bpp") ; armos statue, deadrock, tektite, hoarder facing down, boulder
%add_sheet("vanilla_84", "vanilla/GFX84.4bpp") ; toppo, raven, buzzblob, cukeman face (again?), hoarder facing down, pchest guy, mushroom item
%add_sheet("vanilla_85", "vanilla/GFX85.4bpp") ; vulture, jazzhand, tablet, desert barrier
%add_sheet("vanilla_86", "vanilla/GFX86.4bpp") ; Spikey helmet?, pull switch (pull upwards), falling guard, knife guard body
%add_sheet("vanilla_87", "vanilla/GFX87.4bpp") ; bully, pink victim, lynel
%add_sheet("vanilla_88", "vanilla/GFX88.4bpp") ; rat thief, frog, poe, pchest, undead cucco
%add_sheet("vanilla_89", "vanilla/GFX89.4bpp") ; hinox, ropa, snapdragon facing down
%add_sheet("vanilla_8A", "vanilla/GFX8A.4bpp") ; moblin, snapdragon facing up
%add_sheet("vanilla_8B", "vanilla/GFX8B.4bpp") ; dw octorok, dw zora, zora whirlpool, catfish
%add_sheet("vanilla_8C", "vanilla/GFX8C.4bpp") ; swamolas, murderdactyl, kiki
%add_sheet("vanilla_8D", "vanilla/GFX8D.4bpp") ; aga2 cutscene
%add_sheet("vanilla_8E", "vanilla/GFX8E.4bpp") ; flying bomber, pikit, ropa
%add_sheet("vanilla_8F", "vanilla/GFX8F.4bpp") ; keese, rat, snake, old man

%add_sheet("vanilla_90", "vanilla/GFX90.4bpp") ; armos, aga barrier, magic bat
%add_sheet("vanilla_91", "vanilla/GFX91.4bpp") ; hardhat beetle, mini helma, mini moldorm
%add_sheet("vanilla_92", "vanilla/GFX92.4bpp") ; stalfos, bari, biri, spark
%add_sheet("vanilla_93", "vanilla/GFX93.4bpp") ; blob, stalfos knight, babasu, zoro
%add_sheet("vanilla_94", "vanilla/GFX94.4bpp") ; ganon body
%add_sheet("vanilla_95", "vanilla/GFX95.4bpp") ; hover, orange fish rat, kyameron
%add_sheet("vanilla_96", "vanilla/GFX96.4bpp") ; gibdo, wallmaster
%add_sheet("vanilla_97", "vanilla/GFX97.4bpp") ; dw keese, crickets, stalrope
%add_sheet("vanilla_98", "vanilla/GFX98.4bpp") ; bomb slug, wizzrobe, something fuzzy??
%add_sheet("vanilla_99", "vanilla/GFX99.4bpp") ; pengator, freezor
%add_sheet("vanilla_9A", "vanilla/GFX9A.4bpp") ; pokey, chomp, roller, somaria platform
%add_sheet("vanilla_9B", "vanilla/GFX9B.4bpp") ; zazak, gibo
%add_sheet("vanilla_9C", "vanilla/GFX9C.4bpp") ; skeletal wizzrobe, falling bull soldier
%add_sheet("vanilla_9D", "vanilla/GFX9D.4bpp") ; dig game guy, race game guy?, terrorpin, kodongo
%add_sheet("vanilla_9E", "vanilla/GFX9E.4bpp") ; blank?
%add_sheet("vanilla_9F", "vanilla/GFX9F.4bpp") ; popo, mimic, beamos, blind laser?

%add_sheet("vanilla_A0", "vanilla/GFXA0.4bpp") ; The End
%add_sheet("vanilla_A1", "vanilla/GFXA1.4bpp") ; metal balls, eyegore
%add_sheet("vanilla_A2", "vanilla/GFXA2.4bpp") ; devalant, cball, cball shooter, leever
%add_sheet("vanilla_A3", "vanilla/GFXA3.4bpp") ; moldorm
%add_sheet("vanilla_A4", "vanilla/GFXA4.4bpp") ; lanmolas
%add_sheet("vanilla_A5", "vanilla/GFXA5.4bpp") ; intro sword
%add_sheet("vanilla_A6", "vanilla/GFXA6.4bpp") ; more ganon, falling tiles
%add_sheet("vanilla_A7", "vanilla/GFXA7.4bpp") ; sasha, net kid, oldman, human bully+friend (probably all credits)
%add_sheet("vanilla_A8", "vanilla/GFXA8.4bpp") ; zelda, maidens, old man, dwarf, human soldier, squirrel, human king (probably all credits)
%add_sheet("vanilla_A9", "vanilla/GFXA9.4bpp") ; sleeping maiden, squirrel, bird, hot fairy, fat fairy (probably all credits)
%add_sheet("vanilla_AA", "vanilla/GFXAA.4bpp") ; sparks and lines???, hobo
%add_sheet("vanilla_AB", "vanilla/GFXAB.4bpp") ; mothula
%add_sheet("vanilla_AC", "vanilla/GFXAC.4bpp") ; arrghus, healing fairy
%add_sheet("vanilla_AD", "vanilla/GFXAD.4bpp") ; helma part 1 (body)
%add_sheet("vanilla_AE", "vanilla/GFXAE.4bpp") ; blind
%add_sheet("vanilla_AF", "vanilla/GFXAF.4bpp") ; kholdstare

%add_sheet("vanilla_B0", "vanilla/GFXB0.4bpp") ; vitreous, combat lightning
%add_sheet("vanilla_B1", "vanilla/GFXB1.4bpp") ; helma part 2 (mask and fireballs)
%add_sheet("vanilla_B2", "vanilla/GFXB2.4bpp") ; trinexx middle
%add_sheet("vanilla_B3", "vanilla/GFXB3.4bpp") ; trinexx middle head
%add_sheet("vanilla_B4", "vanilla/GFXB4.4bpp") ; more ganon, trident, fire bats
%add_sheet("vanilla_B5", "vanilla/GFXB5.4bpp") ; agahnim
%add_sheet("vanilla_B6", "vanilla/GFXB6.4bpp") ; more agahnim, energy ball
%add_sheet("vanilla_B7", "vanilla/GFXB7.4bpp") ; king zora, zoras
%add_sheet("vanilla_B8", "vanilla/GFXB8.4bpp") ; more ganon, fire bats, dead uncle body
%add_sheet("vanilla_B9", "vanilla/GFXB9.4bpp") ; cannon soldier, bnc
%add_sheet("vanilla_BA", "vanilla/GFXBA.4bpp") ; priest, mantle
%add_sheet("vanilla_BB", "vanilla/GFXBB.4bpp") ; tutorial guards, some grass?, some statue?
%add_sheet("vanilla_BC", "vanilla/GFXBC.4bpp") ; standard soldier, sword, shield
%add_sheet("vanilla_BD", "vanilla/GFXBD.4bpp") ; little kid, lumberjack, old woman, bottle merchant
%add_sheet("vanilla_BE", "vanilla/GFXBE.4bpp") ; shopkeeper, squid hint guy, hamburger helper, watto, fortune teller, arrow game guy, numbers
%add_sheet("vanilla_BF", "vanilla/GFXBF.4bpp") ; witch, sasha, stumpy

%add_sheet("vanilla_C0", "vanilla/GFXC0.4bpp") ; dwarf hammering, bombshop guy, more fortune teller, broccoli, big bomb, bird hint
%add_sheet("vanilla_C1", "vanilla/GFXC1.4bpp") ; flute kid, flute kid animals
%add_sheet("vanilla_C2", "vanilla/GFXC2.4bpp") ; fighting guy, snitch, santa barfly, running guy, librarian dude
%add_sheet("vanilla_C3", "vanilla/GFXC3.4bpp") ; old snitch, innkeeper, cucco
%add_sheet("vanilla_C4", "vanilla/GFXC4.4bpp") ; uncle, bedsheet, sick kid, credits uncle, Zzzzz
%add_sheet("vanilla_C5", "vanilla/GFXC5.4bpp") ; statue, spike, big spike, laser eyes, lasers, crystal switch, pull switch, falling tile, tile room tile, bumper, big key lock, switch
%add_sheet("vanilla_C6", "vanilla/GFXC6.4bpp") ; statue, spike, big spike, laser eyes, lasers, crystal switch, drain switch, tongue switch, tile room tile, bumper, big key lock, switch
%add_sheet("vanilla_C7", "vanilla/GFXC7.4bpp") ; falling block, big spike
%add_sheet("vanilla_C8", "vanilla/GFXC8.4bpp") ; agahnim captures zelda cutscene
%add_sheet("vanilla_C9", "vanilla/GFXC9.4bpp") ; dungeon map display
%add_sheet("vanilla_CA", "vanilla/GFXCA.4bpp") ; dungeon map display
%add_sheet("vanilla_CB", "vanilla/GFXCB.4bpp") ; duck, pchest follower, big bomb follower
%add_sheet("vanilla_CC", "vanilla/GFXCC.4bpp") ; pchest guy follower, kiki follower
%add_sheet("vanilla_CD", "vanilla/GFXCD.4bpp") ; potion in shop, bombs in shop, 10 arrow get, heart container, mail get, red shield, get, red shield upgrade?, fighter shield get, bow get, fighter sword get, cane get, hookshot get, rod get, hammer get, powder get, 10 bomb get, glove get, book get, key get, boom get
%add_sheet("vanilla_CE", "vanilla/GFXCE.4bpp") ; flipper get, mirror get, bomb get, lamp get, cape get, compass get, pearl get, ms get, shovel get, medallions get, bottles get, mushroom get, map get, big key get
%add_sheet("vanilla_CF", "vanilla/GFXCF.4bpp") ; rupee get, net get, crystal get, bows get, fairy bottled get, bee bottled get, fs stolen?, heart piece get, flute get, mirror shield get, small heart get, small decanter get, arrow get, 50/100/300 rupees get

%add_sheet("vanilla_D0", "vanilla/GFXD0.4bpp") ; 20 rupees get, boots get, pendant get, warp tile (credits?), credits chest, credits desert guy, skeletal king, barrier (attract?)
%add_sheet("vanilla_D1", "vanilla/GFXD1.4bpp") ; sword swing tiles, file select fairy, file select numbers 1-8
%add_sheet("vanilla_D2", "vanilla/GFXD2.4bpp") ; file select numbers 9/0, shield equipped tiles, shovel use, Zzzzz, Quavers, book read
%add_sheet("vanilla_D3", "vanilla/GFXD3.4bpp") ; animated rupees, net use, somaria use, clock
%add_sheet("vanilla_D4", "vanilla/GFXD4.4bpp") ; dungeon map bg
%add_sheet("vanilla_D5", "vanilla/GFXD5.4bpp") ; dungeon map display
%add_sheet("vanilla_D6", "vanilla/GFXD6.4bpp") ; dungeon map display
%add_sheet("vanilla_D7", "vanilla/GFXD7.4bpp") ; Zelda follower
%add_sheet("vanilla_D8", "vanilla/GFXD8.4bpp") ; maiden follower, old man follower
%add_sheet("vanilla_D9", "vanilla/GFXD9.4bpp") ; dwarf follower, frog follower
%add_sheet("vanilla_DA", "vanilla/GFXDA.2bpp") ; 2bpp
%add_sheet("vanilla_DB", "vanilla/GFXDB.2bpp") ; 2bpp
%add_sheet("vanilla_DC", "vanilla/GFXDC.2bpp") ; 2bpp
%add_sheet("vanilla_DD", "vanilla/GFXDD.2bpp") ; 2bpp
%add_sheet("vanilla_DE", "vanilla/GFXDE.2bpp") ; 2bpp
;add_sheet("vanilla_DF", "vanilla/GFXDF.4bpp") ; 

;add_sheet("vanilla_E0", "vanilla/GFXE0.4bpp") ; 
;add_sheet("vanilla_E1", "vanilla/GFXE1.4bpp") ; 
;add_sheet("vanilla_E2", "vanilla/GFXE2.4bpp") ; 
;add_sheet("vanilla_E3", "vanilla/GFXE3.4bpp") ; 
;add_sheet("vanilla_E4", "vanilla/GFXE4.4bpp") ; 
;add_sheet("vanilla_E5", "vanilla/GFXE5.4bpp") ; 
;add_sheet("vanilla_E6", "vanilla/GFXE6.4bpp") ; 
;add_sheet("vanilla_E7", "vanilla/GFXE7.4bpp") ; 
;add_sheet("vanilla_E8", "vanilla/GFXE8.4bpp") ; 
;add_sheet("vanilla_E9", "vanilla/GFXE9.4bpp") ; 
;add_sheet("vanilla_EA", "vanilla/GFXEA.4bpp") ; 
;add_sheet("vanilla_EB", "vanilla/GFXEB.4bpp") ; 
;add_sheet("vanilla_EC", "vanilla/GFXEC.4bpp") ; 
;add_sheet("vanilla_ED", "vanilla/GFXED.4bpp") ; 
;add_sheet("vanilla_EE", "vanilla/GFXEE.4bpp") ; 
;add_sheet("vanilla_EF", "vanilla/GFXEF.4bpp") ; 

;add_sheet("vanilla_F0", "vanilla/GFXF0.4bpp") ; 
;add_sheet("vanilla_F1", "vanilla/GFXF1.4bpp") ; 
;add_sheet("vanilla_F2", "vanilla/GFXF2.4bpp") ; 
;add_sheet("vanilla_F3", "vanilla/GFXF3.4bpp") ; 
;add_sheet("vanilla_F4", "vanilla/GFXF4.4bpp") ; 
;add_sheet("vanilla_F5", "vanilla/GFXF5.4bpp") ; 
;add_sheet("vanilla_F6", "vanilla/GFXF6.4bpp") ; 
;add_sheet("vanilla_F7", "vanilla/GFXF7.4bpp") ; 
;add_sheet("vanilla_F8", "vanilla/GFXF8.4bpp") ; 
;add_sheet("vanilla_F9", "vanilla/GFXF9.4bpp") ; 
;add_sheet("vanilla_FA", "vanilla/GFXFA.4bpp") ; 
;add_sheet("vanilla_FB", "vanilla/GFXFB.4bpp") ; 
;add_sheet("vanilla_FC", "vanilla/GFXFC.4bpp") ; 
;add_sheet("vanilla_FD", "vanilla/GFXFD.4bpp") ; 
;add_sheet("vanilla_FE", "vanilla/GFXFE.4bpp") ; 
;add_sheet("vanilla_FF", "vanilla/GFXFF.4bpp") ; 

check bankcross on

org $C08000
ItemGetSheets: ; This keeps the item get sprites all together, so we can reference them from rom
incbin "vanilla/GFXCD.4bpp" ; potion in shop, bombs in shop, 10 arrow get, heart container, mail get, red shield, get, red shield upgrade?, fighter shield get, bow get, fighter sword get, cane get, hookshot get, rod get, hammer get, powder get, 10 bomb get, glove get, book get, key get, boom get
incbin "vanilla/GFXCE.4bpp" ; flipper get, mirror get, bomb get, lamp get, cape get, compass get, pearl get, ms get, shovel get, medallions get, bottles get, mushroom get, map get, big key get
incbin "vanilla/GFXCF.4bpp" ; rupee get, net get, crystal get, bows get, fairy bottled get, bee bottled get, fs stolen?, heart piece get, flute get, mirror shield get, small heart get, small decanter get, arrow get, 50/100/300 rupees get
incbin "vanilla/GFXD0.4bpp" ; 20 rupees get, boots get, pendant get, warp tile (credits?, credits chest, credits desert guy, skeletal king, barrier (attract?
