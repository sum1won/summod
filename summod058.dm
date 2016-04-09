#modname "Summod 0.58"
#description "Overhaul mod with the goal of increasing gameplay diversity"
#version 0.58
#icon "./summod/summodall.tga"

--This is summod.  Feel free to use chunks from it in your own mods, as it originated by combining features from three or four different mods I enjoyed.

--Thanks to a variety of persons named in the dom4mods thread and elsewhere.

--IDs used/reserved for growth
--Monsterids          6300-6999
--weapons             1400-1500
-- armor              600-700
-- Sites              1800-1900
--item      
--Nametypes           none
--montag              3500-3550
--Spell               none
--restricted item     1100-1200
--nation               -none
--mercenary            -none
--event                -none
----------------------


---Scales Change---
#deathincome 2

----------------------
--- Armour Changes ---
----------------------


-- Full Ring Mail --  Primarily affects Logrians
-- +1 def, -1 resource cost
#selectarmor 16
#def -1
#rcost 6
#end

#selectarmor 13 --chain mail --primarily affects herses, tower guards
#def -1 --from -2
#end

-- Full Chain Mail -- Primarily affects MA/LA Man, LA Agartha, MA Marignon
-- +1 def
#selectarmor 18
#def -2
#end

-- Plate Cuirass -- LA Pythium, LA Pangaea LA Ulm, LA/MA Marignon, LA Caelum (two units), LA Ragha (one unit), Therodos (offset with korybant nerf), MA Pelagia (one unit), MA/LA Arco
+1 def, -1 enc
#selectarmor 9
#def 0
#enc 1
#end

-- Plate Hauberk -- LA Pythium, Abysia, MA Machaka, LA Marignon, Ghandarvas, MA/LA Arco)
-- +1 def, -1 enc
#selectarmor 14
#enc 2
#def -2
#end

-- Full Plate Mail -- LA Ulm (Zweihander) (LA Agartha (entrance guard, blindfighter), MA/LA Marignon (Royal Guard), MA Machaka (Black Hunters)
-- -1 enc, +1 def
#selectarmor 19
#enc 4
#def -2
#end

-- Full Chain of Ulm --
-- +1 def
#selectarmor 192
#def -2
#end

-- Full plate of Ulm --
-- +1 def
#selectarmor 91
#def -2
#enc 4
#end

-- Bronze Cuirass -- (Therodos, MA Pangaea, MA Pelagia) (offset for therodos with hoplon changes)
-- +1 def, -1 enc
#selectarmor 100
#def 0
#enc 2
#end

-- Bronze Hauberk -- (MA Pan, Pelagia, Oceania, EA Arco, LA Gath)
-- -2 enc
#selectarmor 101
#enc 3
#end

-- Spider Armor -- (MA Machaka)
-- +1 def, -1 enc, -6 resource cost
#selectarmor 111
#def -2
#enc 3
#rcost 20
#end

-- Ashigaru Armor --(Jomon, Shinyu, Yomi)
-- +1 def, -1 enc
#selectarmor 128
#def 0
#enc 1
#end

-- Samurai Armor --(Jomon, Shinyu, Yomi)
-- +1 def, -1 enc
#selectarmor 129
#def -1
#enc 2
#end

-- Heavy Samurai Armor --  (Jomon, Yomi)
-- +1 def, -1 enc
#selectarmor 130
#def -2
#enc 3
#end

#selectarmor 30  --Rusted Plate Hauberk
#prot 15
#def -3
#end

-- Basalt Armor -- -2 enc, -5 resource cost
#selectarmor 153
#enc 4
#rcost 25
#end

#selectarmor 22 --Coral Cuirass
#prot 11 -- from 9
#rcost 10  -- from 7
#end

#selectarmor 23 --Coral Hauberk
#prot 14 -- from 11
#enc 2  --from 4
#rcost 15  -- from 10
#end

#selectarmor 114 -- Turtle shell Cuirass
#prot 10 -- from 9
#end

#selectarmor 137 -- Turtle shell Barding
#prot 10 -- from 9
#end

#selectarmor 190 -- Coral Barding
#prot 15 --From 10
#rcost 20 --From 12
#end

#selectarmor 85 -- Amber Shield
#def 6 --From 4, make them actually better than regular turtle shield
#end

#selectarmor 84 -- Amber Hauberk
#rcost 15 --from 18
#end

#selectarmor 58 --centaur iron barding (+1 prot -1 enc)
#enc 2
#prot 18
#end

#selectarmor 102 --centaur bronze barding (+1 prot -1 enc)
#enc 3
#prot 17
#end

#selectarmor 131 --jingasa
#rcost 1  --from 2
#end

#selectarmor 132 --kabuto
#rcost 3 --from 4
#end

#newarmor 750
#name "Laminated Mail"
#rcost 12
#type 5
#prot 15
#def -2
#enc 3
#end

#newarmor 751
#name "Treated Scale Hauberk"
#prot 13
#type 5
#rcost 9
#def -1
#enc 2
#end

#newarmor 752
#name "Bronzed Hauberk"
#type 5
#prot 18
#rcost 20
#enc 3
#def -2
#end


---------------
--- Weapons ---
---------------

---Item Spell Effects
#newspell 
#school -1
#researchlevel -1
#name "stunwave"
#effect 3
#damage 10
#nreff 1
#aoe 6
#spec 8390784
#end
#newspell
#researchlevel -1
#school -1
#name "Shockwave"
#effect 2
#descr "Zaps a little area"
#precision 0
#range 1
#nreff 1
#aoe 6
#damage 1
#spec 8390784
#explspr 10219
#sound 24
#nextspell "stunwave"
#end

#newspell 
#name "Dispel Illusion" 
#school -1
#aoe 1
#range 1
#effect 105
#nreff 1
#precision 10
#explspr 10028
#end

#newspell
#copyspell "Horror Mark"
#name "Horror Taint"
#range 10
#precision -5
#school -1
#path 0 -1
#nreff 1
#descr "This spell horror marks a random opponent within 10 squares of the caster."
#end

#newspell
#copyspell "Healing Light"
#name "Totem Heal"
#aoe 5
#descr "The spirit trapped inside the shield will heal minor wounds on friendly soldiers near the bearer."
#spec 541720704
#explspr 10231
#damage 1
#range 5
#school -1
#end

#newspell
#name "Current Command"
#copyspell 779
#name "Current Command"
#school -1
#nextspell 1077
#descr "Shields the wielder from harm while friendly currents aid his allies."
#end
#selectitem 78 --wavebreaker
#autospell "Current Command"
#spell "Water Strike"
#descr "The wielder of this trident will be able to command the currents of the sea. They will aid his friends, keep him from harm, allow him to breathe underwater, and strike his enemies at his command.  When used during battle, the Wave Breaker strikes with incredible speed."
#end

#newspell
#name "SelfBerserk"
#researchlevel -1
#school -1
#effect 10
#damage 256
#spec 12599424
#nreff 1
#end

---Modified Items
#selectweapon 537 -- Flick Barbs
#end

#selectweapon 71 -- sleepvines
--#norepel
#end

#selectweapon 12 -- mace
#dmg 6
#end

#selectweapon 17 --axe
#end

#selectweapon 362 -- chakram
#ammo 5
#end

#selectweapon 315 --machaka spear
#rcost 2
#att 0
#end

#selectweapon 13 --hammer
#dmg 8
#end

#selectweapon 14 --maul
#dmg 10
#end

#selectweapon 451 -- onehanded obsidian club sword (used only by muuch and indie tribe)
#dmg 5 --improved over base by 1, over club by 2
#att 1 --distinguish from other weapons
#end

#selectweapon 377 --wakizashi
#rcost 2 --from 4
#end

#selectweapon 376 --yari
#rcost 2  --from 1
#end



--derust
#selectweapon 531 --mighty yari
#clear
#rcost 1
#dmg 7
#att 1
#len 5
#nratt 1
#twohanded
#pierce
#magic
#end

#selectweapon 256 --kryss
#name "Bronzed Kryss"
#clear
#pierce
#rcost 1
#dmg 3
#len 1
#nratt 1
#end


---New Weapons

#newweapon 1400
#name "Metal Halberd"
#rcost 4
#dmg 10
#att -1
#def 1
#len 4
#nratt 2
#twohanded
#pierce
#slash
#end




#newweapon 1402
#dmg 3
#nratt 1
#len 4
#pierce
#name "Spear"
#rcost 1
#end

#newweapon 1403
#dmg 7
#nratt 1
#len 4
#pierce
#name "Trident"
#rcost 2
#end

#newweapon 1404
#dmg 2
#nratt 1
#att 1
#len 0
#pierce
#name "Knife"
#end

#newweapon 1405
#dmg 9
#len 3
#att 1
#nratt 1
#slash
#rcost 3
#name "Bronze Battleaxe"
#end

#newweapon 1406
#rcost 4
#name "Bronze Glaive"
#dmg 10
#att -1
#def 1
#len 4
#nratt 1
#pierce
#slash
#end

#newweapon 1407
#name "Bronzed Falchion"
#slash
#dmg 7
#len 2
#rcost 4
#end

#newweapon 1408 --areashock
#name "Lightning Wave"
#nostr
#shock
#magic
#dmg 2
#aoe 3
#nratt 1
#armornegating
#end

#newweapon 1409
#name "doomdecay"
#copyweapon 64
#secondaryeffectalways 431
#end

#newweapon 1410
#name "Bite and Swallow"
#dmg 2
#def -2
#nratt 1
#secondaryeffect 609
#end

#newweapon 1411
#copyweapon 367
#name "Curse and Horrormark"
#secondaryeffect 118
#end

#newweapon 1412 --Thunderbow
#name "Thunderbow"
#copyweapon 243
#dmg -3
#aoe 1
#end


#newweapon 1413
#name "Bleed"
#dt_aff
#dmg 8192
#end

#newweapon 1415
#name "Light Stone Lance"
#rcost 2
#charge
#pierce
#dmg 3
#len 4
#nratt 1
#end

#newweapon 1417
#name "Wind of Leprosy"
#dt_aff
#dmg 8
#nostr
#magic
#undeadimmune
#range -3
#nratt -3
#aoe 2
#beam
#uwok
#range050
#ammo 10
#mrnegateseasily
#end

#newweapon 1418
#name "Throw Spines"
#dmg -10
#range -1
#att -4
#nratt 3
#ammo 3
#pierce
#secondaryeffect 51
#end

---Item Counterbalances---

#selectmonster 2648 --hatun runa
#str 9 --mace
#end


--------------
--- Indies ---
--------------

--MAGIC SITE CHANGE

--Mermen village get a scout and some actually useable units
#selectsite 352
#com 1051
#mon 1292
#end

--Ditto for Shambler Reef
#selectsite 709
#com 207
#com 432
#mon 1684
#end

--Make the toad tribe settlement actually appear
#selectsite 1020
#rarity 0
#com 6303
#end

#selectsite 234 --steel ovens
#level 1
#end

#selectsite 544 --cedar pillar
#level 1
#end

#selectsite 474--well of pestilence
#rarity 1
#end

#selectsite 511 --bonedoor tower
#rarity 0
#end

#selectsite 885 --ancient ruin
#summon 2232
#summon 2218
#summon 1087
#summon 2222
#end

#selectsite 521--farm of plenty
#rarity 1
#end

#selectsite 765 --caveman cave
#res 25
#end

#selectsite 970--animal cemetary
#summon 717
#summon 715
#end

#selectsite 636 --flesh eaters isle
#summon 198
#summon 198
#summon 198
#end

#selectsite 615 --the slaughterhouse
#supply 50
#summon 456
#summon 459
#end

-- POPTYPE CHANGES
#newmonster 6301
#copystats 1681
#spr1 "./summod/apprentice_of_the_deep.tga"
#spr2 "./summod/apprentice_of_the_deep_attacking.tga"
#name "Sorceror of the Deep"
#descr "The sorceror is a self taught mage of atlantean stock. Unlike shamans, he is not seen by his fellow atlanteans as a religious leader but as a specialized artisan. He can bring a small number of landlubbers under the waves."
#magicskill 2 1
#poorleader
#mr 13
#slowrec
#researchbonus -2
#gcost 10040
#clearweapons
#weapon 7
#cleararmor
#end

#selectpoptype 57 -- Independant Shamblers get an atlantean mage
#addreccom 6301
#end


--Mermen get a scout
#selectpoptype 72
#end

--Ichtyid get a scout
#newmonster 6302
#copystats 974
#copyspr 974
#name "Ichtyid Scout"
#descr "Ichtyids are a race of fishmen that dwell along the coastlines, both in the water and on land. They are born in shallow waters and use turtles as both food and material for weapons and armor."
#stealthy 10
#end
#selectpoptype 65
#addreccom 6302
#end


--Tritons get a scout.
#selectpoptype 63
#addreccom 1050
#end

--Toad Tribe get a scout
#newmonster 6303
#copystats 2720
#copyspr 2720
#name "Toad Tribe Scout"
#descr "The Toad Tribes are not of human stock, but of the same race as the Atlantians. Most likely they left the deeps for a life in the swamps in the distant past. The more agile of them are trained as scouts."
#end
#selectpoptype 83
#addreccom 6303
#end
#selectmonster 1613
#clearweapons
#weapon 519
#descr "The Toad Tribes are not of human stock, but of the same race as the Atlantians. Most likely they left the deeps for a life in the swamps in the distant past. They fight with spears and wear leather armor, and poison their weapons with the venom of swamp creatures."
#end

--- Misc

--Barbarians--
#selectmonster 139
#spr1 "./summod/barbarian 1.tga"
#spr2 "summod/barbarian 2.tga"
#clearweapons
#weapon 18
#end
#selectmonster 140
#spr1 "./summod/barbarian B 1.tga"
#spr2 "./summod/barbarian B 2.tga"
#clearweapons
#weapon 18
#end
#selectmonster 141
#spr1 "./summod/barbarian B 1.tga"
#spr2 "./summod/barbarian B 2.tga"
#clearweapons
#weapon 18
#end
#selectmonster 147
#spr1 "./summod/barbarian C 1.tga"
#spr2 "./summod/barbarian C 2.tga"
#clearweapons
#weapon 18
#cleararmor
#armor 12
#end
#selectpoptype 25
#clearrec
#addreccom 141
#addrecunit 139
#end

#selectmonster 273 --hoburg crossbow
#gcost 9
#end

-- Indie cav
#selectmonster 1195 --hog knight
#ressize 1 --from 1
#end

#selectmonster 19 --Heavy Cav (Indie)
#gcost 25
#end
#selectmonster 20 --Heavy Cav (Indie)
#gcost 25
#end
#selectmonster 21 --Heavy Cav (Indie)
#gcost 25
#end

#selectmonster 22 -- knight
#gcost 30
#end

#selectmonster 24 --Light Cav (Indie) 
#gcost 18
#clearweapons
#weapon 357
#weapon 21
#end

#selectmonster 25 --Light Cav (Indie) 
#gcost 18
#end

#selectmonster 26 --Light Cav (Indie) 
#gcost 18
#end

#selectmonster 136 --horse tribe chief
#gcost 50
#end

#selectmonster 137 --Horse Tribe Cavalry
#gcost 18
#end

#selectmonster 2117 -- imperial commander
#gcost 55
#end

#selectmonster 451 -- horse brother chief
#gcost 50
#end

#selectmonster 450 --horse brother
#gcost 18
#end

#selectmonster 370 --Jade Maiden
#gcost 10020
#end
 
#selectmonster 369 --Nightmare 
#gcost 10040
#end

#selectmonster 1187 - cataphract
#gcost 10020
#end

-------------------------
--- Rust Unit changes ---
-------------------------
--- Indie

#selectmonster 96 --azure initiate
#clearweapons  -- dagger
#weapon 1404 --stone knife
#end 

#selectmonster 97 --azure mage
#clearweapons  -- dagger
#weapon 1404 --stone knife
#end 

#selectmonster 103 --hydromancer
#clearweapons  -- dagger
#weapon 1404 --stone knife
#end 

#selectmonster 575 --amber clan mage
#clearweapons  -- dagger
#weapon 1404 --stone knife
#end 

#selectmonster 529 --sea father
#clearweapons  --trident
#weapon 1403 --Trident
#end 

#selectmonster 103 --Hydromancer
#clearweapons  --dagger
#weapon 1404 --stone knife
#end 

#selectmonster 1614 --toadtribe shaman
#clearweapons --dagger
#weapon 1404 --stone knife
#end

#selectmonster 1613 --toadtribewarrior
#clearweapons --spear
#weapon 1402 --uwspear
#end

#selectmonster 974 --ichthyid
#clearweapons --net, spear
#weapon 263
#weapon 1402 --uwspear
#end 

#selectmonster 975 --ichthyid warrior
#clearweapons --spear
#weapon 1402 --uwspear
#end 

#selectmonster 976--ichthyid lord
#clearweapons --trident
#weapon 1403 --Trident
#end 

#selectmonster 1009 --holy deepone
#clearweapons --dagger
#weapon 1404 --stone knife
#end 

--- Jomon ---
#selectmonster 2101 -- Shrimp Soldier
#cleararmor --scalemail
#armor 750  -- laminated mail
#end

#selectmonster 2102 -- crab general
#cleararmor --full scale mail
#armor 750 --laminated mail
#end

#selectmonster 2103 --shark warrior
#cleararmor --scale mail
#weapon 20 --bite
#armor 750 --laminated mail
#end

-Kaijin given nonrusting weapon

--- Atlantis ---
#selectmonster 104 --Deep Seer
#clearweapons  --dagger
#weapon 1404 --stone knife
#end 

#selectmonster 1680 --ea scout
#clearweapons --dagger
#weapon 1404 --stone knife
#end 

#selectmonster 1681 --atlantian spearman
#clearweapons --spear
#weapon 1402 --uwspear 
#end 

#selectmonster 1684 --warshambler
#clearweapons --spear
#weapon 1402 --uwspear 
#end 

#selectmonster 1703 --mournful
#clearweapons --halberd
#weapon 1400 --laminated halberd
#end

#selectmonster 1631 --tent owner
#clearweapons --spear, harpoon
#weapon 373 --stone spear
#weapon 452 --harpoon
#end

--- Rlyeh ---

#selectmonster 1523--ea slave prince
#clearweapons
#cleararmor
#weapon 1403 --Trident
#armor 751 -- treated scale hauberk
#armor 1524
#end

#selectmonster 444 --traitor prince
#clearweapons --trident
#weapon 642--meteor trident
#end

#selectmonster 445 --illithid lord
#clearweapons --trident
#weapon 642--meteor trident
#end

#selectmonster 335 --slave trooper
#clearweapons -- trident
#weapon 1403 --Trident
#end 

#selectmonster 1515 --slave trooper
#clearweapons -- spear, net
#weapon 263 --net
#weapon 1402 --uwspear  
#end 

#selectmonster 1516 --slave trooper
#clearweapons -- spear, net
#weapon 263 --net
#weapon 1402 --uwspear  
#end 

#selectmonster 1517 --slave trooper
#clearweapons -- spear
#weapon 1402 --uwspear  
#end 

#selectmonster 336 --slave guardian
#clearweapons -- trident
#cleararmor
#armor 140
#armor 150
#weapon 1403 --Trident 
#end 


#selectmonster 1524 --slaveguardian
#clearweapons --spear
#cleararmor
#armor 140
#armor 150
#weapon 1402 --uwspear
#end

#selectmonster 1525 --slave guardian
#clearweapons -- trident
#cleararmor
#armor 140
#armor 150
#weapon 1403 --Trident
#end 

#selectmonster 1526 --slave guardian
#clearweapons -- trident
#cleararmor
#armor 140
#armor 150
#weapon 1403 --Trident
#end 

#selectmonster 1619 --slave guardian
#clearweapons -- trident
#weapon 1403 --Trident
#end 

#selectmonster 407 -- Illithid soldier
#clearweapons -- trident
#weapon 642 -- meteorite trident
#weapon 311 -- mindblast
#end 

#selectmonster 424 -- Meteorite Guard
#clearweapons --trident
#weapon 642 --meteorite trident
#end 

#selectmonster 1574 -- triton dreamer
#clearweapons --dagger
#weapon 1404 --stone knife
#end 

#selectmonster 1569 -- mad triton
#clearweapons --dagger
#weapon 1404 --stone knife
#end 

#selectmonster 1572 --merman dreamer
#clearweapons --dagger
#weapon 1404 --stone knife
#end 

#selectmonster 1571	--deepone dreamer
#clearweapons --dagger
#weapon 1404 --stone knife
#end 

#selectmonster 971 --hybrid trooper
#clearweapons --spear, tentacle
#weapon 1402 --uwspear
#weapon 85 --tentacle
#end

#selectmonster 1639 --cultist
#clearweapons --dagger
#weapon 1404 --stone knife
#end

#selectmonster 1008 --fanaticdeepone
#clearweapons -trident
#weapon 1403 --Trident
#end


--- Agartha ---

#selectmonster 2491
#clearweapons --hammer
#weapon 1404 --stone knife
#end

#selectmonster 1466 -- ea pale one scout
#clearweapons --spear
#weapon 1402 -- uwspear
#end 

#selectmonster 1453 -- ea pale one warrior
#clearweapons -- spear
#weapon 1402 -- uwspear
#end 

#selectmonster 1452 -- ea pale one militia
#clearweapons -- spear
#weapon 1402 -- uwspear
#end 

#selectmonster 1463 -- ea pale one commander
#clearweapons -- spear
#weapon 1402 -- uwspear
#end 

#selectmonster 1465 -- ea pale one
#clearweapons -- spear
#weapon 1402 -- uwspear
#end 

#selectmonster 1464 -- ea pale one warrior
#clearweapons -- spear
#weapon 1402 -- uwspear
#end 

#selectmonster 1470 --ancientlord
#clearweapons --battleaxe
#weapon 1405 --bronze battleaxe
#end

#selectmonster 1462 --cavernguard
#clearweapons --glaive
#weapon 1406 --bronze glaive
#end

#selectmonster 2490 -- ea pale one ancient wet
#clearweapons -- spear
#weapon 1402 --uwspear 
#end 

#selectmonster 2489 -- ea pale one ancient wet
#clearweapons -- spear
#weapon 1402 --uwspear 
#end 

#selectmonster 1455 -- ea pale one ancient wet
#clearweapons -- spear
#weapon 1402 --uwspear
#end 

#selectmonster 1469 -- ea pale one ancient
#clearweapons -- spear
#weapon 1402 -- uwspear
#end 

#selectmonster 1489 --ma wetone
#clearweapons --spear
#weapon 1402 --uwspear 
#end 

#selectmonster 1491 -- uw ea wetone
#clearweapons --spear
#weapon 1402 --uwspear 
#end 

#selectmonster 1635 -- uw ea/ma wetone
#clearweapons --spear
#weapon 1402 --uwspear 
#end 

#selectmonster 1636 -- uw ea/ma wetone
#clearweapons --spear
#weapon 1402 --uwspear 
#end 

#selectmonster 1501-- cavern wight
#clearweapons -- glaive
#weapon 1406 --bronze glaive 
#end 

#selectmonster 1462-- ea cavern guard
#clearweapons -- glaive
#weapon 1406 --bronze glaive 
#end 

#selectmonster 1638-- ea/ma wet one captain
#clearweapons -- trident
#weapon 1403 --Trident
#end 

#selectmonster 1637-- ea/ma wet one captain
#clearweapons -- trident
#weapon 1403 --Trident
#end 

#selectmonster 1772-- ea olm spawn
#clearweapons -- glaive
#weapon 1406 --bronze glaive
#end 

--- Muuch ---

#selectmonster 2721 -- muuch militia
#clearweapons --spear
#weapon 643 -- bronzespear
#end 

#selectmonster 2723 -- muuch warrior
#clearweapons --spear
#weapon 643 -- bronzespear
#end 

#selectmonster 2745 -- sak muuch warrior
#clearweapons -- spear
#weapon 643 -- bronzespear
#end

#selectmonster 2725 --muuch warrior
#clearweapons --spear
#weapon 643 --bronzespear
#end

#selectmonster 2744 --sak muuch dart thrower
#clearweapons --obsidian dart, dagger
#weapon 619 -obsidian dart
#weapon 1404 --stone knife
#end

#selectmonster 2718 --ah itz
#clearweapons --dagger
#weapon 1404 --knife
#end

#selectmonster 2748 --ah ha
#clearweapons --dagger
#weapon 1404 --knife
#end

#selectmonster 2717 -- ah ha
#clearweapons --dagger
#weapon 1404 --knife
#end

#selectmonster 2716 -- muuch kuhul
#clearweapons --dagger
#weapon 1404 --knife
#end

--- LA Mictlan ---

#selectmonster 1423 --rain warrior
#clearweapons --glaive 
#weapon 1406 --bronze glaive
#end

#selectmonster  1421 --rain priest
#clearweapons --dagger
#weapon 1404 --knife
#end

--- Nagas ---
--nagarishi Kryss made bronze
#selectmonster 1318 --naga
#clearweapons
#weapon 1402 --uw spear
#weapon 141 --poison spit
#weapon 595 --hypnotize
#weapon 239 --venemous fangs
#end

#selectmonster 1319 --naga warrior
#clearweapons
#cleararmor
#weapon  1992 --Bronzed Falchion
#weapon 141 --poison spit
#weapon 595 --hypnotize
#weapon 239 --venemous fangs
#armor 752 --Bronzed Hauberk
#armor 1 --buckler
#end

#selectmonster 1320 --nagaraja
#clearweapons
#cleararmor
#weapon  1992 --Bronzed Falchion
#armor 752 --Bronzed Hauberk
#weapon 141 --poison spit
#weapon 595 --hypnotize
#weapon 239 --venemous fangs
#armor 1 --buckler
#end

#selectmonster 1323 --nagaraja other form
#clearweapons
#cleararmor
#weapon  1992 --Bronzed Falchion
#armor 752 --Bronzed Hauberk
#armor 1 --buckler
#end

#selectmonster 2476 --naga chief
#clearweapons
#weapon 1407 --Bronzed Falchion
#weapon 141 --poison spit
#weapon 595 --hypnotize
#weapon 239 --venemous fangs
#end


-------------------
--- Magic Items ---
-------------------

--- 1H Weapons ---

#selectitem 87 --Axe of Hate
#mainlevel 1
#end


#selectitem 29 --Baneblade
#fear 1
#end

#selectitem 92 --DemonWhip
#undcommand 20
#end


#selectitem 383 --Dragonsceptre
#constlevel 4
#end

#selectweapon 129 --duskdagger
#dmg 4
#att 4
#slash
#secondaryeffect 1413
#end

#selectweapon 117
#name "knife of the danged"
#secondaryeffect 1411
#end

#selectitem 53 --elfbane
#autospell "Dispel Illusion"
#autospellrepeat 1
#descr "This mighty axe shreds the strands of arcane energy that hold magical beings together.  Its sharp edges cut through most armor and magical beings may be destroyed by the slightest scratch.  The residual magics are enough to dispel nearby illusions."
#end

#selectweapon 304 --eveningstar
#nratt 2
#end

#selectitem 8 -- enchanted sword
#mr 1
#end

#selectitem 9 --enchanted spear
#mr 1
#end

#selectitem 56 --faithful
#mainpath 4
#secondarylevel 0
#end

#selectweapon 301 --firebola
#nratt 3
#end

#selectweapon 80 --firebrand
#dmg 8
#end

#selectitem 2 --firesword
#fireres 3
#end

#selectweapon 82 --frostbrand 
#dmg 6
#att 2
#end

#selectitem 68 --heartfindersword
#mainlevel 2
#end

#selectweapon 242 --hunter's knife
#secondaryeffect 1413
#end
#selectitem 3 --ice sword
#coldres 3
#end
#selectitem 43 --lightningspear
#mainlevel 2
#constlevel 6
#shockres 5
#end
#selectweapon 278 --lightningspear
#secondaryeffect 1408 --areashock
#end
#selectweapon 99 --main gauche parrying
#def 6
#end
#selectitem 65--rat tail
#beastmaster 2
#end
#selectitem 69 -- rod of phoenix
#mainlevel 3
#end
#selectitem 14 --sceptre of authority
#command 50
#end
#selectweapon 395 --shadowbrand
#dmg 8
#end
#selectitem 83
#mainlevel 1
#end
#selectitem 21 --smasher
#mainlevel 1
#end
#selectweapon 61 --snake bladder
#aoe 5
#end
#selectweapon 219 --falsefetters for star of thralldom
#aoe 5
#end
#selectweapon 173 --star of heroes
#nratt 2
#end
#selectitem 50 --sword of swiftness
#autospell "Quicken Self"
#end
#selectweapon 106
#def 1
#end
#selectitem 67 --summer sword
#mainlevel 1
#constlevel 6
#supplybonus 200
#end
#selectweapon 208--thunderwhip
#dmg 12
#secondaryeffect 411
#end
#selectitem 64 --vinewhip
#constlevel 2
#mainlevel 1
#end
#selectitem 40 --wand of wildfire
#mainlevel 2
#end
--- Shields ---
#selectitem 137 --charcoal shield
#mainlevel 1
#end
#selectitem 128 --enchanted shield
#mr 1
#end
#selectitem 136 --goldenhoplon
#mainlevel 1
#fireres 10
#end
#selectitem 144 --lanternshield
#mainlevel 1
#end
#selectarmor 42 --leadshield
#def 7
#enc 2
#end
#selectitem 138 --luckyshield
#mainlevel 1
#end
#selectarmor 67
#def 6
#end
#selectitem 143 --scultata voltranus
#autospell "Shockwave"
#autospellrepeat 1
#descr "This formidable tower shieldis enchanted with Earth to make it strong.  On its surface is an enchanted symbol that will shock nearby enemies.  The wielder is partially protected from lightning.  Tower shields cannot be used by mounted troops."
#end
#selectitem 139
#autospell "Horror Taint"
#autospellrepeat 1
#mainlevel 1
#descr "The large, round shield is carved with disturbing patterns. Any disturbance to their integrity will mark the stiker for attack, though anyone in the vicinity of the shield runs the risk of being marked."
#tainted 5
#end
#selectitem 133 --shield of valor
#inspirational 1
#end
#selectitem 141 --totem shield
#autospell "Totem Heal"
#autospellrepeat 1
#descr "The head painted on this shield is home to a spirit that will bestow curses and boons.  The bearer's living allies will be healed, while those attacking the bearer will be cursed."
#end
#selectitem 131 --weightless kite
#mainlevel 1
#end
#selectarmor 66
#def 6
#prot 19
#end
#selectitem 130 --weightless tower
#mainlevel 1
#end
--- 2H Weapons ---
#selectitem 30 --baneblade
#fear 3
#end
#selectweapon 41
#dmg 12
#end
#selectitem 83 --banefirexbow
#constlevel 4
#end
#selectweapon 434
#ammo 24
#end
#selectitem 89 --banner of north star
#end
#selectweapon 155 --bow of botulf
#ammo 24
#end
#selectitem 73--bow of war
#constlevel 4
#end
#selectweapon 154
#ammo 24
#dmg 13
#end
#selectitem 71 --carmine cleaver
#mainlevel 1
#fireshield 10
#end
#selectitem 58
#descr "The Doom Glaive is a truly fearsome weapon used by some undead warriors.  Those close to where it strikes will be cursed for the rest of their lives.  Those lives are likely to be very short, as many victims die and age within minutes.  Those hit directly by the glaive are more likely to suffer from accelerated aging."
#end
#selectweapon 430 --doomglaive
#secondaryeffect 1409
#end
#selectitem 10
#mr 1
#end
#selectweapon 220
#def 3
#end
#selectweapon 180 --ethereal xbow
#ammo 24
#end
#selectitem 79 --gatecleaver
#mainlevel 2
#end
#selectitem 34 --gloves of glad
#mainlevel 1
#end
#selectweapon 128
#dmg 5
#def 3
#end
#selectweapon 565 --golden arbalest
#nratt 3
#ammo 24
#end
#selectitem 23 --halberd of might
#str 8
#end
#selectweapon 130 --hammer of mountains
#att 2
#end
#selectitem 91 --hellsword
#mainlevel 2
#secondarylevel 1
#end
#selectweapon 241
#dmg 15
#end
#selectitem 20 --ice pebble staff
#mainlevel 2
#end
#selectweapon 181 --implementor axe
#dmg 12
#secondaryeffect 440 --lesser fear
#end
#selectitem 84 --ivory bow
#mainlevel 1
#end
#selectweapon 566
#dmg 18
#att 5
#ammo 24
#end
#selectweapon 161  --JMC
#att 6
#ammo 24
#end
#selectweapon 152 --longbow of accuracy
#dmg 18
#ammo 24
#end
#selectweapon 133 --midgetmasher
#dmg 0
#aoe 1
#end
#selectitem 80 --moonblade
#mainlevel 2
#ethereal
#descr "A blade tempered in stellar light, it causes additional damage to magical beings while protecting it's wielder from mundane sources of damage."
#end
#selectitem 27 --piercer
#secondarylevel 0
#secondarypath -1
#end
#selectweapon 168
#ammo 24
#end
#selectitem 38 --flame focus
#firerange 2
#end
#selectitem 47 --staff of corrosion
#mainlevel 1
#end
#selectitem 70 --staff of elemental mastery
#firerange 2
#airrange 2
#waterrange 2
#earthrange 2
#end
#selectitem 76 --staff of elemental mastery
#firerange 2
#airrange 2
#waterrange 2
#earthrange 2
#end
#selectitem 74 --staff of storms
#mainlevel 4
#secondarypath 1
#secondarylevel 1
#end
#selectitem 86 --standard of damned
#mainlevel 3
#undcommand 100
#descr "The standard drains life energy from enemies and adds it to the owner of the standard.  It causes fear in nearby enemies, and allows the wielder to lead a legion of undead."
#end
#selectitem 66 --skull standard
#inspirational 1
#descr "The goatlike skull of a Pain is inspired witha rune of horror and placed on top of a foul standard.  The skull takes courage from enemies and grants it to allied troops."
#end
#selectitem 44 --Thunderbow
#weapon 0
#weapon 1412
#end
#selectweapon 137 --entangle for Vine Bow, Vine Whip
#aoe 1
#end
#selectweapon 332 --vision's foe
#nratt -2
#ammo 24
#end

#selectitem 85 --wraithsword
#fear 5
#mainlevel 2
#end
#selectweapon 110
#dmg 13
#end

--- Headgear ---

#selectitem 158 ---crown of command
#magiccommand 50
#undcommand 50
#descr "With this crown, a commander can lead more men than ever before.  The commander will also be able to command magical and undead beings."
#end

#selectitem 156 --helmet of heroes
#command 50
#end

#selectitem 162 --ironface
#mainlevel 3
#end

#selectitem 160 --mistletoe garland
#constlevel 4
#autospell "twist fate"
#end

#selectitem 161 --spirit helmet
#shockres 5
#end

#selectitem 159 --spirit mask
#mainlevel 1
#end

#selectitem 165 - wraith crown
#mainlevel 4
#end

--- Armor ---

#selectitem 175 --berserker pelt
#constlevel 12
#end
#newitem
#copyitem 55
#name "Berserker Pelt"
#copyspr 175
#constlevel 0
#type 5
#weapon 0
#armor "Furs"
#mainpath 6
#mainlevel 1
#autospell "SelfBerserk"
#descr "This wolf pelt will enrage the wearer, increasing his strength and battle prowess, but reducing his defense."
#end


#selectarmor 38 --full black plate
#enc 3
#end

#selectitem 205 -- blue dragon scale mail
#mainlevel 1
#coldres 10
#end

#selectitem 202 --bone armor
#mainlevel 4
#end

#selectitem 188 --brightmail armor
#awe 1
#constlevel 6
#descr "A silvery haubergon enchanted to be especially light and durable, it's awesome."
#end

#selectitem 186 --chain mail of displacement
#autospell "Mirror Image"
#descr "The wearer of this full set of chainmail will have his image displaced by a couple of feet.  This makes it very hard for his opponents to hit him in combat. Successfully striking the wearer will make him easier to hit."
#end

#selectitem 183 --dire wolf pelt
#att 3
#def 3
#end

#selectitem 379 --enchanted ring mail armor
#mr 1
#end

#selectitem 206 --green dragon scale mail
#mainlevel 1
#poisonres 10
#end

#selectitem 203 --hydraskin armor
#fireres -5
#descr "Armour made from the skin of a hydra, it gives total poison immunity and grants the wearer the regenerative powers of the hydra, but is vulnerable to fire."
#end
#selectarmor 43
#prot 15
#end

#selectitem 201 --jadearmor
#mainlevel 1
#end

#newarmor 753
#name "LightweightMail"
#type 5
#prot 14
#enc 1
#end



#selectitem 178
#armor "LightweightMail"
#constlevel 0
#mainlevel 1
#end

#selectarmor 109 --marblebreastplate
#prot 19
#enc 2
#end

#selectitem 204  --red dragon armor
#mainlevel 1
#fireres 10
#end

#selectitem 199 --robe of invulnerability
#mainlevel 2
#end

#selectitem 192 --robe of shadows
#end

#selectitem 187 --silverhauberk
#mainlevel 1
#end

#selectitem 180  --weightless scale mail
#mainlevel 1
#end

--- Footgear ---
#selectitem 220 --Brimstone Boots
#reinvigoration 2
#descr "These hard boots grant fire immunity, extra strength, and enhanced endurance to the wearer.  They will also allow their wearer to travel through wastelands without hindrance."
#end

#selectweapon 175 --Chi Shoes
#nratt 2
#end

--- Misc ---
#selectitem 287 --acorn necklace
#secondarypath -1
#secondarylevel 0
#end

#selectitem 247 --amulet of breathing
#mainlevel 1
#end

#selectitem 246 -- amulet of missle protection
#mainlevel 1
#end

#selectitem 273 --amulet of fish
#secondarypath -1
#secondarylevel 0
#end

#selectitem 313 --arcane lens
#allrange 2
#end

#selectitem 294 --astral serpent
#secondarypath -1
#secondarylevel 0
#end

#selectitem 259 --barkskin amulet
#constlevel 0
#mainlevel 1
#end

#selectitem 235 --bearclaw
#constlevel 2
#secondarypath -1
#secondarylevel 0
#end

#selectitem 322 --blood pendant
#bloodrange 2
#end

#selectitem 303	 --	Barrel of Air A4, const 2, 150 points
#constlevel 2
#giftofwater 150
#descr "This magic item will enable a commander to travel underwater with an army consisting of 75 humans or 50 ogres."
#end

#selectitem 310	 --	crystal heart s1e1
#mainlevel 1
#secondarylevel 1
#end

#selectarmor 76 --	Bracers of Protection - Def +2 -> +3, Prot +2 -> +3
#prot 3
#def 3
#end

#selectitem 272	 --	Cauldron of Elven Halls -> A2
#falsearmy -70
#constlevel 0
#descr "A great silver cauldron enchanted with the magic of the Vanir.  Soup made in the silver cauldron will turn those who feed on it invisible.  By the law of some unknown power, the enchantment ends when weapons are drawn and battle begins.  The army with the cauldron appears to be 75 units smaller than it actually is."
#end

#selectitem 260	 --	Cat charm n2->n1
#mainlevel 1
#end

#selectitem 256	 --	Catseye Amulet 100 darkvision; E1
#secondarypath -1
#secondarylevel 0
#mainpath 5
#end

#selectitem 284	 --	Champions Skull Insp 1, D2->D1
#mainlevel 1
#inspirational 1
#end

#selectitem 308	 --	Copper Arm - E3F1 -> E2F1, forgebonus 1
#mainlevel 1
#fixforgebonus 1
#end

#selectweapon 121 --dancing trident
#att 3
#dmg 21
#def 2
#end

#selectitem 257 --effigy of war
#falsearmy 80
#descr "The shamans of the wolf tribes are known to craft effigies from wood and the bones of beasts and fallen enemies.  These effigies project the memories of the bones and are surrounded by the spirits of the dead.  Spectral beasts and warriors appear in the vicinity of the army, fooling scouts and spies that observe the army, though the depart before battle is joined.  An army with an effigy will appear to be 80 units larger than it actually is."
#end

#selectitem 318 --	Elixir of Life N1F1
#mainlevel 1
#secondarylevel 1
#end

#selectitem 	271	 --	Enchanted Mirror A2->A1
#constlevel 4
#mainlevel 1
#falsearmy 50
#end

#selectitem 261	 --	Enormous Cauldron
#constlevel 0
#supplybonus 120
#end

#selectitem 312	 --	Eye Pendant (?)
#autodishealer 3
#secondarylevel 2
#patrolbonus 20
#end

#selectitem 248	 --	Gossamer Cloth -> A1N1
#falsearmy -100
#constlevel 4
#descr "A piece of cloth made from dreams and hopes.  It is said that the Tuatha wear clothing made from gossamer for they have the power of Glamour.  The Gossamer Cloth enables its wearer to cover his fellows in glamour and shadows, preventing them from being detected by enemy scouts.  Up to 100 units are made invisble by the enchantment of the cloth."
#end

#selectitem 239	 --	Imp Familiar +10 undead leadership
#undcommand 10
#end

#selectitem 290	 --	Lycantropos Amulet - #heal, improved stats
#att 3
#def -3
#str 6
#heal
#magicboost 53 -2
#descr "This iron amulet is crafted in the image of a wolf's head.  Its eyes are as red as the rage that fills the heart of the wearer.  The amulet grants the powers of a beast, letting him regenerate both major and minor wounds, increasing his strength and rage, and granting him night vision.  The powers of the amulet will eventually turn the wearer into a beast, but even wearing it may suppress magical skill."
#end

#selectitem 274	 --	Manuel of Water Breathing N3, const 4, 200 points
#constlevel 4
#secondarypath -1
#secondarylevel 0
#giftofwater 200
#descr "The owner of this magic book can grant up to 100 soldiers the ability to breathe water."
#end

#selectitem 293	 --	Miraculous Cure-All Disease-Healer 5
#autodishealer 5
#mainlevel 4
#end

#selectitem 304	 --	Mirror of False Impressions-> A4->A2
#mainlevel 2
#end

#selectweapon 546 --Pebble Pouch Range Strength/3->Strength, nratt 3
#range -1
#nratt 3
#end

#selectitem 255	 --	Pendant of Luck -> Twist Fate
#autospell "Twist Fate"
#autospellrepeat 1
#end

#selectitem 249	 --	Pills of Water Breathing, A1, const 6, 80 points
#mainlevel 1
#constlevel 6
#giftofwater 80
#descr "These pills grant waterbreathing ability to 40 soldiers."
#end

#selectitem 242	 --	Ring of Warning -> Patrol 25
#patrolbonus 25
#end

#selectitem 307	 --	Sea King Goblet, W2, const 4, 150 points
#mainlevel 2
#constlevel 4
#giftofwater 150
#descr "This magic item allows the commander to lead up to 75 humans underwater, or only 50 if they are riding horses."
#end

#selectitem 236	 --	Skull talisman research requirement 0->2
#constlevel 2
#end

#selectitem 277	 --	Slave Matrix - E1S1 -> S1
#mainpath 4
#secondarypath -1
#secondarylevel 0
#end

#selectitem 311	 --	Stone Idol - E2S2 -> E1S1
#mainlevel 1
#secondarylevel 1
#end

#selectweapon 176	 --	Stone Bird - + attacks
#att 2
#end

#selectitem 281	 --	Stone Sphere - S2E1 -> S1E1
#mainlevel 1
#end

#selectitem 267	 --	Wall Shaker 2A req
#mainlevel 2
#end

#selectitem 300	 --	Water Lens + range
#waterrange 2
#end

#selectitem 253	 --	Woundfend Amulet E1S1->S1
#mainpath 1
#end

--- Artefacts ---

-Aseftik's Armor
#selectitem 207
#mainlevel 3
#end
#selectarmor 35
#enc 3
#end
-Amon Hotep
#selectitem 167
#mainlevel 5
#end
-Atlas of Creation
#selectitem 337
#secondarylevel 4
#end
-Boots of Antaeus
#selectitem 228
#mainlevel 4
#end
-Carcator
#selectitem 346
#mainlevel 2
#end
-Draupnir
#selectitem 375
#mainlevel 4
#end
-Fenris' Pelt
#selectitem 211
#mainlevel 3
#end
-Gate Stone
#selectitem 336
#mainlevel 7
#secondarylevel 7
#end
-Hammer of The Forge Lord
#selectitem 104
#mainlevel 5
#secondarylevel 3
#fixforgebonus 8
#end
-Monolith Armor
#selectitem 208
#mainlevel 4
#reinvigoration 6
#end
#selectarmor 47
#prot 32
#end
-Nethgul
#selectitem 342
#mainlevel 2
#end
-Sun Slayer
#selectitem 117
#mainlevel 5
#end
-Tempest
#selectitem 97
#mainlevel 5
#end
-The Ark
#selectitem 325
#mainlevel 5
#secondarylevel 5
#end
-The Horror Harmonica
#selectitem 344
#mainlevel 5
#secondarylevel 3
#end
-Manual of Crossbreeding
#selectitem 357
#mainlevel 2
#secondarylevel 2
#end
-Staff from the Sun
#selectitem 125
#mainlevel 4
#end
-Summit
#selectitem 101
#mainlevel 4
#end
#selectweapon 162
#att 15
#def 9
#armorpiercing
#end
-Unquenched Sword
#selectitem 94
#mainlevel 5
#autospell "Living Fire"
#end
-Wondrous Box
#selectitem 351
#mainlevel 3
#poisonres 5
#end
-Percival the Pocket Knight
#selectitem 334
#mainlevel 1
#end
#selectmonster 959
#hp 16
#att 13
#def 13
#str 13
#end
-The Sharpest Tooth
#selectitem 119
#mainlevel 1
#end
-Holger the Head
#selectitem 333
#secondarypath -1
#secondarylevel 0
#end
#selectmonster 1139
#onebattlespell "Personal Luck"
#end
-Harvest Blade
#selectitem 122
#mainlevel 2
#fear 15
#end

--------------
--- Spells ---
--------------

---Sitesearch Spells

-- Dark Knowledge --
-- -1 Gemcost
#selectspell 644
#fatiguecost 300
#end

-- Arcane Probing --
-- -1 Gemcost
#selectspell 437
#fatiguecost 200
#end

-- Auspex --
-- +1 Province range
#selectspell 897
#provrange 3
#end

-- Acashic Knowledge --
-- -5 Gemcost, -1 research level
#selectspell 706
#fatiguecost 2000
#researchlevel 5
#end

--- Domes ---

#selectspell 826 -- Dome of Solid Air -8 Gemcost, -1 research level
#fatiguecost 1200
#researchlevel 5
#end

#selectspell 829-- Frost Dome 7 Gemcost, casting requirement reduced to W4 from W5, -2 research level
#fatiguecost 800
#pathlevel 0 4
#researchlevel 4
#end

#selectspell 835 -- Dome of Arcane Warding -4 Gemcost, -2 research level
#fatiguecost 600
#researchlevel 4
#end

#selectspell 840 -- Dome of Flaming Death -3 Gemcost, -2 research level
#fatiguecost 500
#researchlevel 5
#end

-- Forest Dome --
-- -2 Gemcost, casting requirement reduced to N4 from N5, -1 research level
#selectspell 852
#fatiguecost 800
#path 6 0
#pathlevel 6 4
#researchlevel 5
#end

-- Dome of Corruption --
-- -7 slavecost, -2 research level
#selectspell 995
#fatiguecost 1300
#researchlevel 5
#end

--- Globals

#selectspell 765 -- Mechanical Militia -4 research level, -20 gemcost
#researchlevel 5
#fatiguecost 6000
#end

#selectspell 842 --Ghost Ship Armada
#fatiguecost 4000
#end

#selectmonster 613  --admiral torgin
#hp 30
#str 15
#invulnerable 10
#onebattlespell 108
#end

#selectspell 731 --Guardians of the Deep
#fatiguecost 4000
#researchlevel 6
#end

#selectspell 489 --Second Sun
#fatiguecost 5000
#end

#selectspell 602 -- Fata Morgana -10 gemcost, -1 pathreq
#fatiguecost 8000
#pathlevel 0 6
#end

#selectspell 831 -- Riches from Beneath -30 gemcost, -1 pathreq
#fatiguecost 4000
#pathlevel 0 4
#end

#selectspell 934 -- Lure of the Deep -20 gemcost, -1 researchlevel
#fatiguecost 5000
#researchlevel 7
#end

#selectspell 741 -- The Kindly Ones -1 researchlevel, -1 pathreq
#researchlevel 7
#pathlevel 0 5
#pathlevel 1 3
#end

#selectspell 742 -- Celestial Rainbow-1 pathlevel, -20 gemcost
#pathlevel 0 6
#pathlevel 1 4
#fatiguecost 6000
#end

#selectspell 857 -- Wrath of the Sea -2 researchlevel, -20 gemcost
#researchlevel 6
#fatiguecost 5000
#end

#selectspell 1007 -- The Looming Hell -50 slavecost, -1 pathlevel
#fatiguecost 10000
#pathlevel 0 7
#end

#selectspell 996 --astral corruption
#researchlevel 9
#fatiguecost 22200
#end

#selectspell 498 -- Strands of Arcane Power
#researchlevel 8
#end

#selectspell 862 -- thetis blessing
#researchlevel 7
#end

#selectspell 760  --forge of the ancients
#researchlevel 9
#fatiguecost 6000
#end

#selectspell 913 --burden of time
#researchlevel 6
#end

--- Misc Rituals

-- Breath of the Desert --
-- Air magic req changed to death magic
#selectspell 537
#clear
#name "Breath of the Desert"
#school 2
#researchlevel 4
#descr "The caster curses a distant province with a dramatic rise in temperature.  Those affected will not know who has cast this spell upon them."
#path 0 0
#pathlevel 0 3
#fatiguecost 500
#provrange 5
#effect 10042
#damage 13
#end

--Transformation
#selectspell 598
#fatiguecost 800
#end


-- Dragon Master --
-- -16 Gemcost, -2 research level
#selectspell 738
#fatiguecost 1400
#researchlevel 6
#end

-- Gift of Reason --
-- -8 Gemcost
#selectspell 906
#fatiguecost 1200
#end

-- Divine Name --
-- -11 Gemcost
#selectspell 928
#fatiguecost 1400
#end

-- Imprint Souls --
-- -10 Gemcost
#selectspell 920
#fatiguecost 1500
#end

-- Acashic Record --
-- -5 Gemcost
#selectspell 692
#fatiguecost 500
#end

---Battlemagic---

-Life for a Life
#newspell
#copyspell 999
#name "Life for a Life"
#descr "The Blood mage sacrifices a virgin and in exchange his foes are slain on the battlefield. Lifeless beings are immune to this spell, everyone else will take severe and irresistible damage from it."
#end
#selectspell 999
#school -1
#end

#newspell
#name "Pyriphlogos Incantation"
#descr "This spell makes all wizards on the battlefield more powerful in Fire magic"
#school 0
#researchlevel 5
#path 0 0
#pathlevel 0 3
#aoe 666
#effect 23
#damage 262144
#fatiguecost 300
#sound 16
#explspr 10113
#range 0
#precision 100
#end

#selectspell 483 -- Rain of Stones (aoe 663 to halve effect)
#fatiguecost 200
#end

#selectspell 617 --army of rats
#researchlevel 8
#pathlevel 0 6
#fatiguecost 400
#end

#selectspell 611 --polymorph, range scales
#range 5005
#end

-- Numbness --
-- Reduce to Alt2, from Alt3, scales
#selectspell 532
#researchlevel 2
#aoe 0
#nreff 1001
#end

-- Bonds of Fire --
-- -1 research level, scales
#selectspell 881
#researchlevel 1
#nreff 1000
#end

-- Prison of Fire --
-- -1 research level
#selectspell 896
#researchlevel 3
#end

#newspell
#copyspell 618
#name "Wild Tangle"
#aoe 1000
#researchlevel 3
#descr "Vines will ensnare anyone in the targeted area.  The ensnared victims cannot move or attack anyone until they have destroyed the vines holding them.  The stronger the victim is, the faster the vines will be destroyed, and the more fertile the province is, the stronger the vines will be. Strong mages will produce more vines."
#end

-- Earth Might --
-- +1 AoE per caster level, casting requirement reduced to E1 from E2
#selectspell 505
#aoe 1000
#pathlevel 0 1
#end

-- Cheat Fate --
-- +1 AoE per caster level
#selectspell 525
#aoe 1000
#end

-- Enlarge --
-- +1 AoE per caster level
#selectspell 527
#aoe 1000
#end

-- Luck --
-- +1 AoE per caster level
#selectspell 536
#aoe 1000
#end

-- Mossbody --
-- +1 AoE per caster level
#selectspell 535
#aoe 1000
#end

-- Protection --
-- +1 AoE per caster level
#selectspell 534
#aoe 1000
#end

-- Quickness --
-- +1 AoE per caster level
#selectspell 540
#aoe 1000
#end

-- Iron Warriors scales, but differently
#selectspell 562
#aoe 0
#nreff 1000
#end

-- Wooden Warriors --
-- +1 AoE per caster level
#selectspell 568
#aoe 1004
#end

-- Army of Giants --
-- +1 AoE per caster level
#selectspell 585
#aoe 1007
#end

-- Battle Fortune --
-- +1 AoE per caster level
#selectspell 581
#aoe 1002
#end

-- Gift of Flight --
-- +1 AoE per caster level
#selectspell 786
#aoe 1000
#end

-- Berserkers --
-- +1 AoE per caster level, +2 research level, +14 range
#selectspell 886
#aoe 1000
#researchlevel 4
#range 15
#end

-- Iron Will --
-- +1 AoE per caster level, -5 range
#selectspell 891
#aoe 1000
#range 15
#end

-- Touch of Madness
-- -2 research level, -14 range
#selectspell 903
#researchlevel 2
#range 1
#end

#newspell
#name "Gulf Stream"
#descr "The mage summons the power of the great hot current, the Gulf Stream. Those aided by this spell can move further every turn and are less exhausted by fighting. This spell can only be cast underwater. This spell does not stack with Friendly Current."
#path 0 0
#pathlevel 0 3
#school 4
#researchlevel 5
#effect 81
#damage 2
#fatiguecost 100
#spec  	41943040
#end

#newspell
#name "Siren's Blessing"
#descr "This spell is a larger scale version of a spell that Sirens use on attractive humans to make them able to do certain 'physical tasks' underwater. This blessing affects all those friendly troops in the battlefield using magical means to breathe underwater and gives them easier movement and increased agility. This spell however does not prevent the extra fatigue granted by underwater combat. This spell can only be casted underwater and has no effect on those who can naturally enter the sea."
#path 0 1
#pathlevel 0 3
#school 4
#researchlevel 3
#effect 23
#aoe 25
#damage 33554464
#fatiguecost 100
#spec 46202880
#end

-- Sulphur Haze
#selectspell 423
#spec 8388608 --UW
#end

-- Rust Mist
#selectspell 428
#spec 8388608 --UW
#end

-- Ice Strike
#selectspell 479
#spec 8388608 --UW
#end

#selectspell 420 --arcane bolt
#damage 2006
#end

#selectspell 898 --curse of desert
#aoe 2000
#end

#selectspell 890 --Sailor's Death
#aoe 0
#nreff 1000
#end
#selectspell 908 --confusion
#aoe 1000
#end
#selectspell 565 -- enfeeble
#aoe 2006
#end 
#selectspell 559 --bonemelter
#range 25
#pathlevel 1 1
#end
#selectspell 526 --weakness
#nreff 1000
#end
#selectspell 859 --unravelling
#pathlevel 0 5
#fatiguecost 400
#end
#selectspell 560 --lightning resistance
#aoe 1012
#end
#selectspell 554 --cold resistance
#aoe 1012
#end
#selectspell 558 --fire resistance
#aoe 1012
#end
#selectspell 806 --fire ward
#aoe 1013
#end
#selectspell 810 --winter ward
#aoe 1013
#end
#selectspell 805 --poison ward
#aoe 1013
#end
#selectspell 807 --thunder ward
#aoe 1013
#end
#selectspell 574
#aoe 1002
#end
#newspell 
#name "doublehorror"
#researchlevel -1
#effect 601
#damage 261
#spec 8536064
#range 50
#nreff 1
#end
#selectspell 622 --spirit curse
#nextspell "doublehorror"
#descr "The caster summons a malign spirit from the underworld and coerces it to curse an enemy. The curse is twofold, as it leaves the target prone to injuries and marks him for attention from otherworldly beings."
#end
---------------
--- Summons ---
---------------
---Fire
#selectmonster 2626 -Flame Spirit
#gemprod 0 1
#descr "Flame Spirits can sometimes be found roaming in hot regions. They burn intensely and are always accompanied by a few Will o' the Wisps who thrive in the magic heat that surrounds the Flame Spirits.  Flame Spirits are skilled fire mages, and can summon more of their kind over time."
#end
-- Summon Fire Drake --
-- -2 Gemcost
#selectspell 654
#fatiguecost 500
#end
#selectspell 673 --Summer Lions
#nreff 1004
#descr "The caster summons and binds several Summer Lions. The Summer Lion is one of the four seasonal spirits. It is a large, ethereal lion, radiating heat like the summer sun. It is a magical, mindless being that must be commanded by a mage."
#end
#selectmonster 515
#prot 7
#end
#selectspell 796 --Terracotta Army
#nreff 3013
#end
#selectmonster 2134
#clearweapons
#weapon 2
#end
---Earth
#selectspell 661 --cave drake
#fatiguecost 400
#end
#selectspell 756 --Crusher
#fatiguecost 1000
#spec 8388608 -- UW cast
#end
#selectmonster 475
#weapon 562
#siegebonus 30
#end
#selectspell 752 --Clockwork Soldiers
#fatiguecost 600
#end
#selectmonster 2321
#reinvigoration -10
#prot 20
#ap 12
#end
#selectmonster 982 --Clockwork Horrors
#reinvigoration -12
#end
#selectspell 832 --Enliven Statues
#fatiguecost 1500
#end
#selectmonster 512 -Fall Bear
#weapon 322 --bite
#prot 10
#end
#selectspell 686
#nreff 1005
#descr "The caster summons and binds several Fall Bears. The Fall Bear is one of the four seasonal spirits. It is a large, ethereal bear. It is a magical, mindless being that must be commanded by a mage."
#end
#selectspell 833 --Hidden in sand
#fatiguecost 5500
#end
#selectmonster 1978-- Dust Priest
#pooramphibian
#end
#selectmonster 1979 -- Dust King
#pooramphibian
#end
#selectmonster 1980 -- Dust Warrior
#pooramphibian
#end
#selectmonster 1981 -- Dust Walker
#pooramphibian
#end
-Hidden underneath
#selectspell 1028
#fatiguecost 5500
#spec 8388608 -- UW cast
#end
-- Iron Dragon
#selectspell 764
#effect 10021
#descr "The caster makes a mechanical dragon covered with thick iron plates. The iron dragon is tremendously large, almost invulnerable and unaffected by heat, cold, shock and poison. They are able to fly and can trample smaller beings. In its iron belly a furnace of magic flames waits to be released upon its enemies. Should the dragon be destroyed the magical furnace will explode and kill everyone near the iron monstrosity. "
#fatiguecost 2000
#spec 8388608 -- UW cast
#end
#selectmonster 531
#noleader
#end
#selectspell 761 -Mechanical Men
#nreff 2008
#end
#selectmonster 532
#prot 19
#end
#selectspell 763 -- Siege Golem 
#fatiguecost 1000
#researchlevel 7
#spec 8388608 -- UW cast
#end
#selectweapon 574 --shatterfist
#att 3
#end
#selectspell 705 --Troll King
#fatiguecost 4500
#end
#selectspell 687 --Trolls
#fatiguecost 1000
#end
---Air
#selectspell 637 --Amphiptere
#fatiguecost 400
#end
#selectmonster 1412
#prec 12
#end
#selectspell 678 --Draconians
#fatiguecost 4000
#end
#selectmonster 593
#weapon 408 
#prot 12
#end
#selectmonster 620
#weapon 408
#prot 13
#end
#selectspell 675 --spring hawks
#nreff 2006
#fatiguecost 3000
#descr "The caster summons and binds Spring Hawks.  The Spring Hawk is one of the four seasonal spirits.  It is a large, ethereal bird that discharges lightning bolts.  It is a magical, mindless being that must be commanded by a mage."
#end
#selectmonster 513
#prot 2
#end
#selectmonster 520 --Wyvern
#size 4
#prot 13
#weapon 408
#end
---Water
#newmonster 6308
#copystats 564
#spr1 "./summod/Troll_Ambassador_1.tga"
#spr2 "./summod/Troll_Ambassador_2.tga"
#hp 56
#clearweapons
#weapon 238
#gcost 150
#armor 22
#giftofwater 80
#okleader
#name "Troll Ambassador"
#poisonarmor
#descr "A noble Sea Troll is visiting the nation indefinitely. Perhaps foolishly, the Sea Troll Courts hope that with this show of strength and might, they may receive favor when the Pretender God ascends to godhood. This ambassador is able to bring the troops he commands beneath the waves. Sea Trolls are robust humanoid creatures of immense size. They are larger than ordinary trolls, but their skin is softer. Sea trolls are known to regenerate wounds and they can enter the sea."
#end
#selectspell 718 --asp turtle
#fatiguecost 800
#end
#selectspell 720 --Catoblepas
#fatiguecost 1000
#end
#selectspell 788 --claymen
#fatiguecost 1000
#nreff 3013
#end
#selectmonster 2159 -- Gelatinous Cube --
#ap 6
#heal
#end
#selectspell 798
#fatiguecost 300
#end
#selectspell 830 -- Hidden in snow
#fatiguecost 5500
#end
#selectmonster 1200 -- Unfrozen Mage
#pooramphibian
#end
#selectmonster 1201-- Unfrozen Lord
#pooramphibian
#end
#selectmonster 1202 -- Unfrozen Warrior
#pooramphibian
#end
#selectmonster 1203 -- Unfrozen
#pooramphibian
#end
#selectspell 659 --icedrake
#fatiguecost 500
#end
#selectspell 703 -Kokythiad
#fatiguecost 3500
#end
#selectspell 683 -Naiad
#fatiguecost 3000
#end
#selectspell 684 -Naiad warriors
#fatiguecost 2000
#end
#selectspell 702 -Sea King
#fatiguecost 4500
#end
#selectspell 681 -Sea Trolls
#fatiguecost 1000
#end
#selectmonster 564 -Sea Troll
#clearweapons
#weapon 29 
#weapon 29
#end
#newmonster 6304--unsettled watcher
#copystats 768
#copyspr 768
#name "Unsettled Watcher"
#clearspec
#pooramphibian
#slashres
#pierceres
#magicbeing
#inanimate
#neednoteat
#mor 50
#stonebeing
#mapmove 1
#ap 2
#hp 35
#prot 15
#descr "Watchers are usually placed at a high place with a view over the surrounding landscape and given the task of guarding a province from prying eyes.  Watchers have incredible vision and count as fifty soldiers when patrolling a province.  They can blast enemies with lightning. This watcher is ready to be transported to a destination no more than one month away."
#firstshape 768
#end
#newmonster 6305 --unsettled watcher
#copystats 768
#copyspr 768
#name "Unsettled Watcher"
#clearspec
#pooramphibian
#slashres
#pierceres
#magicbeing
#inanimate
#neednoteat
#mor 50
#stonebeing
#mapmove 1
#ap 2
#hp 35
#prot 15
#descr "Watchers are usually placed at a high place with a view over the surrounding landscape and given the task of guarding a province from prying eyes.  Watchers have incredible vision and count as fifty soldiers when patrolling a province.  They can blast enemies with lightning. This watcher is ready to be transported to a destination."
#firstshape 6304
#end
#selectmonster 768--watcher
#weapon 562
#end
#selectspell 808
#effect 1
#damage 6305
#spec 8388608
#descr "The mage creates a stone statue and gives it awareness and magical powers.  The Watcher must be transported to it's destination shortly after being created, where it will be given the task of guarding a landscape from prying eyes.  They have incredible vision and count as fifty soldiers when patrolling a province, but must be lead by a mage to function.  They can blast enemies with lightning, or swing at them with their stony fists if they approach the Watcher's pedestal."
#end
#selectspell 682 --winterwolves
#nreff 2004
#fatiguecost 2004
#descr "The caster summons and binds several Winter Wolves. The Winter Wolf is one of the four seasonal spirits. It is a large, ethereal wolf surrounded by an icy wind. It is a magical, mindless being that must be commanded by a mage."
#end
#selectmonster 511 
#prot 4
#hp 16
#end
#selectspell 640 --summon yetis
#fatiguecost 1200
#end
---Astral
#selectspell 744 --Abomination
#fatiguecost 1500
#end

#selectspell 737 --eater of the dead
#researchlevel 6 --testfix
#fatiguecost 2500  --testfix
#pathlevel 0 3
#pathlevel 1 2
#effect 10089
#damage 994
#end
#selectmonster 994
#shockres 5
#fireres 5
#pierceres
#mr 20
#hp 210
#end
#selectmonster 995
#shockres 5
#fireres 5
#acidshield 8
#pierceres
#mr 20
#regeneration 12
#hp 260
#end
#selectmonster 996
#shockres 3
#fireres 3
#acidshield 10 
#slimer 1
#pierceres
#mr 20
#hp 350
#regeneration 15
#end
#selectmonster 997
#shockres 5
#fireres 5
#acidshield 20 
#slimer 2
#mr 22
#pierceres
#hp 500
#regeneration 20
#indepmove 90
#clearweapons
#weapon 90
#weapon 1417
#weapon 90
#weapon 63
#weapon 284
#end
#selectspell 707 --ether gate
#fatiguecost 6500
#end
#selectspell 762 --golem
#fatiguecost 2500
#end
#selectspell 766 -- Juggernaut Construction
#fatiguecost 1000
#end
#newmonster 6306
#name "Unsettled Telestic Animate"
#copystats 473
#copyspr 473
#clearspec
#holy
#bluntres
#pierceres
#magicbeing
#inanimate
#neednoteat
#noheal
#descr "A telestic animate is a wooden statue with a golden plate inscribed with holy names on its forehead.  The divine names grant the statue the ability to speak the Will of God.  It can only move for one month after being constructed."
#mapmove 1
#ap 1
#firstshape 473
#end
#newmonster 6307
#name "Unsettled Telestic Animate"
#copystats 473
#copyspr 473
#clearspec
#holy
#bluntres
#pierceres
#magicbeing
#inanimate
#neednoteat
#noheal
#descr "A telestic animate is a wooden statue with a golden plate inscribed with holy names on its forehead.  The divine names grant the statue the ability to speak the Will of God.  It can only move for one month after being constructed."
#mapmove 1
#ap 1
#firstshape 6306
#end
#selectspell 910
#effect 10021
#damage 6307
#spec 8388608
#descr "The mage crafts a statue and places a golden plate inscribed with divine names in its head.  The statue is thus animated by divine power and will speak the will of the pretender god.  The statue has great priestly powers, but is only capable of locomotion for its first month of existence."
#end
---Death
-- Arouse Hunger --
-- +2 Ghouls per cast
#selectspell 547
#nreff 3006
#descr "The necromancer curses twenty beings in a far away province with undeath. The victims will become ghouls that serve the necromancer."
#end
#selectmonster 185 --Bane
#hp 25
#end
#selectspell 646
#fatiguecost 600
#end
#selectspell 803 -- Behemoth
#fatiguecost 800
#end

#selectmonster 1236 --leviathan
#ap 6
#mapmove 2
#end
#selectspell 849
#fatiguecost 1000
#end

#selectspell 767 --summon poison golem
#effect 10021
#damage 6301
#fatiguecost 2500
#path 0 5
#path 1 3
#pathlevel 0 4
#pathlevel 1 2
#end

#selectmonster 1099
#banefireshield 10
#fear 10
#leper 10
#maxage 3000
#pierceres
#slashres
#descr "A poison golem is a metal giant made of dark alloys from the Underworld. The poison golem is made for a single purpose, destruction, and its mere presence is harmful to the living. The very land in which it stays will slowly wither and die. The construct is always surrounded by sickly green flames of the Underworld, and can travel through the underwo outside of battle, improving its ability to avoid difficult terrain."
#end

#newmonster 6300
#copystats 1099
#copyspr 1099
#firstshape 6301
#end

#newmonster 6301
#copystats 1099
#copyspr 1099
#teleport
#shrinkhp 900
#end

#selectspell 817 -- Pale Riders
#spec 8388608 -- UW+
#end

#selectspell 775 -- Reanimation
#fatiguecost 100
#nreff 4
#end

#selectspell 837 -- Reanimate Archers
#fatiguecost 1000
#nreff 2016
#end

#selectweapon 199 --banefire bow
#armorpiercing
#end

#selectspell 792 -- Revenant
#spec 8388608 -- UW+
#end

#selectspell 782 -- Revive King
#spec 8388608 -- UW+
#end

#selectspell 645 -- Revive Wights
#fatiguecost 1200
#end

#selectspell 838 -- Ziz
#pathlevel 1 1
#end

---Nature
#selectspell 619 --summon animals
#fatiguecost 800
#end
#selectspell 725 --animal horde
#fatiguecost 1800
#end
#selectspell 649 --ambush of tigers
#nreff 2010
#end
#selectmonster 1140
#stealthy 40
#end
#selectmonster 633 --Werewolf (Call of the Wild)
#hp 25
#end
#selectmonster 2229 -Forest Giant
#weapon 609
#def 11
#end
#selectspell 710-Forest troll tribe
#fatiguecost 3300
#end
#selectmonster 2220
#stealthy 40
#end
#selectmonster 2219
#stealthy 40
#end
#selectspell 695-Forest Trolls
#fatiguecost 700
#end
#selectspell 715 -Lamia queen
#fatiguecost 2000
#end
#selectspell 757 -Lumber Construct
#fatiguecost 400
#end
#selectmonster 476
#siegebonus 10
#end
#selectspell 754 -Manikin
#fatiguecost 2000
#nreff 4012
#end
#selectspell 758 -Mandragora
#fatiguecost 800
#end
#selectspell 648 --pride of lions
#nreff 3007
#end
#selectspell 669 -Kithaironic Lion
#pathlevel 0 2
#fatiguecost 600
#nreff 2
#descr "The caster summons a pair of Kithaironic Lions and binds them to his service.  Lions are large and have iron-like hides."
#end
#selectmonster 514
#prot 20
#end
#selectmonster 559 --Sleeper
#holy
#end
#selectmonster 694 --Sloth of bears
#weapon 322
#end
#selectspell 651 --vine men
#nreff 5
#end
#selectspell 666 ---  vine ogres
#nreff 3
#end
#selectspell 668 -- Summon Swamp Drake 
#fatiguecost 600
#end
#selectspell 748 -- Tarrasque  -5 Gemcost, summon as a commander instead of a unit, improved stats
#fatiguecost 2000
#effect 10089
#damage 925
#researchlevel 6
#end
#selectmonster 925
#heal
#unique
#prot 20
#noleader
#clearweapons
#weapon 600
#weapon 29
#weapon 535
#weapon 532
#digest 3
#aciddigest 2
#enc 2
#slashres
#pierceres
#bluntres
#coldres 2
#fireres 2
#shockres 2
#descr "The Tarrasque is an ancient, poison-breathing dragon of tremendous size.  It has been reawakened by some mad mage who hopes that it will aid him in battle.  The tarrasque regenerates wounds, has an incredibly thick hide, devours those it attacks.  The simplest way to defeat the Tarrasque is to summon it to your side."
#end

---Blood
#selectspell 993 --blood rite
#nreff 7
#end
#selectspell 964 -Crossbreeding
#fatiguecost 1200
#end
#selectspell 1003 -Improved Crossbreeding
#fatiguecost 1600
#end
#selectspell 979 --dark vines
#fatiguecost 3000
#nreff 5
#end
#selectmonster 2794 --demonic locust
#heretic 2
#end
#selectmonster 304 --Devil
#fireshield 6
#end
#selectspell 985 --5 gates
#fatiguecost 2400
#end
#selectmonster 638-Spine Devil
#prec 11
#descr "Spine devils are spine-covered demons summoned from the Abyss by sacrificing virgins. The spines covering their bodies are venemous and anyone attacking them with short weapons may get pricked and poisoned. They fight by throwing their spines or slashing with their venemous claws."
#weapon 1418
#end
#selectspell 955
#nreff 3
#fatiguecost 1200
#descr "The caster sacrifices several blood slaves to contact and bind three spine devils.  Spine devils are spine-covered demons summoned from the Abyss by sacrificing virgins. The spines covering their bodies are venemous and anyone attacking them with short weapons may get pricked and poisoned. They fight by throwing their spines or slashing with their venemous claws."
#end
#selectmonster 526 -Serpent Fiend
#str 16
#att 15
#end
#selectspell 966
#fatiguecost 1200
#nreff 3
#descr "The caster sacrifices several blood slaves to contact and bind three Serpent Fiends.  Serpent Fiends are bat-winged, serpent-like demons summoned from the abyss.  Their bite is highly venemous."
#end
#selectspell 977 --succubus
#fatiguecost 4400
#end
-------nations-------
----EA Nerfed Nations
---- Lanka
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your Bandar, sanhyabalas, and samanishada received a slight discount.  However, your Dakini are 33% more expensive to summon, and independent priests you recruit will have a higher upkeep cost.  This message will repeat for one turn, and save to your province history for reference."
#req_fornation 26 
#req_owncapital 1
#req_unique 1
#end
#selectnation 26 ---lanka
#end
#selectspell 369 --summon dakini
#fatiguecost 6600
#end
#selectspell 368 --summon sanhyabalas
#nreff 4
#end
#selectspell 370 --summon samanishada
#fatiguecost 3000
#pathlevel 0 2
#end
#selectmonster 1762 -- Bandar Warrior
#gcost 10017
#end
#selectmonster 1130 --Light Bandar Archer
#gcost 10017
#end
#selectmonster 240
#descr "Priests sometimes accompany armies, inspiring and blessing the soldiers.  Priests can also banish undead beings and demons.  Some priests hired to reanimate corpses may require extra pay to qualm their moral opposition."
#end
#newmonster 6351
#copystats 240
#copyspr 240
#gcost 150
#descr "Priests sometimes accompany armies, inspiring and blessing the soldiers.  Priests can also banish undead beings and demons.  This priest is receiving much higher monthly wages to convince him to engage in reanimating corpses."
#end
#newevent ---Bribe
#rarity 5
#nation -2
#req_fornation 26
#req_monster 240
#req_targmnr 240
#transform 6351
#msg "Priest bribed"
#nolog
#notext
#end
#newevent ---Bribe
#rarity 5
#nation -2
#req_fornation 34
#req_monster 240
#req_targmnr 240
#transform 6351
#msg "Priest bribed"
#nolog
#notext
#end
#newevent ---Bribe
#rarity 5
#nation -2
#req_fornation 35
#req_monster 240
#req_targmnr 240
#transform 6351
#msg "Priest bribed"
#nolog
#notext
#end
--- Xibalba
#selectnation 31 --xibalba
#end
#selectmonster 2668 --Xibalban Warrior (EA)
#gcost 8
#clearweapons
#weapon 1415
#end
#selectmonster 2669
#gcost 8
#end
#selectmonster 1357 --beastbat
#castledef -1
#end
#selectmonster 2679 -- Ah Nakom
#gcost 75
#incunrest 4
#end
#selectmonster 2736 --onaqui
#incunrest 7
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your 7 gold zotz are now 8 gold, and cost a minimum of 2 resources.  Beastbats are no longer as effective at siege defense.  Your bloodhunters will produce slightly more unrest, and Ah Nakom cost +5 gold.  This message will repeat for one turn, and save to your province history for reference."
#req_fornation 31 
#req_owncapital 1
#req_unique 1
#end
---Therodos
--removed pending patch.  See v.34 and earlier for changes; alternatively reference thed dudes work
----EA: Buffed Nations------
----Abysia
#selectnation 13 --abysia
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  In addition to improvements to your anathements, you have several changes to summons.  You can now summon magma children in caves, scorpion men can be summoned as commanders, and you have a custom crossbreeding spell.  The crossbreeding spell produces abysian themed summons.  Promoting demonspawn to commanders allows them to lead misbred or sometimes even cast spells, but be warned that this process is lethal for afflicted demonspawn.  This message will repeat for one turn, and save to your province history for reference."
#req_fornation 13 
#req_owncapital 1
#req_unique 1
#end
#selectspell 196 --summon scorpion man
#effect 10021 --summons as commander instead of as unit
#fatiguecost 1000
#end
#selectmonster 1649 --scorpion man
#itemslots 13446
#end
#selectmonster 1699--anathemant dragon
#gcost 10000
#startage 31
#custommagic 23552 50
#descr "The Anathemant caste was formed by the Anointed of Rhuax to perform the many ceremonies of the Flame Cult.  These sacral mages administer the procession, ceremonies and sacrifices in the lesser temples of the kingdom.  In the Temple of the All-Consuming Flame they serve the Anointed Ones at the High Sacrifices of the Inner Fire where Anathemant Salamanders are not allowed.  Anathemant Dragons are Abysians and radiate the hellish heat characteristic of their race.  Some Anathemants have training in other magical paths."
#end
#selectmonster 1698--anathemant salamander 
#custommagic 23552 10
#gcost 10000
#startage 28
#maxage 35
#end
#selectmonster 1536 -- Annointed of Rhuax
#clearmagic
#magicskill 0 4
#magicskill 3 1
#magicskill 8 3
#custommagic 19584 50
#end
#selectmonster 1661 --misbred
#douse 1
#end
#selectmonster 1536 --ea demonbred
#douse 1
#end
#newmonster 6900	 #copystats 1661 #name "Demonspawn"		 #copyspr 1661		 	#descr "Deep in the Smouldercone, the Warlocks of Abysia experiment with their brethren to create superior beings.  The least flawed Demonspawn are selected as part of the Demonbred program, and the remainder are known as Misbred.  Demonspawn radiate the hellish heat characteristic of Abysians, but must be led by a mage or commander with undead leadership.  Some Demonspawn have a talent for magic."	 	#poorundeadleader #startaff 75	 #custommagic 16384 50			#douse 1						 		 #montag 1303 
#end				
#newmonster 6901	 #copystats 983	 #name "Humanspawn"		 #copyspr 983		#descr "Deep in the Smouldercone, the Warlocks of Abysia experiment with their brethren to create superior beings.  The Humanspawn frequently result from such experiments.  They breed true and grow quickly, making them useful in warfare.  They share the Abysian resistance to heat, but their flesh is cooler and will will not incinerate their own equiment.  The least flawed on the Humanspawn may serve as breeding stock for the Humanbred program."		 		 #slave	 #startaff 20	 #gcost 4	 #mor 10							 		 #montag 1303 
#end			
#newmonster 6902	 #copystats 1972	 #name "Battlespawn"	 #spr1 "./summod/warspawn_1.tga"	 #spr2 "./summod/warspawn_2.tga"		#descr "Deep in the Smouldercone, the Warlocks of Abysia experiment with their brethren to create superior beings.  Battlespawn are part of a breeding program to create larger, stronger specimens.  Intelligence has been difficult to retain with size."		#transformation 0 		 #startaff 20	 #clearweapons	 #weapon 165	 #cleararmor	 #armor 6	 #armor 20	 #darkvision 50	 #prot 2	 #berserk 1	 #gcost 10	 		 #montag 1303 
#end			
#newmonster 6903		 #name "Foul Spawn"	 #spr1 "./summod/foulspawn_1_1.tga"	#spr2 "./summod/foulspawn_1_2.tga"	#hp 12 #gcost 1	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#weapon 43	#weapon 29	#mor 10	#mr 10	#wastesurvival	#att 10	#str 13	#def 8	#prec 9	#maxage 100	#fireres 15	#heat 3	#coldres -5	#undisciplined	#prot 6	#undisciplined	#mapmove 2	#montag 1303 
#end
#newmonster 6904		 #name "Foul Spawn"	 #spr1 "./summod/foulspawn_2_1.tga"	#spr2 "./summod/foulspawn_2_2.tga"	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."	#hp 12	#str 12	#mor 11	#att 10	#def 8	#prec 9	#maxage 100	#coldres -5	#fireres 15	#mr 10	#prot 3	#undisciplined	#ap 10	#enc 2	#maxage 100	#coldres -5	#fireres 15	#mr 10	#prot 3	#undisciplined #ap 10 #enc 2 #wastesurvival #weapon 383 #weapon 85 #montag 1303 
#end
#newmonster 6905	 #copystats 454	 #name "Foul Spawn"	 #spr1 "./summod/foulspawn_3_1.tga"	 #spr2 "./summod/foulspawn_3_2.tga"		 #gcost 2	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."	 		 #hp 13	 #str 12	 #mr 10	 #fireres 15	 #heat 3	 #maxage 40	#transformation 0 #wastesurvival				 		 #montag 1303 
#end			
#newmonster 6906	 #copystats 457	 #name "Foul Spawn"	 #spr1 "./summod/foulspawn_4_1.tga"	 #spr2 "./summod/foulspawn_4_2.tga"		 #gcost 2	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."	 		 #hp 12	 #str 14	 #mr 10	 #fireres 5	 #prot 3	 #maxage 40	#transformation 0 #wastesurvival				 		 #montag 1303 
#end			
#newmonster 6907	 #copystats 456	 #name "Foul Spawn"	 #spr1 "./summod/foulspawn_5_1.tga"	 #spr2 "./summod/foulspawn_5_2.tga"		 #gcost 2	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."	#transformation 0 		 #hp 15	 #str 14	 #mr 10	 #fireres 5	 #prot 3	 #maxage 40	 #wastesurvival	 #montag 1303 
#end								
#newmonster 6908		 #name "Foul Spawn"	 #spr1 "./summod/foulspawn_6_1.tga"	 #spr2 "./summod/foulspawn_6_2.tga"		 #gcost 2	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."	#transformation 0 		 #hp 25	 #str 15	 #weapon 85	 #weapon 537	 #fireres 10	 #prot 10	 #mr 14	 #mor 15	 #undisciplined	 #def 12	 #prec 10	 #ap 13	 #mapmove 2	 #darkvision 100	 #poisonarmor	 #enc 3 #montag 1303 
#end
#newmonster 6909		 #name "Foul Spawn"	 #spr1 "./summod/foulspawn_7_1.tga"	 #spr2 "./summod/foulspawn_7_2.tga"		 #gcost 2	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."	#transformation 0 		 #hp 22	 #str 15	 #weapon 65	#weapon 346 #att 14	 #fireres 10	#poisonres 10	 #prot 6	 #mor 15	 #undisciplined	 #mr 14	 #prec 10	 #ap 13	#mapmove 2	 #def 11	 #wastesurvival	 #darkvision 100 #enc 3 #montag 1303 
#end
#newmonster 6910	 #copystats 458	 #name "Foul Spawn"	 #spr1 "./summod/foulspawn_8_1.tga"	 #spr2 "./summod/foulspawn_8_2.tga"		 #gcost 1	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."	#transformation 0 		 #hp 12	 #str 13	 #mr 10	 #fireres 5	 #berserk 3	 #maxage 40					 		 #montag 1303 
#end			
#newmonster 6911	 #copystats 455	 #name "Foul Spawn"	 #spr1 "./summod/foulspawn_9_1.tga"	 #spr2 "./summod/foulspawn_9_2.tga"		 #gcost 1	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."	 #transformation 0 		 #hp 13	 #str 13	 #mr 10	 #fireres 5	 #prot 3	 #maxage 40					 		 #montag 1303 
#end			
#newmonster 6912	 #copystats 530	 #copyspr 530	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Foul Spawn"		#firstshape 530	 #montag 1303 
#end											 					
#newmonster 6913	 #copystats 467	 #copyspr 467	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Foul Beast"		#firstshape 467	 #montag 1303 
#end											 					
#newmonster 6914	 #copystats 659	 #copyspr 659	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Grotesque"		#firstshape 659	 #montag 1303 
#end											 					
#newmonster 6915	 #copystats 487	 #copyspr 487	#transformation 0 	#descr "The horrible result of a cross-breeding experiment, the chimera has the body of a lion, the tail of a snake, the wings of a bat, and the heads of a lion and goat, through which it can breathe fire like a dragon."		#name "Chimera"		#firstshape 487	 #montag 1303 
#end																
#newmonster 6916	 #copystats 468	 #copyspr 468	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Foul Spawn"		#firstshape 468	 #montag 1303 
#end																
#newmonster 6917	 #copystats 468	 #copyspr 468	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Foul Spawn"		#firstshape 468	 #montag 1303 
#end																
#newmonster 6918	 #copystats 468	 #copyspr 468	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Foul Spawn"		#firstshape 468	 #montag 1303 
#end																
#newmonster 6919	 #copystats 468	 #copyspr 468	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Foul Spawn"		#firstshape 468	 #montag 1303 
#end																
#newmonster 6920	 #copystats 468	 #copyspr 468	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Foul Spawn"		#firstshape 468	 #montag 1303 
#end																
#newmonster 6921	 #copystats 468	 #copyspr 468	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Foul Spawn"		#firstshape 468	 #montag 1303 
#end																
#newmonster 6922	 #copystats 468	 #copyspr 468	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Foul Spawn"		#firstshape 468	 #montag 1303 
#end																
#newmonster 6923	 #copystats 468	 #copyspr 468	#transformation 0 	#descr "Horrible results of cross-breeding experiments, few foulspawn look alike.  They sometimes possess strange abilities such as waterbreathing or regeneration."		#name "Foul Spawn"		#firstshape 468	 #montag 1303 
#end																
#newmonster 6924	 #name "Demonspawn"	#copystats 6900 #copyspr 983 	#firstshape 6900	#montag 1303 
#end																					
#newmonster 6925	 #name "Demonspawn"	#copystats 6900 #copyspr 983 	#firstshape 6900	#montag 1303 
#end																					
#newmonster 6926	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																					
#newmonster 6927	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																					
#newmonster 6928	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																					
#newmonster 6929	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																					
#newmonster 6930	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																					
#newmonster 6931	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																					
#newmonster 6932	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																					
#newmonster 6933	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																				
#newmonster 6934	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																					
#newmonster 6935	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																					
#newmonster 6936	 #name "Humanspawn"	#copystats 6901 #copyspr 983 	#firstshape 6901	#montag 1303 
#end																					
#newmonster 6937	 #name "Battlespawn"	#copystats 6902 #copyspr 6902	#firstshape 6902	#montag 1303 
#end																					
#newevent #nation -2	#msg "One of the Anathements has noted that the fires of The Smouldercone seem slightly suppressed this month.  The Warlocks explained that this is part of a naturally occurring cycle, and is not related to the use of blood magic.  For reasons entirely unrelated to your ongoing endorsement of their breeding program, they have donated a small sum of gold to the treasury." #gold 50 #rarity 5 #req_rare 10 #req_unique 1 #req_owncapital 1 #req_monster 6901 #incscale 2 
#end																							
#newmonster 6938	 #name "Battlespawn"	#copystats 6902 #copyspr 6902	#firstshape 6902	#montag 1303 
#end																					
#newmonster 6939	 #name "Foul Spawn"	#copystats 6903 #copyspr 6903 #firstshape 6903 #montag 1303 
#end																							
#newmonster 6940	 #name "Foul Spawn"	#copystats 6903 #copyspr 6903 #firstshape 6903 #montag 1303 
#end																							
#newmonster 6941	 #name "Foul Spawn"	#copystats 6903 #copyspr 6903 #firstshape 6903 #montag 1303 
#end																							
#newmonster 6942	 #name "Foul Spawn"	#copystats 6903 #copyspr 6903 #firstshape 6903 #montag 1303 
#end																							
#newmonster 6943	 #name "Foul Spawn"	#copystats 6903 #copyspr 6903 #firstshape 6903 #montag 1303 
#end																							
#newmonster 6944	 #name "Foul Spawn"	#copystats 6903 #copyspr 6903 #firstshape 6903 #montag 1303 
#end																							
#newmonster 6945	 #name "Foul Spawn"	#copystats 6904 #copyspr 6904 #firstshape 6904 #montag 1303 
#end																							
#newmonster 6946	 #name "Foul Spawn"	#copystats 6904 #copyspr 6904 #firstshape 6904 #montag 1303 
#end																							
#newmonster 6947	 #name "Foul Spawn"	#copystats 6904 #copyspr 6904 #firstshape 6904 #montag 1303 
#end																							
#newmonster 6948	 #name "Foul Spawn"	#copystats 6904 #copyspr 6904 #firstshape 6904 #montag 1303 
#end																							
#newmonster 6949	 #name "Foul Spawn"	#copystats 6904 #copyspr 6904 #firstshape 6904 #montag 1303 
#end																							
#newmonster 6950	 #name "Foul Spawn"	#copystats 6905 #copyspr 6905 #firstshape 6905 #montag 1303 
#end																							
#newmonster 6951	 #name "Foul Spawn"	#copystats 6905 #copyspr 6905 #firstshape 6905 #montag 1303 
#end																							
#newmonster 6952	 #name "Foul Spawn"	#copystats 6905 #copyspr 6905 #firstshape 6905 #montag 1303 
#end					 																		
#newmonster 6953	 #name "Foul Spawn"	#copystats 6905 #copyspr 6905 #firstshape 6905 #montag 1303 
#end																							
#newmonster 6954	 #name "Foul Spawn"	#copystats 6905 #copyspr 6905 #firstshape 6905 #montag 1303 
#end																							
#newmonster 6955	 #name "Foul Spawn"	#copystats 6905 #copyspr 6905 #firstshape 6905 #montag 1303 
#end																							
#newmonster 6956	 #name "Foul Spawn"	#copystats 6906 #copyspr 6906 #firstshape 6906 #montag 1303 
#end																							
#newmonster 6957	 #name "Foul Spawn"	#copystats 6906 #copyspr 6906 #firstshape 6906 #montag 1303 
#end																							
#newmonster 6958	 #name "Foul Spawn"	#copystats 6906 #copyspr 6906 #firstshape 6906 #montag 1303 
#end																							
#newmonster 6959	 #name "Foul Spawn"	#copystats 6906 #copyspr 6906 #firstshape 6906 #montag 1303 
#end																							
#newmonster 6960	 #name "Foul Spawn"	#copystats 6906 #copyspr 6906 #firstshape 6906 #montag 1303 
#end																							
#newmonster 6961	 #name "Foul Spawn"	#copystats 6906 #copyspr 6906 #firstshape 6906 #montag 1303 
#end																							
#newmonster 6962	 #name "Foul Spawn"	#copystats 6907 #copyspr 6907 #firstshape 6907 #montag 1303 
#end																							
#newmonster 6963	 #name "Foul Spawn"	#copystats 6907 #copyspr 6907 #firstshape 6907 #montag 1303 
#end																							
#newmonster 6964	 #name "Foul Spawn"	#copystats 6907 #copyspr 6907 #firstshape 6907 #montag 1303 
#end																							
#newmonster 6965	 #name "Foul Spawn"	#copystats 6907 #copyspr 6907 #firstshape 6907 #montag 1303 
#end																							
#newmonster 6966	 #name "Foul Spawn"	#copystats 6907 #copyspr 6907 #firstshape 6907 #montag 1303 
#end																							
#newmonster 6967	 #name "Foul Spawn"	#copystats 6907 #copyspr 6907 #firstshape 6907 #montag 1303 
#end																							
#newmonster 6968	 #name "Foul Spawn"	#copystats 6908 #copyspr 6908 #firstshape 6908 #montag 1303 
#end																							
#newmonster 6969	 #name "Foul Spawn"	#copystats 6908 #copyspr 6908 #firstshape 6908 #montag 1303 
#end																							
#newmonster 6970	 #name "Foul Spawn"	#copystats 6908 #copyspr 6908 #firstshape 6908 #montag 1303 
#end																							
#newmonster 6971	 #name "Foul Spawn"	#copystats 6908 #copyspr 6908 #firstshape 6908 #montag 1303 
#end																							
#newmonster 6972	 #name "Foul Spawn"	#copystats 6909 #copyspr 6909 #firstshape 6909 #montag 1303 
#end																							
#newmonster 6973	 #name "Foul Spawn"	#copystats 6909 #copyspr 6909 #firstshape 6909 #montag 1303 
#end																							
#newmonster 6974	 #name "Foul Spawn"	#copystats 6909 #copyspr 6909 #firstshape 6909 #montag 1303 
#end																							
#newmonster 6975	 #name "Foul Spawn"	#copystats 6909 #copyspr 6909 #firstshape 6909 #montag 1303 
#end																							
#newmonster 6976	 #name "Foul Spawn"	#copystats 6910 #copyspr 6910 #firstshape 6910 #montag 1303 
#end																							
#newmonster 6977	 #name "Foul Spawn"	#copystats 6910 #copyspr 6910 #firstshape 6910 #montag 1303 
#end																							
#newmonster 6978	 #name "Foul Spawn"	#copystats 6910 #copyspr 6910 #firstshape 6910 #montag 1303 
#end																							
#newmonster 6979	 #name "Foul Spawn"	#copystats 6910 #copyspr 6910 #firstshape 6910 #montag 1303 
#end																							
#newmonster 6980	 #name "Foul Spawn"	#copystats 6910 #copyspr 6910 #firstshape 6910 #montag 1303 
#end																							
#newmonster 6981	 #name "Foul Spawn"	#copystats 6910 #copyspr 6910 #firstshape 6910 #montag 1303 
#end																							
#newmonster 6982	 #name "Foul Spawn"	#copystats 6910 #copyspr 6910 #firstshape 6910 #montag 1303 
#end																							
#newmonster 6983	 #name "Foul Spawn"	#copystats 6911 #copyspr 6911 #firstshape 6911 #montag 1303 
#end																							
#newmonster 6984	 #name "Foul Spawn"	#copystats 6911 #copyspr 6911 #firstshape 6911 #montag 1303 
#end																							
#newmonster 6985	 #name "Foul Spawn"	#copystats 6911 #copyspr 6911 #firstshape 6911 #montag 1303 
#end																							
#newmonster 6986	 #name "Foul Spawn"	#copystats 6911 #copyspr 6911 #firstshape 6911 #montag 1303 
#end																							
#newmonster 6987	 #name "Foul Spawn"	#copystats 6911 #copyspr 6911 #firstshape 6911 #montag 1303 
#end																							
#newmonster 6988	 #name "Foul Spawn"	#copystats 6911 #copyspr 6911 #firstshape 6911 #montag 1303 
#end																							
#newmonster 6989	 #name "Foul Spawn"	#copystats 6911 #copyspr 6911 #firstshape 6911 #montag 1303 
#end
#newmonster 6990	 #name "Demonspawn"	#copystats 6900 #copyspr 983 	#firstshape 6900	#montag 1303 
#end																					
#newmonster 6991	 #name "Demonspawn"	#copystats 6900 #copyspr 983 	#firstshape 6900	#montag 1303 
#end																					
#newmonster 6992	 #name "Demonspawn"	#copystats 6900 #copyspr 983 	#firstshape 6900	#montag 1303 
#end																					
#newmonster 6993	 #name "Foul Spawn"	#copystats 6904 #copyspr 6904 #firstshape 6904 #montag 1303 
#end																							
#newmonster 6994	 #name "Foul Spawn"	#copystats 6904 #copyspr 6904 #firstshape 6904 #montag 1303 
#end																							
#newmonster 6995	 #name "Foul Spawn"	#copystats 6903 #copyspr 6903 #firstshape 6903 #montag 1303 
#end																							
#newmonster 6996	 #name "Foul Spawn"	#copystats 6905 #copyspr 6905 #firstshape 6905 #montag 1303 
#end																							
	
#selectmonster 87
#darkvision 100
#end
#newmonster 6999
#copystats 1661
#copyspr 1661
#name "Misbred"--misbred
#poorundeadleader
#descr "Deep in the Smouldercone, the Warlocks of Abysia experiment with their brethren to create superior beings.  The least flawed Demonspawn are selected as part of the Demonbred program, and the remainder are known as Misbred.  This Misbred was part of the breeding program, and while he showed promise, ultimately failed to be selected and instead leads other misbred in combat."
#magicboost 7 -1
#end
#newmonster 6998
#copystats 87
#copyspr 87
#name "Demonbred Hunter"
#descr "Deep in the Smouldercone, the Warlocks of Abysia experiment with their brethren to create superior beings.  The Demonbred are the most successful of these beings, and selected from the very best of the Demonspawn.  This Demonspawn showed some affinity for magic, and was selected to aid in finding new experimental subjects by his masters, who he is bound to obey by his nature."
#clearspec
#clearmagic
#hp 17 #str 14 #mr 14 #att 11 #def 9
#heat 3
#fireres 25
#maxage 250
#darkvision 100
#flying
#wastesurvival
#clearweapons
#weapon 29
#cleararmor
#douse 1
#noleader
#gcost 10030
#end
#newmonster 6997
#copystats 1537
#copyspr 1537
#name "Demonbred"
#descr "Deep in the Smouldercone, the Warlocks of Abysia experiment with their brethren to create superior beings.  The Demonbred are the most successful of these beings, and selected from the very best of the Demonspawn, who are bound to obey their masters by nature. This unflawed specimen lacked magical talent, and was sent to the Slayers for training."
#magicboost 7 -1
#end
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	1	--disease
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	4096	--blind
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	262144	--limp
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	524288	--lost eye
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	1048576	--weakness
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	2097152	--battlefright
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	4194304	--mute
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	8388608	--chestwound
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	16777216	--crippled
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	33554432	--feeblemind
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	67108864	--neverhealing
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	1073741824	--armloss
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	1	--disease
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	4096	--blind
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	262144	--limp
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	524288	--lost eye
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	1048576	--weakness
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	2097152	--battlefright
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	4194304	--mute
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	8388608	--chestwound
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	16777216	--crippled
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	33554432	--feeblemind
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	67108864	--neverhealing
#transform 6999 #end 
#newevent  #rarity 5 #nation -2 #req_commander 1 #req_targmnr 6900 #req_targaff 	1073741824	--armloss
#transform 6999 #end 
#newevent #rarity 5 #nation -2 #req_commander -1 #req_targmnr 6900 #req_targpath1 7 #transform 6998 #end
#newevent #rarity 5 #nation -2 #req_commander -1 #req_targmnr 6900 #req_targpath1 7 #transform 6998 #end
#newevent #rarity 5 #nation -2 #req_commander -1 #req_targmnr 6900 #transform 6997 #end			
#newevent #rarity 5 #nation -2 #req_commander -1 #req_targmnr 6900 #transform 6997 #end																	
#newspell
#name "Abysian Crossbreeding"
#restricted 13
#restricted 45
#restricted 71
#school 6
#path 0 7
#pathlevel 0 1
#path 1 4
#pathlevel 1 1
#researchlevel 3
#descr "The Warlocks of Smouldercone are Blood mages of great renown.  They are famed for their experiments in the creation and breeding of new species.  They crossbreed hundreds of different creatures with abysians to create powerful and useful slaves.  Most offspring die early, but some survive and are bound to serve their creator.  While the results are frequently grotesque or deformed, occasionally a warlock will happen upon a resounding success."
#effect 10001
#damage -1303
#nreff 10005
#fatiguecost 1500
#end
#newspell
#name "Improved Abysian Crossbreeding"
#restricted 13
#restricted 45
#restricted 71
#school 6
#path 0 7
#pathlevel 0 2
#path 1 4
#pathlevel 1 2
#researchlevel 8
#descr "The Warlocks of Smouldercone are Blood mages of great renown.  They are famed for their experiments in the creation and breeding of new species.  They crossbreed hundreds of different creatures with abysians to create powerful and useful slaves.  Most offspring die early, but some survive and are bound to serve their creator.  While the results are frequently grotesque or deformed, occasionally a warlock will happen upon a resounding success."
#effect 10001
#damage -1303
#nreff 3029
#fatiguecost 2200
#end
#newspell--children of rhuax r2
#name "Children of Rhuax"
#school 0
#researchlevel 3
#path 0 0
#path 1 3
#pathlevel 0 4
#pathlevel 1 1
#descr "One with the power of an Anointed of Rhuax descends into a cave and beseeches Rhuax for aid.  The Anointed is granted five Children of Magma that will serve him in war."
#effect 10001
#damage 640
#spec 8388608
#nreff 5
#fatiguecost 200
#restricted 13
#restricted 45
#restricted 71
#end
---Ctis
#selectmonster 783 --snek dancer
#end
#selectweapon 318 --snekstaff
#dmg 5
#att 2
#def 3
#secondaryeffect 51
#end
#selectmonster 321
#magicboost 4 1
#magicboost 6 1
#end
---Helheim
#selectnation 21 --helheim
#startcom 1505
#startunittype1 1679
#startunitnbrs1 15
#startunittype2 1508
#startunitnbrs2 10
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your Helkarls now get an Air/Death random.  Your Valkyrie summon is more effective.  Your Draugar are superior to that of other nations, and you can summon them in greater numbers.  This message will repeat for one turn, and save to your province history for reference."
#req_fornation 21
#req_owncapital 1
#req_unique 1
#end
#selectmonster 1502 --helkarl
#okleader
#custommagic 4352 100
#custommagic 4096 10
#end
#selectspell 325 --summon valkyrie
#nreff 10
#end
#selectspell 326
#clear
#name "Awaken Draugar"
#restricted 20
#restricted 50
#restricted 22
#restricted 51
#restricted 75
#restricted 76
#restricted 52
#descr "The Draug is a corporeal undead Van.  They are incredibly strong and can change their size at will or if wounded.  Draugar stink of decay and rotting flesh and are surrounded by ice cold winds.  With this ritual a few Draugar are coerced to leave their mounds and kill the enemies of the realm."
#effect 10001
#damage 2190
#nreff 3
#fatiguecost 1000
#school 0
#researchlevel 4
#path 0 5
#pathlevel 0 2
#end
#newspell
#name "Awaken Draugar"
#restricted 21
#descr "The Draug is a corporeal undead Van.  They are incredibly strong and can change their size at will or if wounded.  Draugar stink of decay and rotting flesh and are surrounded by ice cold winds.  With this ritual a few Draugar are coerced to leave their mounds and kill the enemies of the realm."
#effect 10001
#damage 2192
#nreff 3
#fatiguecost 1000
#school 0
#researchlevel 4
#path 0 5
#pathlevel 0 2
#end
#newspell --Rouse Draugar
#name "Rouse Draugar"
#effect 10001
#damage 2192
#restricted 21
#path 0 5
#pathlevel 0 4
#path 1 1
#pathlevel 1 1
#school 0
#researchlevel 8
#fatiguecost 3000
#nreff 2006
#descr "The Draug is a corporeal undead van.  They are incredibly strong and can change their size at will or if wounded.  Draugar stink of decay and rotting flesh and are surrounded by ice cold winds.  With this ritual, a Hangadrott can coerce a troop of the mightiest Draugar are coerced to leave their mounds and kill the enemies of the realm."
#end
#selectnation 28 --hinnom
#addreccom 2031 --melqart
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Units with popkill are slightly cheaper.  Melqarts are recruit everywhere.  Kohens are better bloodhunters.  Horites throw rocks.  This message will repeat for one turn, and save to your province history for reference."
#req_fornation 28
#req_owncapital 1
#req_unique 1
#end
#selectmonster 2030 --rephaite warrior
#gcost 10080
#end
#selectmonster 2031 --melqart
#gcost 10100
#end
#selectmonster 2032 --ba'al
#douse 2
#gcost 10100
#end
#selectmonster 2018 --horite
#weapon 605
#gcost 10020
#end
#selectmonster 2019 --horite champ
#weapon 605
#gcost 10025
#end
#selectmonster 2034 --horite hunter
#gcost 10023
#end
#selectmonster 2033 --kohen
#okleader
#douse 1
#gcost 10080
#end
#selectnation 25 --kailasa
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Guhyaka Generals are not slow-to-recruit, and your recruitable sacreds were generally improved.  Many of your astral summons were discounted, and Rudra, Devata, and Devala received substantial stat improvements and new autospells.  The Rudra autocasts Wrathful Skies, the Devala Autocasts Celestial Music, and the Devata casts an animal-only antimagic.  Finally, Apsaras now mix better with ranged squads.  This message will repeat for one turn, and save to your province history for reference."
#req_fornation 25 
#req_owncapital 1
#req_unique 1
#end
#selectmonster 2542 --Guhyaka General
#weapon 21
#noslowrec
#gcost 110
#end
#selectmonster 1329
#awe 2
#end
#selectmonster 1326 -Guhyaka
#weapon 21
#descr "A Guhyaka is a lowly Yaksha warrior.  They are semi-divine beings gifted with Celestial Splendor that strikes lowly beings with awe.  Their mystical powers have made them rulers over the Bandar Log and they are sacred to the monkey people.  Guhyakas are armed with spears and javelins"
#end
#selectmonster 1327 --yavana
#gcost 10029
#end
#selectmonster 1328 --yavana archer
#clearweapons
#weapon 10
#weapon 397
#weapon 24
#end
#selectmonster 1333 --Bandar Warrior
#gcost 10017
#end
#selectmonster 1350 --Bandar Swordsmen --"elite statline"
#att 12
#def 10
#hp 20
#prec 10
#end
#selectspell 362 --rudra
#fatiguecost 4500
#end
#selectmonster 1906 --rudra
#hp 48
#str 20
#def 15
#att 17
#prec 15
#prot 4
#onebattlespell 467
#end
#selectspell 360 --devata
#fatiguecost 4000
#end
#newspell
#copyspell 472
#name "Astral Fires"
#end
#selectspell 472
#clear
#copyspell 800
#name "Enlightenment"
#spec 281474989310080
#school -1
#end
#selectmonster 1336 --devata
#hp 40
#prot 2
#str 18
#def 15
#att 15
#okmagicleader
#magicskill 1 3
#magicskill 4 3
#onebattlespell 472
#descr "The Devata is a lesser god of the Celestial Sphere. Devatas once ruled parts of this world, but withdrew to the heavens ages ago. The Devata has a perfect body with four arms and blue skin. It is a powerful mage-priest and a formidable warrior. Devatas are sacred to the monkey people, and the enlightenment they bring can render the monkey people resistant to hostile enchantments."
#end
#selectspell 361 --devala
#fatiguecost 4000
#end
#selectmonster 1713 --devala
#magicskill 4 4
#onebattlespell 363
#end
#selectspell 355 --gandharva
#fatiguecost 1500
#end
#selectnation 11 --Machaka
#startunittype1 2304 -- rhino clan warriors
#startunitnbrs1 15
#startunittype2 2299 -- bird clan
#startunitnbrs2 15
#addforeignunit 2300 --machaka warrior
#addforeignunit 2298 --machaka militia
#addforeigncom 881 --machaka chief
#forestrec 2126 --pygmy
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Spiderclan Sorcerors are not slow to recruit, and some of your light infantry and pygmies were made forest and foreign recruit.  Spiderclan archers, Machakan Warriors, and Spider Riders were discounted.  This message will repeat for one turn, and save to your province history for reference."
#req_fornation 11
#req_owncapital 1
#req_unique 1
#end
#selectmonster 2295 --spiderclan sorceror
#noslowrec
#end
#selectmonster 2298 --machaka milita
#gcost 10007
#end
#selectmonster 2300 --machaka warrior -- cheaper, 
#gcost 10008
#clearweapons
#weapon 315
#end
#selectmonster 2301 --spiderclan archer
#gcost 10013
#end
#selectweapon 519
#rcost 3
#end
#selectmonster 2302 --spider clan warrior
#armor 44
#end
#selectmonster 884 --great spider -- improve.
#gcost 20
#size 4
#str 16
#mr 8
#end
#selectmonster 2308 --spider rider -- improve, size 4
#size 4
#gcost 10020
#end
--EA Sauro
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your warrior sorceresses had their death random removed and were discounted.  Also, your cavalry received discounts.  This message will repeat for one turn, and save to your province history for reference."
#req_fornation 9 
#req_owncapital 1
#req_unique 1
#end
#selectmonster 1167 --lancer--3 gold discount
#gcost 10002
#end
#selectmonster 1168 --raider --3 gold discount
#gcost 10002
#end
#selectmonster 1170 --slancer--3 gold discount
#gcost 10007
#end
#selectmonster 1171 --sraider --3 gold discount
#gcost 10007
#end
#selectmonster 1172 --scataphract 5 gold discount
#gcost 10015
#end
#selectmonster 1173 --s manflayer
#end
#selectmonster 1174 --warrior priestess 20 gold discount
#gcost 10000
#end
#selectmonster 1175 -- warrior queen 20 gold discount
#gcost 10000
#end
#selectmonster 1176 --androphag 15 gold discount
#gcost 10028
#end
#selectmonster 1177 --manflayer
#gcost 10020
#end
#selectmonster 1178 --witchking
#end
#selectmonster 1185 --oiorpata --ten gold discount
#gcost 10015
#end
#selectmonster 1186 --warrior sorceress
#gcost 10000
#okleader
#clearmagic
#magicskill 6 1
#magicskill 8 1
#custommagic 25088 100
#end
#selectmonster 1831 --hydra
#gcost 180
#heal
#end
#selectmonster 1832--hydra
#gcost 180
#firstshape 1831
#heal
#end
#selectmonster 1833--hydra
#gcost 180
#firstshape 1831
#heal
#end
#selectmonster 1834--hydra
#gcost 180
#firstshape 1831
#heal
#end
#selectmonster 1835--hydra
#gcost 180
#firstshape 1831
#heal
#end
#selectmonster 1840--hydra hatchling
#gcost 28
#heal
#end
#selectmonster 1841--hydra hatchling
#gcost 28
#firstshape 1840
#heal
#end
#selectmonster 1842--hydra hatchling
#gcost 28
#firstshape 1840
#heal
#end
---EA UW--
---Add mass airbreathing item spell
---Mass Airbreathing spell ---
#newmonster 6354
#copystats 197
#name "sacrement of limne"
#descr "this unit exists only to provide sacrement to limne"
#immobile
#end
#newspell
#name "Blessing of Limne"
#restricted 84
#restricted 85
#restricted 89
#descr "By performing this ritual, the caster calls upon the favor of Limne in invading the surface world.  They are granted amulets enabling them to go on land."
#school 3
#researchlevel 6
#path 0 2
#pathlevel 0 4
#path 1 0
#pathlevel 1 0
#effect 10001
#damage 6354
#fatiguecost 1000
#nreff 1
#spec 8388608
#end
#newevent
#rarity 5
#req_monster 6344
#nation -2
#magicitem 9
#msg "Amulet of the Fish. [Amulet of the Fish]." #notext #nolog
#end
#newevent
#rarity 5
#req_monster 6344
#nation -2
#magicitem 9
#msg "Amulet of the Fish. [Amulet of the Fish]." #notext #nolog
#end
#newevent 
#rarity 5
#req_monster 6344
#nation -2
#magicitem 9
#msg "Amulet of the Fish. [Amulet of the Fish]." #notext #nolog
#end
#newevent
#rarity 5
#req_monster 6344
#nation -2
#magicitem 9
#msg "Amulet of the Fish. [Amulet of the Fish]." #notext #nolog
#end
#newevent
#rarity 5
#req_monster 6354
#nation -2
#magicitem 9
#msg "Amulet of the Fish. [Amulet of the Fish]." #notext #nolog
#killmon 6344
#end
---atlantis ea
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  You can now recruit a 2.5 path mage in your coastal forts.  This message will repeat for one turn, and save to your province history for reference."
#req_fornation 83 
#req_owncapital 1
#req_unique 1
#end
#newmonster 6350 --Sorceror of the Shallows
#copystats 1692
#name "Shambler Reefmage"
#descr "Shambler Reefmages are the leaders of the coastal communities.  Due to the dangers of becoming a Mage of the Deeps, some shambler mages leave the deeps and join reef communities.  Although they're not as magically powerful, they've impressed the reefdwellers with their strength and serve as leaders to those communities, but are disliked by the rest of the Atlantean magical community.  They can be recruited in coastal castles."
#gcost 10030
#spr1 "./summod/shallowmage1.tga"
#spr2 "./summod/shallowmage2.tga"
#clearmagic
#magicskill 2 1
#custommagic 1664 100
#custommagic 3200 50
#weapon 31
#armor 24
#okleader
#end
#selectnation 83 --atlantis
#coastcom2 6350
#end
---Rlyeh
#selectnation 84 
#coastcom1 1523
#coastunit1 337
#coastunit2 1516
#coastunit3 6331
#uwcom1 1401
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  You now have more extensive coastal recruits, including a slave mermage and an armored human.  Your Aboleths and Mindlords are now significantly cheaper, and have an extra misc slot.  Your androleth and Androdai were discounted, too. Your Mindlords now have an extra random path.  Finally, 5 of your polypal mothers per province can research, and your Grandmothers provide a bonus to research.  This message will repeat for one turn, and save to your province history for reference."
#req_fornation 84
#req_owncapital 1
#req_unique 1
#end
#newmonster 6331
#copystats 61
#name "Slave Guardian"
#spr1 "./summod/humanslave_1.tga"
#spr2 "./summod/humanslave_2.tga"
#clearweapons
#cleararmor
#gcost 10009
#weapon 643
#armor 142
#mor 7
#armor 2
#slave
#descr "The success of R'lyeh is largely due to their powers of mind control. By enslaving other peoples, they have built a slave-based society with few dissidents. The slaves are used even in war and comprise most of the armies of R'lyeh.  On colonizing land, the servants of the Aboleths have discovered a populous race whose enslavement can help further their ambitions."
#end
#selectmonster 1401 --polypal mother
#divineins 5
#fixedresearch 5
#end
#selectmonster 2886
#inspiringres 1
#end
#selectmonster 1521 --mindlord
#clearmagic
#gcost 10010
#itemslots 28672
#magicskill 2 3
#magicskill 4 3
#custommagic 2560 100
#custommagic 7680 100
#custommagic 5120 5
#end
#selectmonster 1520--Aboleth
#gcost 9990
#itemslots 28672
#end
#selectmonster 2883 --Abodai
#gcost 9990
#itemslots 28672
#end
#selectmonster 2884 --androleth
#gcost 10040
#end
#selectmonster 2885 --androdai
#gcost 10030
#clearmagic
#magicskill 4 1
#magicskill 8 1
#custommagic 5632 100
#custommagic 5632 10
#end
---- Pelagia
#selectnation 85 --pelagia
#end
#selectmonster 2809 --sideraspist
#def 11
#hp 11
#mor 12
#end
#selectmonster 2810 --sideraspist
#def 11
#hp 11
#mor 12
#end
#selectnation 86 --oceania -- look pretty good already
#end
--EA Vanheim
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing. Your Valkyrie summon is more effective, due to buffs to Helheim. This message will repeat for one turn, and save to your province history for reference."
#req_fornation 20
#req_owncapital 1
#req_unique 1
#end
---- MA Nations
--MA Vanheim
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing. Your Valkyrie summon is more effective, due to buffs to Helheim. This message will repeat for one turn, and save to your province history for reference."
#req_fornation 50
#req_owncapital 1
#req_unique 1
#end
--------SCELERIA CHANGES
#selectnation 35
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your indie priests will have a higher upkeep cost.  This message will save to your province history for reference."
#req_fornation 35 
#req_owncapital 1
#req_unique 1
#end
--------Pythium
#selectnation 36
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your angelic summons have received discounts and summoning path changes, except for the Harbinger.  The Angel of Fury has received more substantial buffs.  This message will save to your province history for reference."
#req_fornation 36 
#req_owncapital 1
#req_unique 1
#end
--------Marignon
#selectnation 40
#startunitnbrs1 15
#startunitnbrs2 15
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your angelic summons have received discounts and summoning path changes, except for the Harbinger.  The Angel of Fury has received more substantial buffs.  Your flagellants are now cheaper and can be produced by inquisitors pillaging in friendly dominion.  Finally, your cavalry is generally cheaper.  This message will save to your province history for reference."
#req_fornation 40 
#req_owncapital 1
#req_unique 1
#end
#newevent 
#nation -2
#nolog
#notext
#msg "flags"
#rarity 5
#req_minpop 100
#req_dominion 1
#req_targmnr 149
#req_targorder 30
#1d6units 217
#end
#newevent 
#nation -2
#nolog
#notext
#msg "flags"
#rarity 5
#req_minpop 100
#req_dominion 1
#req_targmnr 149
#req_targorder 30
#1d3units 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 250
#req_temple 1
#req_targmnr 149
#req_targorder 30
#1d3units 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 200
#req_dominion 4
#req_targmnr 149
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 150
#req_dominion 7
#req_targmnr 149
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 100
#req_dominion 10
#req_targmnr 149
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#nolog
#notext
#msg "flags"
#rarity 5
#req_minpop 100
#req_dominion 1
#req_targmnr 589
#req_targorder 30
#2d6units 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 250
#req_temple 1
#req_targmnr 589
#req_targorder 30
#1d3units 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 200
#req_dominion 4
#req_targmnr 589
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 150
#req_dominion 7
#req_targmnr 589
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 100
#req_dominion 10
#req_targmnr 589
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#nolog
#notext
#msg "flags"
#rarity 5
#req_minpop 100
#req_dominion 1
#req_targmnr 222
#req_targorder 30
#3d6units 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 250
#req_temple 1
#req_targmnr 222
#req_targorder 30
#1d3units 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 200
#req_dominion 4
#req_targmnr 222
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 150
#req_dominion 7
#req_targmnr 222
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 100
#req_dominion 10
#req_targmnr 222
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#nolog
#notext
#msg "flags"
#rarity 5
#req_minpop 100
#req_dominion 1
#req_targmnr 583
#req_targorder 30
#4d6units 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 250
#req_temple 1
#req_targmnr 583
#req_targorder 30
#1d3units 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 200
#req_dominion 4
#req_targmnr 583
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 150
#req_dominion 7
#req_targmnr 583
#req_targorder 30
#1unit 217
#end
#newevent 
#nation -2
#rarity 5
#nolog
#notext
#msg "flags"
#req_minpop 100
#req_dominion 10
#req_targmnr 583
#req_targorder 30
#1unit 217
#end
--marignon pillage.  Pillage order is 30.
#selectmonster 149 --inquisitor
#end
#selectmonster 222 --high inquisitor
#noslowrec
#custommagic 2048 25
#end
#selectmonster 134 --royal guard
#gcost 10020 --10 gold discount
#end
#selectmonster 135 --knight of chalice
#gcost 10020 --10 gold discount
#end
#selectmonster 440 --paladin
#gcost 10020 --20 gold discount
#end
#selectmonster 133 --man at arms
#gcost 13
#end
#selectmonster 224 --witch hunter
#gcost 10000
#custommagic 3456 10
#end
#selectmonster 223 --grandmaster
#end
#selectmonster 217 --flagellant
#gcost 10007
#end
----Angel Changes
#newspell
#copyspell 162
#end
#selectspell 162
#clear
#name "Bless Self"
#effect 10
#damage 1
#spec 12632064
#school -1
#end
#newweapon 1423
#copyweapon 145
#name "Heavenly Song"
#aoe 0
#end
#selectspell 319 --Contact Harbinger
#end
#selectspell 320 --angelic host
#pathlevel 0 4
#path 1 0
#pathlevel 1 1
#fatiguecost 4000
#end
#selectspell 321 --heavenly wrath
#fatiguecost 2500
#end
#selectspell 322 --heavenly choir
#fatiguecost 8800
#pathlevel 0 5
#pathlevel 1 3
#end
#selectmonster 1369 --Angel of Wrath
#bloodvengeance 0
#damagerev 2
#onebattlespell 162
#end
#selectmonster 1367 --Heavenly Choir
#weapon 1423
#end
--------Tien chi
#selectnation 42
#clearrec
#startcom 792
#startscout 813
#startunittype1 794
#startunittype2 797
#startunitnbrs1 15
#startunitnbrs2 15
#addforeigncom 805
#addreccom 426
#addreccom 792 
#addreccom 804
#addreccom 805
#addreccom 807
#addreccom 813
#addreccom 1890
#addreccom 1891
#addreccom 1893
#addreccom 1894
#addreccom 6342
#addrecunit 788
#addrecunit 789
#addrecunit 790
#addrecunit 794
#addrecunit 795
#addrecunit 796
#addrecunit 797
#addrecunit 798
#addrecunit 800
#addrecunit 801
#addrecunit 802
#addrecunit 1900
#addrecunit 1901
#addrecunit 1902	
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your cavalry are cheaper, and your masters of the way have different paths.  Importantly, your Eunuchs are recruit-anywhere and can conscript militia-stat versions of your foot troops.  This message will save to your province history for reference."
#req_fornation 42 
#req_owncapital 1
#req_unique 1
#end
#selectspell 176 --internal alchemy
#fatiguecost 200
#end
#selectspell 175 --thousand year ginseng
#fatiguecost 200
#end
#selectspell 343 -- Celestial Servant
#fatiguecost 200
#end
#selectspell 796
#notfornation 42
#end
#newspell
#name "Terracotta Leader"
#school -1
#effect 10001
#nreff 1
#damage -1306
#end
#newspell
#name "Terracotta Army"
#descr "The caster crafts an army of terracotta soldiers and imbues them with false life. Terracotta Soldiers are highly resistant to fire, but are somewhat brittle if struck by blunt weapons."
#school 4
#researchlevel 4
#path 0 0
#pathlevel 0 1
#path 1 3
#pathlevel 1 1
#restricted 42
#effect 10001
#nreff 3009
#damage -1305
#fatiguecost 1000
#nextspell "Terracotta Leader"
#end
#newmonster 6407
#name "Terracotta Infantryman"
#descr "A ceramic statue given false life through magic rituals. Terracotta Soldiers are highly resistant to fire, but are somewhat brittle if struck by blunt weapons. This one is armed as an infantryman."
#spr1 "./summod/TerracottaShield1.tga"
#spr2 "./summod/TerracottaShield2.tga"
#gcost 0
#hp 7
#size 2
#prot 10
#mr 12
#mor 50
#str 10
#att 10
#def 10
#prec 5
#enc 0
#ap 6
#mapmove 3
#fireres 20
#poisonres 25
#pooramphibian
#slashres
#pierceres
#magicbeing
#inanimate
#neednoteat
#noheal
#weapon 1
#armor 4
#montag 1305
#end
#newmonster 6406
#name "Terracotta Guardsman"
#descr "A ceramic statue given false life through magic rituals. Terracotta Soldiers are highly resistant to fire, but are somewhat brittle if struck by blunt weapons. This one is armed as a guardsman."
#spr1 "./summod/TerracottaGlaive1.tga"
#spr2 "./summod/TerracottaGlaive2.tga"
#gcost 0
#hp 7
#size 2
#prot 10
#mr 12
#mor 50
#str 10
#att 10
#def 10
#prec 5
#enc 0
#ap 6
#mapmove 3
#fireres 20
#poisonres 25
#pooramphibian
#slashres
#pierceres
#magicbeing
#inanimate
#neednoteat
#noheal
#weapon 308
#montag 1305
#end
#newmonster 6408
#name "Terracotta Crossbowman"
#descr "A ceramic statue given false life through magic rituals. Terracotta Soldiers are highly resistant to fire, but are somewhat brittle if struck by blunt weapons. This one is armed as a crossbowman."
#spr1 "./summod/TerracottaCrossbowman1.tga"
#spr2 "./summod/TerracottaCrossbowman2.tga"
#gcost 0
#hp 7
#size 2
#prot 10
#mr 12
#mor 50
#str 10
#att 10
#def 10
#prec 5
#enc 0
#ap 6
#mapmove 3
#fireres 20
#poisonres 25
#pooramphibian
#slashres
#pierceres
#magicbeing
#inanimate
#neednoteat
#noheal
#weapon 25
#weapon 6
#montag 1305
#end
#newmonster 6409
#name "Terracotta Horseman"
#descr "A ceramic statue given false life through magic rituals. Terracotta Soldiers are highly resistant to fire, but are somewhat brittle if struck by blunt weapons. This one is armed as a horseman, it even has a horse."
#spr1 "./summod/TerracottaHorseman1.tga"
#spr2 "./summod/TerracottaHorseman2.tga"
#gcost 0
#prot 10
#mr 12
#mor 50
#str 10
#att 10
#def 10
#prec 5
#enc 0
#mapmove 3
#fireres 20
#poisonres 25
#pooramphibian
#slashres
#pierceres
#magicbeing
#inanimate
#neednoteat
#noheal
#size 3
#mounted
#weapon 4
#weapon 10
#weapon 56
#armor 2
#hp 10
#ap 16
#montag 1306
#firstshape 6411
#end
#newmonster 6410
#name "Terracotta Horseman"
#descr "A ceramic statue given false life through magic rituals. Terracotta Soldiers are highly resistant to fire, but are somewhat brittle if struck by blunt weapons. This one is armed as a horseman, it even has a horse."
#spr1 "./summod/TerracottaHorseman1.tga"
#spr2 "./summod/TerracottaHorseman2.tga"
#gcost 0
#prot 10
#mr 12
#mor 50
#str 10
#att 10
#def 10
#prec 5
#enc 0
#mapmove 3
#fireres 20
#poisonres 25
#pooramphibian
#slashres
#pierceres
#magicbeing
#inanimate
#neednoteat
#noheal
#size 3
#mounted
#weapon 4
#weapon 10
#weapon 56
#armor 2
#hp 10
#ap 16
#montag 1306
#firstshape 6411
#end
#newmonster 6411
#name "Terracotta Horseman"
#descr "A ceramic statue given false life through magic rituals. Terracotta Soldiers are highly resistant to fire, but are somewhat brittle if struck by blunt weapons. This one is armed as a horseman, it even has a horse."
#spr1 "./summod/TerracottaHorseman1.tga"
#spr2 "./summod/TerracottaHorseman2.tga"
#gcost 0
#prot 10
#mr 12
#mor 50
#str 10
#att 10
#def 10
#prec 5
#enc 0
#mapmove 3
#fireres 20
#poisonres 25
#pooramphibian
#slashres
#pierceres
#magicbeing
#inanimate
#neednoteat
#noheal
#size 3
#mounted
#weapon 4
#weapon 10
#weapon 56
#armor 2
#hp 10
#ap 16
#montag 1306
#end
#newmonster 6412
#name "Terracotta Chariot"
#descr "A ceramic statue given false life through magic rituals. Terracotta Soldiers are highly resistant to fire, but are somewhat brittle if struck by blunt weapons. This one is armed as a chariotsman, it even has a chariot."
#spr1 "./summod/TerracottaHorseman1.tga"
#spr2 "./summod/TerracottaHorseman2.tga"
#gcost 0
#prot 10
#mr 12
#mor 50
#str 10
#att 10
#def 10
#prec 5
#enc 0
#mapmove 3
#fireres 20
#poisonres 25
#pooramphibian
#slashres
#pierceres
#magicbeing
#inanimate
#neednoteat
#noheal
#size 4
#mounted
#trample
#weapon 10
#armor 1
#hp 12
#ap 12
#montag 1306
#end
#newmonster 6342
#copystats 808
#copyspr 808
#descr "Masters of the Way are lowly priests, hermits and sages who practice the ancient Magic of the Way. Some serve as parish priests and others travel the land, gathering followers. Still others sequester themselves in caves and practice extreme asceticism and self-starvation in the attempt to attain immortality. The practice of internal alchemy has given them remarkable longevity and they can survive on a diet of a few grains of rice per day. They all have some skill in Water magic, for the characteristics of Water, softness, flexibility and life-giving, are considered high ideals in the lore of the Way of the Five Elements. The imperial beauracracy has repressed the use of non-approved magics, and Masters of the Way are not as versatile as they once were."
#clearmagic
#magicskill 2 1
#magicskill 8 1
#custommagic 3584 100
#end
#newmonster 6333
#name "Conscript Footman"
#copystats 794
#copyspr 794
#montag 1304
#mapmove 1
#gcost 10007
#descr "Conscripts are, like most footmen, armored in leather and linen and armed with polearms and bows. The imperial beuarcracy demands a tax of money or labor, and those who can't pay either assist in local defense or are pressed into the army for a term of up to two years. After serving their term, some conscripts join the army as regulars, but others go home to their families."
#spr1 "./summod/conpike_1.tga"
#spr2 "./summod/conpike_2.tga"
#mor 8
#att 8
#def 8
#prec 8
#xpshape 24
#end
#newmonster 6334
#name "Experienced Conscript Footman"
#copystats 794 #copyspr 794
#spr1 "./summod/conpike_1.tga"
#spr2 "./summod/conpike_2.tga"
#mor 8
#att 8
#def 8
#prec 8
#gcost 10007
#firstshape -1310
#descr "Conscripts are, like most footmen, armored in leather and linen and armed with polearms and bows. The imperial beuarcracy demands a tax of money or labor, and those who can't pay either assist in local defense or are pressed into the army for a term of up to two years. After serving their term, some conscripts join the army as regulars, but others go home to their families."
#end
#newmonster 6335
#name "Conscript Footman"
#copystats 795 #copyspr 795
#montag 1304
#gcost 10007
#descr "Conscripts are, like most footmen, armored in leather and linen and armed with polearms and bows. The imperial beuarcracy demands a tax of money or labor, and those who can't pay either assist in local defense or are pressed into the army for a term of up to two years. After serving their term, some conscripts join the army as regulars, but others go home to their families."
#mapmove 1
#spr1 "./summod/conglaive_1.tga"
#spr2 "./summod/conglaive_2.tga"
#mor 8
#att 8
#def 8
#xpshape 24
#prec 8
#end
#newmonster 6336
#name "Experienced Conscript Footman"
#copystats 795 #copyspr 795
#spr1 "./summod/conglaive_1.tga"
#spr2 "./summod/conglaive_2.tga"
#mor 8
#att 8
#def 8
#prec 8
#gcost 10007
#firstshape -1311
#descr "Conscripts are, like most footmen, armored in leather and linen and armed with polearms and bows. The imperial beuarcracy demands a tax of money or labor, and those who can't pay either assist in local defense or are pressed into the army for a term of up to two years. After serving their term, some conscripts join the army as regulars, but others go home to their families."
#end
#newmonster 6337
#name "Conscript Footman"
#copystats 796 #copyspr 796
#montag 1304
#gcost 10007
#descr "Conscripts are, like most footmen, armored in leather and linen and armed with polearms and bows. The imperial beuarcracy demands a tax of money or labor, and those who can't pay either assist in local defense or are pressed into the army for a term of up to two years. After serving their term, some conscripts join the army as regulars, but others go home to their families."
#mapmove 1
#spr1 "./summod/conshield_1.tga"
#spr2 "./summod/conshield_2.tga"
#mor 8
#att 8
#def 8
#prec 8
#xpshape 24
#end
#newmonster 6338
#name "Experienced Conscript Footman"
#copystats 796 #copyspr 796
#spr1 "./summod/conshield_1.tga"
#spr2 "./summod/conshield_2.tga"
#mor 8
#att 8
#def 8
#prec 8
#gcost 10007
#firstshape -1312
#descr "Conscripts are, like most footmen, armored in leather and linen and armed with polearms and bows. The imperial beuarcracy demands a tax of money or labor, and those who can't pay either assist in local defense or are pressed into the army for a term of up to two years. After serving their term, some conscripts join the army as regulars, but others go home to their families."
#end
#newmonster 6339
#name "Conscript Archer"
#copystats 797 #copyspr 797
#montag 1304
#gcost 10007
#descr "Conscripts are, like most footmen, armored in leather and linen and armed with polearms and bows. The imperial beuarcracy demands a tax of money or labor, and those who can't pay either assist in local defense or are pressed into the army for a term of up to two years. After serving their term, some conscripts join the army as regulars, but others go home to their families."
#spr1 "./summod/conarcher_1.tga"
#spr2 "./summod/conarcher_2.tga"
#mor 8
#att 7
#def 7
#prec 8
#xpshape 24
#end
#newmonster 6340
#name "Experienced Conscript Archer"
#copystats 797 #copyspr 797
#spr1 "./summod/conarcher_1.tga"
#spr2 "./summod/conarcher_2.tga"
#mor 8
#att 8
#def 8
#prec 8
#gcost 10007
#firstshape -1313
#descr "Conscripts are, like most footmen, armored in leather and linen and armed with polearms and bows. The imperial beuarcracy demands a tax of money or labor, and those who can't pay either assist in local defense or are pressed into the army for a term of up to two years. After serving their term, some conscripts join the army as regulars, but others go home to their families."
#end
#newmonster 6341
#name "Conscript Archer"
#copystats 797
#montag 1304
#gcost 10007
#descr "Conscripts are, like most footmen, armored in leather and linen and armed with polearms and bows. The imperial beuarcracy demands a tax of money or labor, and those who can't pay either assist in local defense or are pressed into the army for a term of up to two years. After serving their term, some conscripts join the army as regulars, but others go home to their families."
#mapmove 1
#spr1 "./summod/conarcher_1.tga"
#spr2 "./summod/conarcher_2.tga"
#mor 8
#att 7
#def 7
#prec 8
#firstshape 6339
#end
#newmonster 6491
#hp 1
#name "dead"
#descr "If you have one of these shit has gone FAR south"
#landdamage 100
#uwdamage 100
#montag 1310
#end
#newmonster 6492
#hp 1
#name "dead"
#descr "If you have one of these shit has gone FAR south"
#landdamage 100
#uwdamage 100
#montag 1311
#end
#newmonster 6493
#hp 1
#name "dead"
#descr "If you have one of these shit has gone FAR south"
#landdamage 100
#uwdamage 100
#montag 1312
#end
#newmonster 6494
#hp 1
#name "dead"
#descr "If you have one of these shit has gone FAR south"
#landdamage 100
#uwdamage 100
#montag 1313
#end
#selectmonster 794
#montag 1310
#end
#selectmonster 795
#montag 1311
#end
#selectmonster 796
#montag 1312
#end
#selectmonster 797
#montag 1313
#end
--------Machaka
#selectnation 43
#startunitnbrs1 20
#startunitnbrs2 20
#forestcom 892
#forestrec 2126
#addforeigncom 881
#addforeigncom 895
#addforeigncom 896
#addforeigncom 897
#addforeignunit 1599
#addforeignunit 879
#addforeignunit 880
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your mages have had their costs and paths reshuffled, though they'll maintain similar path proportions.  Your witchdoctors are forestrec, and your priests and light infantry are foreignrec.  Your greatspider riders are size 4; your greatspiders are also size 4, cost upkeep, and are otherwise buffed.  Your black hunters cause fear, since they are huge spiders the size of elephants.  This message will save to your province history for reference."
#req_fornation 43 
#req_owncapital 1
#req_unique 1
#end
#selectmonster 895 --eye of the lord
#slowrec
#end
#selectmonster 896 --ear of the lord
#gcost 10000
#end
#selectmonster 897 --Voice of the lord
#slowrec
#end
#selectmonster 877 --Banespider
#str 12
#gcost 10030
#att 14
#def 14
#end
#selectmonster 876 --spider warrior
#clearweapons
#weapon 10 --falchion
#weapon 126 --poison dagger
#def 12
#gcost 10020
#end
#selectmonster 879 --machaka archer
#gcost 10009
#end
#selectmonster 880 --machaka warrior javelin
#gcost 10009
#end
#selectmonster 1599 --machaka warrior spearshield (gave fur)
#gcost 10009
#armor 44
#end
#selectmonster 893  --sorceror
#clearmagic
#custommagic 5248 100
#custommagic 8192 25
#magicskill 0 1
#magicskill 5 1
#magicskill 6 2
#custommagic 13440 10
#end
#selectmonster 891  --sorceress
#gcost 10015
#clearmagic
#magicskill 0 1
#magicskill 3 1
#magicskill 5 1
#custommagic 13440 40
#end
#selectmonster 892 --witchdoctor
#clearmagic
#magicskill 6 1
#custommagic 12416 100
#custommagic 5248 100
#researchbonus -6
#gcost 10000
#end
#selectmonster 882 --hoplite
#gcost 10013
#end
#selectmonster 885 --spider rider
#gcost 10015
#size 4
#clearweapons
#weapon 313
#weapon 357
#weapon 262
#end
#selectmonster 886 --spider knight
#size 4
#gcost 10025
#clearweapons
#weapon 313
#weapon 596
#weapon 1
#weapon 262
#end
#selectmonster 887  --spider lord
#size 4
#gcost 10025
#clearweapons
#weapon 313
#weapon 596
#weapon 1
#weapon 262
#end
#selectmonster 898 --sorceress shape
#size 4
#str 16
#end
#newweapon 1414
#copyweapon 440
#name "Spider Fear"
#dmg 1
#nratt 1
#aoe 1
#unrepel
#norepel
#melee50
#bonus
#end
#selectmonster 899 --hunter form of black sorc
#str 18
#weapon 1414
#end
#selectmonster 889 --Black Hunter
#weapon 1414
#end
#selectmonster 2208
#str 18
#weapon 1414
#end
#selectmonster 888
#str 18
#gcost 70
#mr 10
#weapon 1414
#end
#selectmonster 890
#weapon 1414
#end
--------Caelum
#selectnation 46
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your archers now have superior weapons.  You now have a new mage.  This message will save to your province history for reference."
#req_fornation 46
#req_owncapital 1
#req_unique 1
#end
#selectsite 11
#homecom 6332
#end
#selectmonster 128 --spire horn warrior
#clearweapons --shortbow, ice knife
#weapon 35 --ice knife
#weapon 264 --composite bow
#end
#selectweapon 606 --frost bow
#dmg 11
#end
#newmonster 6332
#copystats 1283
#spr1 "./summod/iceenchanter_1.tga"
#spr2 "./summod/iceenchanter_2.tga"
#name "Ice Enchanter"
#descr "Ice Enchanters are the elite of the Ice Crafters, who are Caelian craftsmen and mages of frozen water.  They make the magical ice used in Caelum, and build palaces, weapons, armor, and common tools from it.  The most talented become Enchanters, who forge other magical items and even use the lore of other clans. Ice Enchanters use fewer magical gems when forging magical items."
#gcost 10030
#clearmagic
#magicskill 2 2
#custommagic 6272 100
#custommagic 2816 100
#iceforging 7
#end
-------Bandar Log
#selectnation 53
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your summons have received discounts and the highest level have been improved: Devalas cast Celestial Music, Devatas make animals magic resistant, and Rudra cast Wrathful Skies.  Apsaras also mix better with ranged squads.  Your monkey troops, including white ones, are generally cheaper.  This message will save to your province history for reference."
#req_fornation 53 
#req_owncapital 1
#req_unique 1
#end
#selectmonster 1332 --apsara
#weapon 1423
#end
#selectspell 350 --nagas
#fatiguecost 1500
#end
#selectspell 356 --nagaraja
#fatiguecost 2500
#end
#selectmonster 1123--Vanara Archer -1 gold
#gcost 10009
#end
#selectmonster 1124--Vanara Chakram Thrower -1 gold
#gcost 10009
#end
#selectmonster 1125--Vanara Infantry -1 gold
#gcost 10009
#end
#selectmonster 1126 --Vanara Swordsmen -1 gold
#gcost 10012
#end
#selectmonster 1131 --Bandar Archer -1 gold
#gcost 10017
#end
#selectmonster 1132--Bandar Warrior -1 gold
#gcost 10017
#att 12
#end
#selectmonster 1133--Bandar Warrior -1 gold
#gcost 10017
#att 12
#end
#selectmonster 1134--Royal Swordsman -1 gold
#gcost 10022
#att 13
#end
#selectmonster 1142 --whiteone
#gcost 10016
#end
-------Shinyu
#selectnation 54
#uwcom1 1530
#startunittype1 1390
#startunittype2 1391
#startunitnbrs2 15
#startunitnbrs1 15
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  You may now recruit kappa mages underwater.  Your summons are generally discounted, and your bakemono-sho are slaves, halving their upkeep.  Finally, you have a new national ritual that can transform up to 27 of your Bakemono Sorcerors into immortals by hiding their heart in a mountain province.  Only one heart may be hidden per province, and the destruction of the heart kills the Sorceror.  This message will save to your province history for reference."
#req_fornation 54 
#req_owncapital 1
#req_unique 1
#end
#newmonster 6352--summonchecker
#copystats 1396
#spr1 "./summod/ritualhelp1.tga"
#spr2 "./summod/ritualhelp2.tga"
#name "Ritual Assistant"
#descr "This bakemeno has been chosen for his loyalty, desperation, and unimportance.  He will travel with a Bakemono Sorceror to a hidden place on a mountain, where he will aid the Sorceror in the heart-hiding ritual, after which he has been promised his reward."
#clearweapons
#weapon 1
#cleararmor
#armor 44
#stealthy 0
#gcost 10
#end
#selectmonster 1530
#gcost 45
#end
#selectmonster 1396
#att 12
#gcost 10025
#end
#selectmonster 1397
#gcost 10025
#end
#selectmonster 1390 #hp 10 #slave #end
#selectmonster 1391 #hp 10 #slave #end
#selectmonster 1392 #slave #end
#selectmonster 1393 #slave #end
#selectmonster 1394 #slave #end
#selectmonster 1395 #slave #end
#selectmonster 1549 #taskmaster 2 #end
#selectmonster 1398 #inspirational 1 #end
#selectmonster 1608 --bakemono shaman
#custommagic 128 20
#custommagic 1024 20
#custommagic 4096 20
#gcost 10010
#end
#selectspell 191 --gozu mezu
#fatiguecost 500
#end
#selectspell 375 --ko oni
#nreff 2005
#end
#selectspell 377 --ao oni
#fatiguecost 400
#end
#selectspell 378 --karusu tengu
#fatiguecost 1000
#pathlevel 0 3
#researchlevel 5
#nreff 1009
#end
#selectspell 379 -aka oni
#fatiguecost 400
#end
#selectspell 380 --konoha tengu
#researchlevel 2
#end
#selectspell 381 --ghost general
#end
#selectspell 382 --summon oni
#fatiguecost 700
#end
#selectspell 385 --kurooni
#fatiguecost 600
#nreff 1002
#end
#selectspell 383 --dai tengu
#fatiguecost 4000
#end
#selectspell 384 --nushi
#fatiguecost 2000
#end
#selectspell 386 --oni general
#fatiguecost 1400
#researchlevel 5
#end
#selectspell 387--kitsune
#fatiguecost 2300
#end
#selectspell 388 -dai oni
#researchlevel 7
#fatiguecost 3500
#end
#newspell
#name "Hide Heart"
#descr "With this ritual, a Bakemeno Sorceror will attempt to hide his heart in an isolated mountain, granting him a form of immortality tied to that mountain. This ritual requires an unfortified mountain with a small temple to properly function, and will not work if cast without a Sorceror present."
#restricted 54
#school 4
#researchlevel 5 --change
#path 0 5
#pathlevel 0 2
#path 1 0
#pathlevel 1 2
#fatiguecost 1600 --change
#effect 10001
#damage 6352
#end
#newsite 1801
#name "Hiding Place"
#rarity 5
#level 4
#path 8
#end
#newmonster 6353	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6380  	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6380  	#req_nomnr 6353	#stealthcom 6353	#killmon 6352	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6353 	#req_monster 6380	#killcom 6380 	#nolog #end  
#newmonster 6354	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6381	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6381	#req_nomnr 6354	#stealthcom 6354	#killmon 6353	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6354	#req_monster 6381	#killcom 6381	#nolog #end  
#newmonster 6355	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6382	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6382	#req_nomnr 6355	#stealthcom 6355	#killmon 6354	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6355	#req_monster 6382	#killcom 6382	#nolog #end  
#newmonster 6356	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6383	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6383	#req_nomnr 6356	#stealthcom 6356	#killmon 6355	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6356	#req_monster 6383	#killcom 6383	#nolog #end  
#newmonster 6357	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6384	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6384	#req_nomnr 6357	#stealthcom 6357	#killmon 6356	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6357	#req_monster 6384	#killcom 6384	#nolog #end  
#newmonster 6358	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6385	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6385	#req_nomnr 6358	#stealthcom 6358	#killmon 6357	#nolog 
#end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6358	#req_monster 6385	#killcom 6385	#nolog #end  
#newmonster 6359	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6386	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6386	#req_nomnr 6359	#stealthcom 6359	#killmon 6358	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6359	#req_monster 6386	#killcom 6386	#nolog #end  
#newmonster 6360	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6387	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6387	#req_nomnr 6360	#stealthcom 6360	#killmon 6359	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6360	#req_monster 6387	#killcom 6387	#nolog #end  
#newmonster 6361	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6388	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6388	#req_nomnr 6361	#stealthcom 6361	#killmon 6360	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6361	#req_monster 6388	#killcom 6388	#nolog #end  
#newmonster 6362	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6389	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6389	#req_nomnr 6362	#stealthcom 6362	#killmon 6361	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6362	#req_monster 6389	#killcom 6389	#nolog #end  
#newmonster 6363	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6390	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6390	#req_nomnr 6363	#stealthcom 6363	#killmon 6362	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6363	#req_monster 6390	#killcom 6390	#nolog #end  
#newmonster 6364	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6391	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6391	#req_nomnr 6364	#stealthcom 6364	#killmon 6363	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6364	#req_monster 6391	#killcom 6391	#nolog #end  
#newmonster 6365	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6392	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6392	#req_nomnr 6365	#stealthcom 6365	#killmon 6364	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6365	#req_monster 6392	#killcom 6392	#nolog #end  
#newmonster 6366	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6393	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6393	#req_nomnr 6366	#stealthcom 6366	#killmon 6365	#nolog 
#end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6366	#req_monster 6393	#killcom 6393	#nolog 
#end  
#newmonster 6367	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6394	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6394	#req_nomnr 6367	#stealthcom 6367	#killmon 6366	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6367	#req_monster 6394	#killcom 6394	#nolog #end  
#newmonster 6368	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6395	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6395	#req_nomnr 6368	#stealthcom 6368	#killmon 6367	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6368	#req_monster 6395	#killcom 6395	#nolog #end  
#newmonster 6369	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6396	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6396	#req_nomnr 6369	#stealthcom 6369	#killmon 6368	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6369	#req_monster 6396	#killcom 6396	#nolog #end  
#newmonster 6370	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6397	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6397	#req_nomnr 6370	#stealthcom 6370	#killmon 6369	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6370	#req_monster 6397	#killcom 6397	#nolog #end  
#newmonster 6371	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6398	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6398	#req_nomnr 6371	#stealthcom 6371	#killmon 6370	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6371	#req_monster 6398	#killcom 6398	#nolog #end  
#newmonster 6372	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6399	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6399	#req_nomnr 6372	#stealthcom 6372	#killmon 6371	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6372	#req_monster 6399	#killcom 6399	#nolog #end  
#newmonster 6373	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6400	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6400	#req_nomnr 6373	#stealthcom 6373	#killmon 6372	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6373	#req_monster 6400	#killcom 6400	#nolog #end  
#newmonster 6374	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6401	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6401	#req_nomnr 6374	#stealthcom 6374	#killmon 6373	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6374	#req_monster 6401	#killcom 6401	#nolog #end  
#newmonster 6375	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6402	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6402	#req_nomnr 6375	#stealthcom 6375	#killmon 6374	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6375	#req_monster 6402	#killcom 6402	#nolog #end  
#newmonster 6376	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6403	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6403	#req_nomnr 6376	#stealthcom 6376	#killmon 6375	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6376	#req_monster 6403	#killcom 6403	#nolog #end  
#newmonster 6377	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6404	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6404	#req_nomnr 6377	#stealthcom 6377	#killmon 6376	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6377	#req_monster 6404	#killcom 6404	#nolog #end  
#newmonster 6378	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6405	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6405	#req_nomnr 6378	#stealthcom 6378	#killmon 6377	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6378	#req_monster 6405	#killcom 6405	#nolog #end  
#newmonster 6379	#copyspr 2369 #name "Sorceror Heart" #descr "This is the heart of a Bakemeno Sorceror. It has been hidden in a secret place on an isolated mountain shrine. So long as it remains safe, he cannot truly die, but if it is destroyed, he dies with it. No more than one heart can exist per province." #size 1 #hp 2 #gcost 0 #rcost 1 #unique #mor 50 #noleader #mr 14 #maxage 495 #heal #str 1 #prot 0 #att 0 #def 0 #prec 0 #enc 1 #ap 1 #blind #weapon 575 #stealthy 40 #neednoteat #itemslots 4096 #mapmove 0 #immobile 
#end 	
#newmonster 6406	#name "Bakemeno Kizoku" #immortal #descr "The Bakemeno Kizoku is a Bakemeno Sorceror who has recently hidden his heart in a secret place on an isolated mountain. So long as it exists, he cannot be truly killed, but is instead reborn." #spr1 "./summod/bakemonokizoku1.tga" #spr2 "./summod/bakemonokizoku2.tga" #gcost 395 #hp 33 #prot 7 #mr 17 #mor 16 #str 18 #att 12 #def 12 #prec 10 #enc 2 #maxage 250 #startage 50 #mountainsurvival #weapon 379 #armor 129 #holy #darkvision 50 #unique #magicskill 0 2 #magicskill 2 1 #magicskill 3 2 #magicskill 5 3 #magicskill 8 1 #custommagic 5760 100 #custommagic 5760 10 
#end	
#newevent #req_mountain 1 #req_pop0ok #req_freesites 1 #nation -2 #rarity 5  #req_site 0 #hiddensite -1  #msg "The Sorceror Successfully hid his heart, and provided his assistant with a reward appropriate to maintain the secrecy of the Hiding Place. [Hiding Place]."  #req_nomonster "Sorceror Heart" #req_monster 6352  #req_targmnr 1427 #transform 6406	#req_nomnr 6379	#stealthcom 6379	#killmon 6378	#nolog #end 
#newevent #msg "With the destruction of his heart, the Kizoku dies!"#nation -2 #rarity 5 #req_pop0ok #req_nomnr 6379	#req_monster 6406	#killcom 6406	#nolog #end  	
#newevent #nation -2 #rarity 5 #req_pop0ok  #req_site 1 #msg "Site removed [Hiding Place]." #notext #removesite 1801 #nolog #end	
------MA Man
#selectnation 37
#addreccom 6452
#startcom 6452
#startunittype1 61
#startunittype2 59
#startunitnbrs1 10 
#startunitnbrs2 10
#startscout 56
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your mages have improved paths.  Your mothers of avalon will occasionally bond wardens.  You have new battlespells, including two new attackspells and four new buffs.  Your cavalry is generally cheaper, and your Knight Commanders and Knights of Avalon may be promoted to Knights of the Earth once sufficiently experienced, and commanders are eligble to be ranking members of the Knights of Earth. This message will save to your province history for reference."
#req_fornation 37 
#req_owncapital 1
#req_unique 1
#end
#selectmonster 57 --Knight
#gcost 10020
#end
#newmonster 6456 --avalon clone
#copystats 64
#copyspr 64
#xpshape 150
#gcost 10035
#end
#selectmonster 64 --Avalon knight
#gcost 10035
#firstshape  6456
#end
#newmonster 6454 --(Knight Commander of Avvalon)--
#copystats 2128
#copyspr 2128
#xpshape 60
#gcost 10040
#end
#newmonster 6455 --(Knight Commander of Avvalon)--
#copystats 2128
#copyspr 2128
#descr "The Knights of Avalon ride the legendary Unicorns of Avalon, mounts of unsurpassed speed trained by the Witch Mothers. Clad in the brightest silver and enchanted by the Witches, the Knights of Avalon radiate confidence and resolve. The mystical power of their mounts protects them from long-lasting battle wounds. Due to exceptional feats this knight may be accepted into the Earth if there is a vacancy."
#end
#selectmonster 2128 --Knight Commander
#gcost 10040
#firstshape 6454
#end
#selectmonster 2129 --Logrian cav
#gcost 10005
#end
#selectmonster 65  --warden
#mapmove 2
#end
#selectmonster 212 --lord warden
#mapmove 2
#magicskill 8 1
#end
#selectmonster 53 --logrian warrior
#gcost 10011
#end
#selectmonster 62 ---longspear
#cleararmor
#armor 13
#armor 20
#armor 2
#end
#selectmonster 153 --crone
#gcost 9980
#clearmagic
#magicskill 1 2
#magicskill 6 3
#magicskill 8 1
#custommagic 8448 100
#custommagic 1536 100
#custommagic 9984 10
#userestricteditem 1102
#end
#selectmonster 152 --mother of avalon
#descr "As a Daughter of Avalon gains knowledge and responsibility, she is given three tests. When she passes them, she becomes a Mother and is given a green dress and religious authority. The Mothers are potent priest-enchantresses who travel the lands of Man searching for sites of magical power, guiding the common people in prayer and aiding commanders in battle. They are skilled at stealth and are able commanders in their own right. They are often accompanied by Wardens sworn to protect them. The Mothers, like all Witches of Avalon, are considered sacred by the populace of Man. The Mothers of Avalon are skilled in the magic of Air and Nature and many learn other arts on their travels. They can also use spellsongs once sung by the Sidhe of Tir na n'Og."
#clearmagic
#magicskill 6 2
#magicskill 1 1
#magicskill 8 1
#custommagic 1792 100
#custommagic 8192 25
#gcost 9970
#userestricteditem 1102
#end
#newsite 1813-- Telkhinis
#name "Forest Glade"
#path 6
#rarity 5
#level 0
#mon 6456
#com 2128
#end
#newevent 
#msg "Glade. [Forest Glade]."  
#req_owncapital 0 
#rarity 5 
#req_forest 1
#req_fort 1 
#nation -2 
#req_fornation 37 
#notext 
#nolog 
#req_magic 2 
#req_freesites 1 
#req_nositenbr 1813 
#addsite 1813
#end
#newevent  #msg "Nofort. [Forest Glade]." 
#rarity 5  #req_fort 0 #nation -2 #notext #nolog  #req_site 1 #req_unmagic 1
#removesite 1813 
#end
#newevent  #msg "Nomagic. [Forest Glade]." 
#rarity 5  #req_unmagic 1 #nation -2 #notext #nolog  #req_site 1
#removesite 1813 
#end
#newevent #msg "Enemy. [Forest Glade]." 
#rarity 5 #req_notnation 37 #nation -2 #notext #nolog  #req_site 1 #removesite 1813 
#end
#newmonster 6452 --(Knight Commander)
#copystats 57
#spr1 "./summod/knightcom_1.tga"
#spr2 "./summod/knightcom_2.tga"
#name "Knight Commander of Man"
#descr "The Knights of Man are nobles trained to battle from childhood.  They are skilled in swordplay, music, and horsemanship. In the time of Logris, the rival petty kings gathered groups of influential and skilled warriors to their cause.  Now the descendants of these first Logrian nobles have become the ruling class of Man.  Many of them are Logrian fullbloods and stronger than most men."
#goodleader
#command -20
#hp 13
#att 13
#xpshape 150
#end
#newmonster 6453
#copystats 6452
#copyspr 6452
#end
#newevent --1--
#rarity 5
#req_fornation 37
#req_targmnr 6455
#nation -2
#nolog
#msg "This knight has committed enough valorous deeds to be admitted to the Knights of Earth, a storied company of mighty men!" 
#transform 6457
#end
#newevent --2--
#rarity 5
#req_fornation 37
#req_targmnr 6453
#nation -2
#nolog
#msg "This knight has committed enough valorous deeds to be admitted to the Knights of Earth, a storied company of mighty men!" 
#transform 6457
#end
#newevent --4--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6458
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6458
#end
#newevent
#rarity -1
#nation -2
#req_fornation 37
#req_targmnr 6459
#msg "This questing knight has found some treasure!"
#gold 10
#req_fort 0
#addequip 1
#req_unique 2
#end
#newevent --5--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6459
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6459
#end
#newevent --6--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6460
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6460
#end
#newevent --7--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6461
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6461
#end
#newevent --8--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6462
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6462
#end 
#newevent --9--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6463
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6463
#end
#newevent --10--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6464
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6464
#end
#newevent --11--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6465
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6465
#end 
#newevent --12--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6466
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6466
#end
#newevent --13--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6467
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6467
#end
#newevent --14--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6468
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6468
#end
#newevent --3--
#rarity 5
#req_fornation 37
#req_targmnr 6457
#req_nomnr 6469
#nation -2
#nolog
#msg "This knight has become a ranking member of the Knights of Earth!" #req_rare 30 #addequip 1
#transform 6469
#end
#newmonster 6457
#name "Knight of the Earth"
#descr "A Knight of the Earth, gallant and bold, entrusted with special duties and honours.  Knights of the Earth who are commanders are eligible for a special seat if one is open."
#spr1 "./summod/roundgeneric_1.tga"
#spr1 "./summod/roundgeneric_2.tga"
#hp 17
#gcost 120
#mr 14
#mor 18
#att 14
#def 14
#enc 4
#mapmove 3
#goodleader
#ap 30
#weapon 4
#weapon 8
#weapon 330
#weapon 56
#armor 18
#armor 21
#armor 3
#maxage 80
#mounted
#heal
#forestsurvival
#inspirational 1
#standard 1
#itemslots 31878
#end
#newmonster 6469 --1 Lancelot--
#copystats 6457
#name "Knight of the Lake"
#spr1 "./summod/roundlance_1.tga"
#spr2 "./summod/roundlance_2.tga"
#str 14
#att 16
#def 16
#mor 20
#descr "A Knight of the Earth, gallant and bold, the Knight of the Lake is known for exceptional prowess in combat."
#end
#newmonster 6458 --2 Percival--
#copystats 6457
#name "Knight of the Chalice"
#spr1 "./summod/roundperc_1.tga"
#spr2 "./summod/roundperc_2.tga"
#autohealer 1
#descr "A Knight of the Earth, gallant and bold, the Knight of the Chalice is trusted with healing the wounded."
#end
#newmonster 6459 --3 Degore--
#copystats 6457
#name "Knight of the Cup"
#spr1 "./summod/rounddegore_1.tga"
#spr2 "./summod/rounddegore_2.tga"
#supplybonus 20
#descr "A Knight of the Earth, gallant and bold, the Knight of the Cup is entrusted with ensuring the troops are well-provisioned."
#end
#newmonster 6460 --4 Bedivere--
#copystats 6457
#name "Mighty Knight"
#spr1 "./summod/roundbediv_1.tga"
#spr2 "./summod/roundbediv_2.tga"
#str 17
#descr "A Knight of the Earth, gallant and bold, the Mighty Knight is among the strongest of his company"
#end
#newmonster 6461 --5 Kay--
#copystats 6457
#name "Knight of Recruits"
#spr1 "./summod/roundkay_1.tga"
#spr2 "./summod/roundkay_2.tga"
#batstartsum1 6452
#descr "A Knight of the Earth, gallant and bold, the Knight of Recruits mentors inexperienced knights."
#end
#newmonster 6462 --6 Galahad--
#copystats 6457
#name "Pious Knight"
#spr1 "./summod/roundgala_1.tga"
#spr2 "./summod/roundgala_2.tga"
#holy
#magicskill 8 1
#descr "A Knight of the Earth, gallant and bold, entrusted with special duties and honours, the Pious Knight is among the holiest of his company."
#end
#newmonster 6463 --7 Bors--
#copystats 6457
#name "Fearless Knight"
#spr1 "./summod/roundbors_1.tga"
#spr2 "./summod/roundbors_2.tga"
#mor 30
#descr "A Knight of the Earth, gallant and bold, the Fearless Knight is the bravest of his comrades."
#end
#newmonster 6464 --8 Gawain--
#copystats 6457
#name "Maidens Knight"
#spr1 "./summod/roundgawa_1.tga"
#spr2 "./summod/roundgawa_2.tga"
#magicskill 6 1
#descr "A Knight of the Earth, gallant and bold, the Maiden Knight is known for his knowledge of herbs."
#userestricteditem 1102
#end
#newmonster 6465 --9 Tristan--
#copystats 6457
#name "Courtly Knight"
#spr1 "./summod/roundtrist_1.tga"
#spr2 "./summod/roundtrist_2.tga"
#seduce 10
#descr "A Knight of the Earth, gallant and bold, entrusted with special duties and honours, the Courtly Knights manners are beyond reproach."
#end
#newmonster 6466 --10 Brunor--
#copystats 6457
#name "Untiring Knight"
#spr1 "./summod/roundbrun_1.tga"
#spr2 "./summod/roundbrun_2.tga"
#descr "A Knight of the Earth, gallant and bold, entrusted with special duties and honours, the Untiring Knight is not easily exhuasted in battle."
#enc 2
#end
#newmonster 6467 --11 Hector--
#copystats 6457
#name "Passionate Knight"
#spr1 "./summod/roundhect_1.tga"
#spr2 "./summod/roundhect_2.tga"
#descr "A Knight of the Earth, gallant and bold, the Passionate Knight follows his heart into battle."
#berserk 4
#end
#newmonster 6468 --12 Robin--
#copystats 6457
#name "Brave Knight"
#spr1 "./summod/roundrobin_1.tga"
#spr2 "./summod/roundrobin_2.tga"
#mor 8
#batstartsum1d6 658
#ap 35
#descr "A Knight of the Earth, gallant and bold, entrusted with special duties and honours, the Brave Knight is renowned for his speed when combat is near."
#end
#newspell
#copyspell 908
#restricted 37
#name "Bewitchment"
#school 4
#path 0 6
#pathlevel 0 1
#path 1 1
#pathlevel 1 1
#aoe 1000
#range 25
#fatiguecost 20
#descr "With this spell, a Witch of Avalon can throw a group of enemy soldiers into confusion, causing them to treat friends as enemies and enemies as friends."
#end
#selectmonster 2439--logrian druid
#end
#selectmonster 60
#fixedresearch 4
#end
#newmonster 6343
#copystats 152
#spr1 "./summod/bonded_1.tga"
#spr2 "./summod/bonded_2.tga"
#name "Bonded Mother of Avalon"
#descr "As a Daughter of Avalon gains knowledge and responsibility, she is given three tests. When she passes them, she becomes a Mother and is given a green dress and religious authority. The Mothers are potent priest-enchantresses who travel the lands of Man searching for sites of magical power, guiding the common people in prayer and aiding commanders in battle. They are skilled at stealth and are able commanders in their own right. They are often accompanied by Wardens sworn to protect them. The Mothers, like all Witches of Avalon, are considered sacred by the populace of Man. The Mothers of Avalon are skilled in the magic of Air and Nature and many learn other arts on their travels. They can also use spellsongs once sung by the Sidhe of Tir na n'Og.  Mothers of Avalon can bond a warden to act as a permanant bodyguard, which may have benefits to their magical abilities as they travel.  This Mother of Avalon has bonded a Warden, who will fight alongside her in every battle, so long as she lives."
#batstartsum1 65
#userestricteditem 1102
#end
#newevent
#rarity 5
#nation -2
#req_rare 7
#nolog
#msg "This Mother of Avalon has bonded a Warden to her service! He will never leave her side."
#req_monster 65
#req_targmnr 152
#transform 6343
#killmon 65
#end
#newspell
#copyspell 611
#name "Hex of Minerva"
#descr "A Witch of Avalon can hex a small number of enemies, transfiguring them into animals."
#aoe 1003
#fatiguecost 100
#researchlevel 7
#pathlevel 0 2
#range 5010
#damage 1560
#restricted 37
#end
#newspell
#copyspell 598 --transformation
#name "Transformation"
#fatiguecost 500
#researchlevel 6
#restricted 37
#end
#selectspell 598 --transformation
#fatiguecost 800
#notfornation 37
#end
#newspell
#copyspell 887
#name "Slumber"
#aoe 666
#school 2
#researchlevel 0-- 8
#pathlevel 0 4
#fatiguecost 100
#damage 5010
#restricted 37
#descr "With this spell, a powerful witch makes all living units unnaturally tired."
#end
#newspell
#copyspell 152
#name "Base of Courage"
#school -1
#range 2
#spec 140738030141568
#end
#newspell
#copyspell 759
#name "Blade of Morgan"
#fatiguecost 20
#aoe 1
#school -1
#end
#newspell
#copyspell 574
#name "Defense of Morgan"
#fatiguecost 20
#aoe 1
#school -1
#nextspell "Blade of Morgan"
#end
#newspell
#copyspell "Base of Courage"
#name "Incantantion of Morgan"
#researchlevel 6
#school 1
#path 0 2
#path 1 6
#pathlevel 0 1
#pathlevel 1 2
#fatiguecost 40
#restricted 37
#aoe 5
#descr "The first and greatest of the Witches of Avalon crafted spells to aid their strongest champions.  Morgan ensorcelled her champions with the qualities of water, making them resistant to enemy weapons while allowing their blades to flow past enemy armor."
#nextspell "Defense of Morgan"
#end
---
#newspell
#copyspell 867
#name "Cloak of Niniane"
#fatiguecost 30
#aoe 1
#school -1
#nextspell "Mossbody"
#end
#newspell
#copyspell "Base of Courage"
#name "Aegis of Niniane"
#researchlevel 5
#school 4
#path 0 6
#path 1 8
#pathlevel 0 3
#pathlevel 1 1
#fatiguecost 40
#restricted 37
#aoe 5
#descr "The first and greatest of the Witches of Avalon crafted spells to aid their strongest champions.  Niniane called on the power of Avalon to shield her champions from the frost, fire, and lightning, though it would also keep them from harm for a time."
#nextspell "Cloak of Niniane"
#end
---------------------------------------
#newspell
#copyspell 753
#name "Armor of Isolde"
#fatiguecost 30
#aoe 1
#school -1
#nextspell "Earth Might"
#end
#newspell
#copyspell "Base of Courage"
#name "Fortification of Isolde"
#researchlevel 3
#school 4
#path 0 3
#path 1 6
#pathlevel 0 1
#pathlevel 1 2
#fatiguecost 40
#restricted 37
#aoe 5
#descr "The first and greatest of the Witches of Avalon crafted spells to aid their strongest champions.  Isolde chose to strengthen the arms and armor of her champions."
#nextspell "Armor of Isolde"
#end
-------
#newspell
#copyspell 525
#name "Block of Ygraine"
#aoe 1
#school -1
#end
#newspell
#copyspell 536
#name "Defense of Ygraine"
#fatiguecost 20
#aoe 1
#school -1
#nextspell "Block of Ygraine"
#end
#newspell
#copyspell "Base of Courage"
#name "Cloak of Ygraine"
#researchlevel 3
#school 1
#path 0 1
#path 1 6
#pathlevel 0 2
#pathlevel 1 2
#fatiguecost 40
#restricted 37
#aoe 5
#descr "The first and greatest of the Witches of Avalon crafted spells to aid their strongest champions. Ygraine chose to protect her chosen warriors from the weapons of their enemies, making them difficult to strike with sword or bow."
#nextspell "Defense of Ygraine"
#end
#newitem
#spr "./summod/Rowanstaff.tga"
#constlevel 4
#mainpath 6
#mainlevel 2
#secondarypath 1
#secondarylevel 2
#type 2
#name "Rowan Staff"
#descr "This staff has been crafted using wood from a great rowan tree in the Forest of Avalon and can only be used by one of its witches. It will empower her spells and make them more accurate and harder to resist, and allows her to easily confuse her enemies. "
#weapon 238 -- Wand
#prec 2
#pen 2
#restricted 37
#restricteditem 1102
#spell "Bewitchment"
#end
-------Xibalba
#selectnation 58
#addrecunit 2730
#addrecunit 2731
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  You may now recruit Chak Muuch outside of your capital. Your bronze armored muuch have improved stats, and obsidian clubswords and darts have been improved.  Finally, Muuch K'uhal have better paths, with a chance at D3.  This message will save to your province history for reference."
#req_fornation 58 
#req_owncapital 1
#req_unique 1
#end
#selectsite 177
#clear
#name "The Sacred Cenote"
#path 2
#level 0
#rarity 5
#gems 2 1
#homecom 2732
#end
#selectmonster 2730 --poison dart thrower 
#end
#selectweapon 620 --poisondart
#ammo 6
#secondaryeffect 54
#end
#selectmonster 2731 --Obsidian Warrior
#gcost 10017
#end
#selectmonster 2716 --Muuch Kuhul
#gcost 10000
#clearmagic
#magicskill 2 1
#magicskill 3 1
#magicskill 5 1
#magicskill 8 1
#custommagic 4608 100
#custommagic 13824 100
#custommagic 13824 10
#end
#selectmonster 2734 --zotz
#gcost 8
#clearweapons
#weapon 1415
#end
#selectmonster 2735 --zotz
#gcost 8
#end
#selectweapon 619 --obs dart
#ammo 6
#end
#selectmonster 2727 --jungle warrior
#mapmove 2
#end
#selectmonster 2723 --light spear muuch
#end
#selectmonster 2724 --light obsword muuch
#end
#selectmonster 2725 --bronze spear muuch
#gcost 10014
#att 11
#def 10
#mor 11
#end
#selectmonster 2726 --bronze obsword muuch
#gcost 10014
#att 11
#def 10
#mor 11
#end
#selectnation 90 --oceania
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Sirens have improved paths.  Ichtytaur have an underwater gore attack.  This message will save to your province history for reference."
#req_fornation 90
#req_owncapital 1
#req_unique 1
#end
#selectmonster 1054 --siren
#clearmagic
#magicboost 1 -1
#magicskill 1 1
#magicskill 2 1
#custommagic 768 100
#end
#selectmonster 1055 --sirenland
#clearmagic
#magicboost 2 -1
#magicskill 1 1
#magicskill 2 1
#custommagic 768 100
#end
#selectmonster 2380 --ichtyaur
#weapon 331
#gcost 10035
#end
#selectmonster 2381 --ichtyaur
#gcost 10035
#end
#selectmonster 2412 --ichtyaur
#weapon 331
#gcost 10035
#end
#selectmonster 2413 --ichtyaur
#gcost 10035
#end
#selectmonster 2414 --ichtyaur
#weapon 331
#gcost 10035
#end
#selectmonster 2415 --ichtyaur
#gcost 10035
#end
--------Eriu
#selectnation 38
#end
--------Mictlan
#selectnation 41
#addreccom 1190
#end
#selectspell 340 --tlahuelpuchi
#path 0 7
#pathlevevel 0 2
#path 1 5
#pathlevel 1 2
#end
#selectmonster 1558--tlahuelpuchi
#noleader
#end
#selectspell  338  --summon civatetevo
#path 0 7
#pathlevel 0 2
#path 1 5
#pathlevel 1 0
#end
#selectmonster 1422 --civatetevo
#douse 1
#end
#selectmonster 725 --sun warrior
#hp 13
#str 11
#mapmove 2
#gcost 10011
#end
---------Abysia
#selectnation 45
#end
---------Ashdod
#selectnation 55
#end
---notices
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your summons are generally discounted.  This message will save to your province history for reference."
#req_fornation 27 --yomi 
#req_owncapital 1
#req_unique 1
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your summons are generally discounted.  This message will save to your province history for reference."
#req_fornation 69 --jomon
#req_owncapital 1
#req_unique 1
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Your angelic summons have received discounts and summoning path changes, except for the Harbinger.  The Angel of Fury has received more substantial buffs.  This message will save to your province history for reference."
#req_fornation 65 --la mari
#req_owncapital 1
#req_unique 1
#end
#newevent 
#rarity 5
#nation -2 
#msg "Your summons have received discounts and the highest level have been improved: Devalas cast Celestial Music, Devatas make animals magic resistant, and Rudra cast Wrathful Skies.  Apsaras also mix better with ranged squads.  Your monkey troops are also discounted.  This message will save to your province history for reference."
#req_fornation 78 --la Patala
#req_owncapital 1
#req_unique 1
#end
---Cav changes
---Marveni
#selectmonster 1208 --eponi knight --hoof attack, 5 gold discount
#weapon 56
#gcost 10010
#end
#selectmonster 1207 --eponi chief
#weapon 56
#gcost 10010
#end
---ea ermor
#selectmonster 1107 --equite --5 gold discount
#gcost 10015
#end
#selectmonster 1108 --equite of the shroud
#gcost 10020
#end
--EA TC
#selectmonster 788 --horseman (also ma tc)
#gcost 10003
#end
--MA pythium
#selectmonster 3 --serpent cat
#gcost 10030
#end
#selectmonster 5 --serpent lord
#gcost 10030
#end
--MA Ulm
#selectmonster 70 --black lord
#gcost 10025
#end
#selectmonster 69 --black knight
#gcost 10025
#end
--LA Arco
#selectmonster 1554 --agema commander
#gcost 10015
#end
#selectmonster 1553 --companion
#gcost 10015
#end
--LA Pythium
#selectmonster 765 --serpent lord
#gcost 10030
#end
#selectmonster 763 --serpent cata
#gcost 10030
#end
--LAMan
#selectmonster 1641 --tower knight
#gcost 10020
#end
--LA Ulm
#selectmonster 738 --black templar
#gcost 10025
#end
#selectmonster 1237 --hochmeister
#gcost 10000
#end
--jomon
#selectmonster 1246 --samurai cav
#gcost 10010
#end
#selectmonster 1250 --mounted gokenin
#gcost 10000
#end
#selectmonster 1251 --Hatamoto
#gcost 10000
#end
#selectmonster 1252 --Daimyo
#gcost 10000
#end
--Bogarus
#selectmonster 1922 --Grdi Druzhina
#gcost 10010
#end
#selectmonster 1923 --Malaia Druzhina
#gcost 10020
#end
#selectmonster 1924 --styag
#gcost 10015
#ap 20
#end
#selectmonster 1925 --black hood
#gcost 10000
#end
-------------popkill
--Spectral changes
#newweapon 1422
#copyweapon 280
#name "Spectral Spear"
#end
#selectmonster 2700 --supaya
#clearweapons
#weapon 1422
#end
#selectweapon 280 --spectral spear
#clear
#name "Spectral Spear"
#hardmrneg
#magic
#pierce
#dmg 3
#len 4
#nratt 1
#end
#selectweapon 281 --spectral sword
#clear
#name "Spectral Sword"
#dmg 5
#def 1
#len 1
#nratt 1
#slash
#magic
#hardmrneg
#end
#selectweapon 572 --spectral long spear
#clear
#name "Spectral Long Spear"
#dmg 3
#def -1
#len 5
#nratt 1
#hardmrneg
#pierce
#magic
#end
#selectnation 34 --ermor
#idealcold 1
#fortcost 50
#end
#selectsite 24
#gems 5 5
#end
#selectsite 25
#gems 5 10
#end
#selectmonster 253 --dusk elder
#magicskill 0 1
#magicskill 4 2
#magicskill 5 3
#magicboost 4 -1
#descr "The mages of Old Ermor performed rituals that corrupted and destroyed the old Empire. These mages are now summoned from the dead to wage war against the living and they are now known as Spectators or Dusk Elders. The mages do not possess solid bodies, but their spirits are connected to the Netherworld.  This has made their powers of Death magic greater than ever before, and they are more resistant to magic duels. The mere touch of these mages will drain the life energy of the target and replenish the power of the mage. They are ethereal and very difficult to harm without magic weapons."
#end
#newsite 1802
#name "Deadland"
#path 5 
#level 0
#rarity 5
#incscale 3
#gems 5 1
#end
#newsite 1803
#name "Purified Deadland"
#decscale 3
#path 8
#level 0
#rarity 5
#gems 4 1
#end
#newevent #rarity 5 #nation -2 #req_fornation 34   #req_pop0ok #req_capital 0 #req_dominion 2 #req_site 1 
#msg "Purification destroyed. [Purified Deadland]." #removesite 1803 #notext #nolog #end
#newevent #rarity 5 #nation -2 #req_fornation 34   
#req_pop0ok #req_capital 0 #req_dominion 1 #req_site 1
#msg "Carrionland destroyed. [Carrionland]." #removesite 1804 #nolog #notext  #end
#newevent #rarity 5 #nation -2 #req_fornation 34   
#req_pop0ok #req_capital 0 #req_dominion 1 #req_site 1 
#msg "Dreamland destroyed. [Dreamland]." #removesite 1805 #nolog #notext #end
#newevent #req_freesites 1 #rarity 5  #req_fornation 34   #req_land 1
#nation -2 #req_pop0ok #req_capital 0 #req_maxpop 150 #req_dominion 1 #req_nositenbr 1802
#msg "Deadland Created. [Deadland]." #addsite 1802  #notext #nolog #end
#newevent #req_freesites 1 #rarity 5  
#req_fornation 34 #req_land 1 #req_unique 5
#nation -2 #req_pop0ok #req_capital 0 #req_dominion 2 #req_site 0 #notext #addsite -1 
#msg "Deadland Created. [Deadland]" #nolog #end
#newevent #rarity 5 #req_monster 149 #req_fornation 40 
#nation -2 #req_pop0ok #req_capital 0 #req_dominion 3 #req_rare 30 #req_site 1 
#msg "An inquisitor has purified this land! [Deadland]."#nolog #notext #removesite 1802 #addsite 1803  #end
#newevent #rarity 5 #req_monster 222 #req_fornation 40  
#nation -2 #req_pop0ok #req_capital 0 #req_dominion 3 #notext #req_site 1 #msg "A High inquisitor has purified this land! [Deadland]."#nolog #removesite 1802 #addsite 1803  #end
#newevent #rarity 5 #req_monster 583 #req_fornation 40  
#nation -2 #req_pop0ok #req_capital 0 #req_dominion 3  #req_nositenbr 1804 #notext #req_site 1 #msg "His Eminence has purified this land! [Deadland]."#nolog #removesite 1802 #addsite 1803  #end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing. First and foremost, your gem income is now tied to the territory you capture, with your capital income dropped to compensate.  Provinces you own with your dominion have a chance of creating a death gem site that increases as the population falls and your dominion decreases.  Second, your forts are somewhat more expensive.  Finally, your Dusk Elders are more resistant to Magic Duel. This message will save to your province history for reference."
#req_fornation 34
#req_owncapital 1
#req_unique 1
#end
#newsite 1804
#name "Carrionland"
#path 6 
#level 0
#rarity 5
#decscale 3
#gems 6 1
#end
#selectnation 49 --asphodel
#end
#newevent #req_freesites 1 #rarity 5  
#req_fornation 49 #nation -2 
#req_pop0ok #req_capital 0 
#req_maxpop 100 
#req_dominion 4 #req_temple 1 #req_fort 0 #req_forest 1 #req_site 1  #req_land 1
#msg "Purified Deadland reclaimed. [Purified Deadland]." #removesite 1803 #nolog #notext #end
#newevent #req_freesites 1 #rarity 5  
#req_fornation 49 #nation -2 
#req_pop0ok #req_capital 0 
#req_maxpop 100 
#req_dominion 4 #req_temple 1 #req_fort 0 #req_forest 1 #req_site 1  #req_land 1
#msg "Deadland reclaimed. [Deadland]." #removesite 1802 #nolog #notext #end
#newevent #req_freesites 1 #rarity 5  
#req_fornation 49 #nation -2 
#req_pop0ok #req_capital 0 
#req_maxpop 100 
#req_dominion 4 #req_temple 1 #req_fort 0 #req_forest 1 #req_site 1 #req_land 1
#msg "Dreamland reclaimed. [Dreamland]." #removesite 1805 #nolog #notext #end
#newevent #req_freesites 1 #rarity 5  
#req_fornation 49 #nation -2 
#req_pop0ok #req_capital 0 
#req_maxpop 100 
#req_dominion 5 #req_rare 20 #req_temple 1 #req_fort 0 #req_forest 1 #req_land 1 #req_nositenbr 1803 #req_site 0 #addsite -1  
#msg "Carrionland Created. [Carrionland]." #removesite 1803 #nolog #notext #end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing. First, sleep vines no longer repel blows.  Second, your templed unforted forests now have a small chance of generating a nature site, though this is incompatible with other Deadlands sites.  This message will save to your province history for reference."
#req_fornation 49
#req_owncapital 1
#req_unique 1
#end
#selectnation 62 --lemuria
#fortcost 50
#fortera 2
#idealcold 1
#startcom 678
#startscout 6345
#startunittype1 672
#startunitnbrs1 10
#startunittype2 673
#startunitnbrs2 10
#end
#newmonster 6345 --acolyte
#copystats 2333
#copyspr 2333
#clearmagic
#magicskill 5 2
#holy
#magicskill 8 1
#end
#selectsite 158
#gems 5 5
#end
#selectsite 159
#gems 5 9
#end
#selectmonster 2333
#clearmagic
#magicskill 5 1
#holy
#custommagic 6144 100
#magicskill 8 1
#end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing. First and foremost, your gem income is now tied to the territory you capture, with your capital income dropped to compensate.  Provinces you own with your dominion have a chance of creating a death gem site that increases as the population falls and your dominion decreases.  Second, your forts are significantly more expensive, because who ever heard of a ghost building anything?  Also, you start with an acolyte, which is now a D2H0 mage.  This message will save to your province history for reference."
#req_fornation 62
#req_owncapital 1
#req_unique 1
#end
#newevent #rarity 5 #nation -2 #req_fornation 62   #req_pop0ok #req_capital 0 #req_dominion 2 #req_site 1 
#msg "Purification destroyed. [Purified Deadland]." #removesite 1803 #nolog #notext #end
#newevent #rarity 5 #nation -2 #req_fornation 62   
#req_pop0ok #req_capital 0 #req_dominion 2 #req_site 1
#msg "Carrionland destroyed. [Carrionland]." #removesite 1804 #nolog #notext #end
#newevent #rarity 5 #nation -2 #req_fornation 62   
#req_pop0ok #req_capital 0 #req_dominion 2 #req_site 1 
#msg "Dreamland destroyed. [Dreamland]." #removesite 1805 #nolog #notext #end
#newevent #req_freesites 1 #rarity 5  
#req_fornation 62 #req_land 1
#nation -2 #req_pop0ok #req_capital 0 
#req_unique 5 #req_site 0 #addsite -1  
#msg "Deadland Created. [Deadland]" #nolog #notext #end
#newevent #req_freesites 1 #rarity 5  #req_fornation 62   #req_land 1
#nation -2 #req_pop0ok #req_capital 0 #req_maxpop 100 #req_dominion 2 #req_site 0 #addsite -1
#msg "Deadland Created. [Deadland]"   #nolog #notext #end
#selectnation 92 --rlyeh
#end
#newsite 1805
#name "Dreamland"
#path 5 
#level 0
#rarity 5
#decscale 5
#gems 5 1
#end
#newevent #req_freesites 1 #rarity 5  
#req_fornation 92 #nation -2 
#req_pop0ok #req_capital 0 
#req_maxpop 100 
#req_dominion 5 #req_temple 1 #req_fort 0 #req_forest 1 #req_site 1 
#msg "Purified Deadland reclaimed. [Purified Deadland]." #removesite 1803 #nolog #notext #end
#newevent #req_freesites 1 #rarity 5  
#req_fornation 92 #nation -2 
#req_pop0ok #req_capital 0 
#req_maxpop 100 
#req_dominion 5 #req_temple 1 #req_fort 0 #req_forest 1 #req_site 1 
#msg "Deadland reclaimed. [Deadland]." #removesite 1802 #nolog #notext #end
#newevent #req_freesites 1 #rarity 5  
#req_fornation 92 #nation -2 
#req_pop0ok #req_capital 0 
#req_maxpop 100 
#req_dominion 5 #req_temple 1 #req_fort 0 #req_forest 1 #req_site 1
#msg "Carrionland reclaimed. [Carrionland]." #removesite 1804 #nolog #notext #end
#newevent #req_freesites 1 #rarity 5  #msg "Dreamland Created. [Dreamland]."
#req_fornation 92 #nation -2 
#req_pop0ok #req_capital 0 
#req_maxpop 100 
#req_dominion 1 #req_rare 10 #req_temple 1 #req_fort 0 #req_coast 1 #req_nositenbr 1805  #addsite 1805  
#nolog #notext #end
#newevent #req_freesites 1 #rarity 5 #msg "Dreamland Created." 
#req_fornation 92 #nation -2 
#req_pop0ok #req_capital 0 
#req_maxpop 100 
#req_dominion 5 #req_temple 1 #req_fort 0 #req_coast 1 #req_nositenbr 1805 #addsite 1805  
#nolog #notext #end
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing. Third, your unforted coastal temples now have a small chance of generating an astral site, though this is incompatible with other Deadlands sites.  This message will save to your province history for reference."
#req_fornation 92
#req_owncapital 1
#req_unique 1
#end
#newevent
#rarity 5
#nation -2
#nolog #notext
#req_site 1
#msg "Deadland. [Deadland]."
#end
#newevent
#rarity 5
#nation -2
#nolog #notext
#req_site 1
#msg "Reclaimed. [Purified Deadland]."
#end
#newevent
#rarity 5
#nation -2
#nolog #notext
#req_site 1
#msg "Carrion [Carrionland]."
#end
#newevent
#rarity 5
#nation -2
#nolog #notext
#req_site 1 
#msg "Dreamland. [Dreamland]."
#end
#selectmonster 962
#gcost 0
#end
#selectmonster 963
#gcost 0
#end
#selectmonster 1007
#gcost 0
#end
#selectmonster 1009
#gcost 0
#end
#selectmonster 1563
#gcost 0
#end
#selectmonster 1564
#gcost 0
#end
#selectmonster 1566
#gcost 0
#end
#selectmonster 1567
#gcost 0
#end
#selectmonster 1568
#gcost 0
#end
#selectmonster 1569
#gcost 0
#end
#selectmonster 1570
#gcost 0
#end
#selectmonster 1571
#gcost 0
#end
#selectmonster 1572
#gcost 0
#end
#selectmonster 1573
#gcost 0
#end
#selectmonster 1574
#gcost 0
#end
#selectmonster 1575
#gcost 0
#end
#selectmonster 1576
#gcost 0
#end
#selectmonster 1639
#gcost 0
#end
#selectmonster 1640
#gcost 0
#end
------------------------------
------THERODOS CHANGES--------
------------------------------
#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing summod.  This message exists to alert you to the following significant changes to the nation you are playing.  Popkill and sacred rec-limits scale with growth and death scales. Death scales will freespawn the occasional spectral Melia.  You have a global that recreates the Malediction.  You have access to new triton, mermen, and human swordsmen, as well as a new coastal mage. Your sacreds are better on offense.  This information is now saved to your province history."
#req_fornation 95
#req_owncapital 1
#req_unique 1
#req_turn 2
#nolog
#end
--Sacred Changes
#newweapon 1419
#copyweapon 6
#name "Sword Dance"
#nratt 2
#end
#newweapon 1420
#copyweapon 645
#name "Sword Dance"
#nratt 2
#end
#newweapon 1421
#hardmrneg
#dmg 5
#def 2
#len 1
#magic
#slash
#name "Sword Dance"
#nratt 2
#end
--Monster Changes
#selectspell 1065 --summon ephor
#fatiguecost 500
#end
#selectmonster 2843 --spectral kourete
#clearweapons
#weapon 1421
#end
#selectmonster 2839 --kourete
#clearweapons
#weapon 1420
#end
#selectmonster 2837 --korybant
#cleararmor
#clearweapons
#weapon 1419
#armor 9
#armor 209
#armor 20
#end
#newmonster 6324
#name "Telkhine Adjutant"
#descr "The Telkhine Adjutants are mages of the storm, well versed in the magic of water and air.  Trained to accompany the Telkhines themselves when on campaign, since the Malediction they have suffered badly due to the extensive training they require.  Still, their skills are sufficient to lead the navy of Therodos and bring its ships to safe harbor."
#spr1 "./summod/ThedStormcaller1.tga"
#spr2 "./summod/ThedStormcaller2.tga"
#gcost 10010
#slowrec
#holy
#hp 10
#size 2
#att 8
#def 8
#str 10
#prec 12
#ap 12
#mapmove 2
#enc 4
#mr 15
#mor 9
#weapon 9
#armor 158
#sailing 2 999
#nametype 107
#poorleader
#poormagicleader
#startage 58
#magicskill 1 1
#magicskill 2 2
#custommagic 4992 100
#custommagic 4992 10
#end
#newmonster 6325
#name "Therodian Swordsman"
#descr "The armies of ancient Therodos were vastly superior to their neighbors.  Well-drilled hoplites clad in Telkhine iron conquered all lands that the God-Kings would covet.  When the Telkhine kingdom was shattered and drowned, the skills of metalcrafting were kept by the Kaberoi guilds. Modeled after the successor empires, swordsmen were recruited to bolster the armies of Therodos, where they are armed with the iron of the guilds."
#spr1 "./summod/ThedSword_1.tga"
#spr2 "./summod/ThedSword_2.tga"
#gcost 10
#hp 12
#size 2
#att 11
#def 11
#str 10
#prec 10
#ap 12
#mapmove 2
#enc 4
#mr 10
#mor 15
#weapon 6
#armor 9
#armor 123
#armor 209
#nametype 107
#end
#newmonster 6326 --Triton Merc
#copystats 2385
#spr1 "./summod/pelagian_mercenary.tga"
#spr2 "./summod/pelagian_mercenary_attacking.tga"
#name "Triton Mercenary"
#descr "Therodos has a long history of trade with the Pelagian tritons. When Therodos was born again, pelagian mercenaries naturally came to enlist under the banner of Therodos. Daktyls, disapproving of their primitive-looking coral equipment, used the secrets of the Telkhines to forge bronze weaponry for them. Some Therodians whisper that some of these mercenaries are spies of the Triton Kings, looking to steal the secret of underwater bronze."
#clearweapons
#cleararmor
#weapon 645
#armor 135
#armor 100
#armor 209
#gcost 10012
#end
#newmonster 6327 --Triton Commander
#copystats 1069
#spr1 "./summod/pelagian_mercenary_capitain.tga"
#spr2 "./summod/pelagian_mercenary_capitain_attacking.tga"
#name "Triton Mercenary Captain"
#descr "Therodos has a long history of trade with the Pelagian tritons. When Therodos was born again, pelagian mercenaries naturally came to enlist under the banner of Therodos. Daktyls, disapproving of their primitive-looking coral equipment, used the secrets of the Telkhines to forge bronze weaponry for them. Some Therodians whisper that some of these mercenaries are spies of the Triton Kings, looking to steal the secret of underwater bronze."
#clearweapons
#cleararmor
#weapon 645
#armor 135
#armor 100
#armor 209
#gcost 10012
#end
#newmonster 6328 --merman Merc
#copystats 2810
#name "Merman Mercenary"
#spr1 "./summod/MermanS_1.tga"
#spr2 "./summod/MermanS_2.tga"
#descr "Therodos has a long history of trade with the Pelagian tritons. When Therodos was born again, pelagian mercenaries naturally came to enlist under the banner of Therodos. Daktyls, disapproving of their primitive-looking coral equipment, used the secrets of the Telkhines to forge bronze weaponry for them. Some Therodians whisper that some of these mercenaries are spies of the Triton Kings, looking to steal the secret of underwater bronze."
#gcost 10012
#hp 11
#att 10
#def 10
#clearweapons
#cleararmor
#weapon 645
#armor 135
#armor 100
#armor 209
#landshape 6329
#end
#newmonster 6329 --merman merc land
#copystats 2809
#name "Merman Mercenary"
#spr1 "./summod/MermanL_1.tga"
#spr2 "./summod/MermanL_2.tga"
#descr "Therodos has a long history of trade with the Pelagian tritons. When Therodos was born again, pelagian mercenaries naturally came to enlist under the banner of Therodos. Daktyls, disapproving of their primitive-looking coral equipment, used the secrets of the Telkhines to forge bronze weaponry for them. Some Therodians whisper that some of these mercenaries are spies of the Triton Kings, looking to steal the secret of underwater bronze."
#gcost 10012
#hp 11
#att 10
#def 10
#clearweapons
#cleararmor
#weapon 645
#armor 135
#armor 100
#armor 16
#watershape 6328
#end
---Melias
#selectmonster 2833 --Melia Classic
#awe 1
#end
#newmonster 6330--Spectral melia --placeholder
#copystats 2833
#spr1 "./summod/spectral_melia.tga"
#spr2 "./summod/spectral_melia_attacking.tga"
#name "Spectral Melia"
#descr "The Meliai are the semi-divine daughters of the Daktyloi. They formed a nobility of artists and performers unique to the Therodian culture. Their divine dances brought joy and stability to the land and became a means to rule. Human interpreters followed their processions and artistic works and human servants provided for them. With the fall of ancient Therodos most of them perished, and once dead their shattered souls were barred from entering the underworld and their ghosts remained in the sunken lands they once inhabited. Unlike lesser humans, spectres of Meliai are aware of their condition. Their once-divine beauty is tarnished by their undeath, and they now wield the stygian power of their masters."
#gcost 0
#clearspec
#amphibian
#holy
#undead
#ethereal
#inspirational 1
#heal
#enc 0
#coldres 15
#poisonres 25
#hp 17
#str 8
#mapmove 3
#ap 8
#float
#clearweapons
#weapon 281
#cleararmor
#armor 156
#clearmagic
#magicskill 5 1
#magicskill 8 1
#custommagic 1792 100
#okleader
#nametype 160
#end
#newevent
#rarity 5
#req_unique 1
#req_fornation 95
#req_owncapital 1
#req_pop0ok
#req_death 1
#nation -2
#msg "Guaranteed Undead Melia in cap"
#com 6330
#notext
#nolog
#end
--Death 1 events
#newevent
#rarity 5
#req_rare 1
#req_fornation 95
#req_pop0ok
#req_death 1
#req_growth -1
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#req_dominion 4
#req_maxdominion 5
#msg "Undead Melia in fort, death 1 dom 4-5"
#com 6330
#notext
#nolog
#end
#newevent
#rarity 5
#req_rare 2
#req_fornation 95
#req_pop0ok
#req_death 1
#req_growth -1
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#req_dominion 6
#req_maxdominion 8
#msg "Undead Melia in fort, death 1 dom 6-8"
#com 6330
#notext
#nolog
#end
#newevent
#rarity 5
#req_rare 3
#req_fornation 95
#req_pop0ok
#req_death 1
#req_growth -1
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#req_dominion 9
#msg "Undead Melia in fort, death 1 dom 9-10"
#com 6330
#notext
#nolog
#end
--Death 2 events
#newevent
#rarity 5
#req_rare 2
#req_fornation 95
#req_pop0ok
#req_death 2
#req_growth -2
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#req_dominion 4
#req_maxdominion 5
#msg "Undead Melia in fort, death 2 dom 4-5"
#com 6330
#notext
#nolog
#end
#newevent
#rarity 5
#req_rare 4
#req_fornation 95
#req_pop0ok
#req_death 2
#req_growth -2
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#req_dominion 6
#req_maxdominion 8
#msg "Undead Melia in fort, death 2 dom 6-8"
#notext
#nolog
#end
#newevent
#rarity 5
#req_rare 6
#req_fornation 95
#req_pop0ok
#req_death 2
#req_growth -2
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#req_dominion 9
#msg "Undead Melia in fort, death 2 dom 9-10"
#com 6330
#notext
#nolog
#end
--Death 3 events
#newevent
#rarity 5
#req_rare 3
#req_fornation 95
#req_pop0ok
#req_death 3
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#req_dominion 4
#req_maxdominion 5
#msg "Undead Melia in fort, death 3 dom 4-5"
#com 6330
#notext
#nolog
#end
#newevent
#rarity 5
#req_rare 6
#req_fornation 95
#req_pop0ok
#req_death 3
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#req_dominion 6
#req_maxdominion 8
#msg "Undead Melia in fort, death 3 dom 6-8"
#com 6330
#notext
#nolog
#end
#newevent
#rarity 5
#req_rare 9
#req_fornation 95
#req_pop0ok
#req_death 3
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#req_dominion 9
#msg "Undead Melia in fort, death 3 dom 9-10"
#com 6330
#notext
#nolog
#end
--Global enchantment
#newspell
#school 5
#researchlevel 6
#name "Summon the Waters of Stygia"
#descr "The caster recreates the old and malefic poison made of stygian waters and sulfur that prompted the Pantokrator to emtomb the Telkhines in Tartarus. This poison will make the land of Therodos a lifeless wasteland, but once purged of lesser life the essence of the poisoned water will be concentrated and harvestable. The reappearence of that poison will also make dead kouretes appear in large numbers, their dance accompanied by the otherwordly music of spectral Melias."
#path 0 5
#pathlevel 0 5
#path 1 2
#pathlevel 1 2
#effect 10081
#damage 200
#fatiguecost 5000
#restricted 95
#spec 8388608
#end
#newsite 1755
#name "Stygian Stagnant Waters"
#path 5
#level 5
#rarity 5
#gems 2 1
#incscale 3
#end
#newevent
#rarity 5
#req_enchdom 200
#req_pop0ok
#nation -2
#incscale 3 
#kill 30
#msg "Stygian Water Poisoning"
#notext
#nolog
#end
#newevent
#rarity 5
#req_fornation 95
#req_enchdom 200
#req_permonth 5
#req_unique 20
#req_pop0ok
#req_maxpop 150
#req_fullowner
#req_foundsite 0
#nation -2
#msg "Site for depleted province [Stygian Stagnant Waters]"
#addsite 1755
#notext
#nolog
#end
#newevent
#rarity 5
#req_fornation 95
#req_enchdom 200
#req_pop0ok
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#msg "Spectral Kouretes freespawn"
#1d3units 2843
#notext
#nolog
#end
#newevent
#rarity 5
#req_rare 20
#req_fornation 95
#req_enchdom 200
#req_pop0ok
#req_fort 1
#req_temple 1
#req_lab 1
#req_fullowner
#nation -2
#msg "Undead Melia freespawn"
#com 6330
#notext
#nolog
#end
---Sites
#newmonster 6318 --kourete 2
#copystats 2839
#name "Kourete"
#reclimit 2
#firstshape 2839
#copyspr 2839
#end
#newmonster 6319 --kourete 4
#copystats 2839
#name "Kourete"
#reclimit 4
#firstshape 2839
#copyspr 2839
#end
#newmonster 6320 --kourete 6
#copystats 2839
#copyspr 2839
#name "Kourete"
#reclimit 6
#firstshape 2839
#end
#newmonster 6321 --Korybant 2
#copystats 2837
#firstshape 2837
#copyspr 2837
#reclimit 2
#end
#newmonster 6322 --Korybant 4
#copystats 2837
#firstshape 2837
#copyspr 2837
#reclimit 4
#end
#newmonster 6323 --Korybant 6
#copystats 2837
#firstshape 2837
#copyspr 2837
#reclimit 6
#end
#newsite 1807-- Telkhinis
#name "Sunken Agora"
#path 3
#rarity 5
#level 0
#mon 6318
#end
#newsite 1808-- Telkhinis
#name "Sunken Odeon"
#mon 6319
#path 3
#rarity 5
#level 0
#end
#newsite 1809-- Telkhinis
#name "Sunken Orchestra"
#mon 6320
#path 3
#rarity 5
#level 0
#end
#selectnation 95
#domkill 8
#uwcom1 1051-- UW scout
#uwcom2 6327
#uwunit1 6326
#uwunit2 6328
#coastcom1 6324
#coastunit1 6325
#end
----------------------
#newevent 
#msg "Telkhinis 7. [Sunken Agora]."  
#req_owncapital 1 
#rarity 5 
#req_fort 1 
#nation -2 
#req_fornation 95 
#notext 
#nolog 
#req_death 0 
#req_growth -1 
#req_freesites 1 
#req_nositenbr 1807 
#addsite 1807 
#end
#newevent 
#msg "Telkhinis 8. [Sunken Odeon]."  
#req_owncapital 1 
#rarity 5 
#req_fort 1 
#nation -2 
#req_fornation 95 
#notext #nolog 
#req_growth 1 
#req_death -2 
#req_freesites 1 
#req_nositenbr 1808 
#addsite 1808 
#end
#newevent #msg "Telkhinis 9. [Sunken Orchestra]."  
#req_owncapital 1 #rarity 5 
#req_fort 1 
#nation -2 
#req_fornation 95 
#notext 
#nolog 
#req_growth 3 
#req_freesites 1 
#req_nositenbr 1809 
#addsite 1809 
#end
#newevent #msg "Deathremoval. [Sunken Agora]." 
#rarity 5 
#nation -2 
#req_fornation 95 
#notext 
#nolog 
#req_death 2 
#req_site 1
#removesite 1807  
#end
#newevent #msg "Telkhinis3 [Sunken Agora]." 
#req_owncapital 1  
#rarity 5 
#nation -2 
#req_fornation 95 
#notext 
#nolog 
#req_growth 1 
#req_site 1
#removesite 1807  
#end
#newevent #msg "Deathremoval. [Sunken Odeon]." 
#req_owncapital 1  
#rarity 5 
#nation -2 
#req_fornation 95 
#notext 
#nolog 
#req_death 0 
#req_site 1
#removesite 1808  
#end
#newevent 
#msg "Telkhinis5 [Sunken Odeon]." 
#req_owncapital 1 
#rarity 5 
#nation -2 
#req_fornation 95 
#notext 
#nolog 
#req_growth 3 
#req_site 1 
#removesite 1808  
#end
#newevent #msg "Deathremoval. [Sunken Orchestra]." 
#req_owncapital 1 
#rarity 5 
#nation -2 
#req_fornation 95 
#notext 
#nolog 
#req_death -2 
#req_site 1 
#removesite 1809  
#end
#newevent 
#msg "Nofort. [Sunken Agora]." 
#rarity 5  
#req_fort 0 
#nation -2 
#notext 
#req_site 1
#removesite 1807
#end
#newevent 
#msg "Nofort. [Sunken Odeon]." 
#rarity 5  
#req_fort 0 
#nation -2 
#notext 
#nolog   #req_site 1
#removesite 1808 
#end
#newevent  #msg "Nofort. [Sunken Orchestra]." 
#rarity 5  #req_fort 0 #nation -2 #notext #nolog  #req_site 1
#removesite 1809 
#end
#newevent #msg "Enemy. [Sunken Agora]." #rarity 5 #req_notnation 95 #req_coast 1 #nation -2 #notext #nolog  #req_site 1 #removesite 1807 #end
#newevent #msg "Enemy. [Sunken Odeon]." #rarity 5 #req_notnation 95 #req_coast 1 #nation -2 #notext #nolog  #req_site 1 #removesite 1808 #end
#newevent  #msg "Enemy. [Sunken Orchestra]." #rarity 5 #req_notnation 95 #req_coast 1 #nation -2 #notext #nolog #req_site 1 #removesite 1809 #end
#newsite 1812
#name "Agora"
#mon 6321
#path 3
#rarity 5
#level 0
#end
#newsite 1810
#name "Odeon"
#mon 6322
#path 3
#rarity 5
#level 0
#end
#newsite 1811
#name "Orchestra"
#mon 6323
#path 3
#rarity 5
#level 0
#end
#newevent #req_freesites 1 #msg "Agora.  [Agora]. " #req_nositenbr 1812 #rarity 5 #req_fort 1 #req_coast 1 #nation -2 #req_fornation 95 #notext #nolog #req_death 0 #req_growth -1  #addsite 1812 #end
#newevent #req_freesites 1  #msg "Odeon. [Odeon]." #req_nositenbr 1810 #rarity 5 #req_fort 1 #req_coast 1  #nation -2 #req_fornation 95 #notext #nolog #req_growth 1 #req_death -2   #addsite 1810 #end
#newevent #req_freesites 1  #msg "Orchestra. [Orchestra]." #req_nositenbr 1811 #rarity 5 #req_fort 1 #req_coast 1  #nation -2 #req_fornation 95 #notext #nolog #req_growth 3    #addsite 1811 #end
#newevent #msg "Agora. [Agora]."  #rarity 5 #nation -2 #req_fornation 95 #notext #nolog #req_death 2 #req_site 1 #removesite 1812 #end
#newevent #msg "Agora. [Agora]." #rarity 5 #nation -2 #req_fornation 95 #notext #nolog #req_growth 1 #req_site 1 #removesite 1812  #end
#newevent #msg "Odeon. [Odeon]." #rarity 5 #nation -2 #req_fornation 95 #notext #nolog #req_death 0 #req_site 1 #removesite 1810 #end
#newevent #msg "Odeon. [Odeon]." #rarity 5 #nation -2 #req_fornation 95 #notext #nolog #req_growth 3 #req_site 1 #removesite 1810  #end
#newevent #msg "Orchestra. [Orchestra]." #rarity 5 #nation -2 #req_fornation 95 #notext #nolog #req_death -2 #req_site 1 #removesite 1811 #end
#newevent #req_site 1 #msg "Agora. [Agora]." #rarity 5  #req_fort 0  #nation -2 #notext #nolog  #req_site 1 #removesite 1812 #end
#newevent #req_site 1 #msg "Odeon. [Odeon]."  #rarity 5  #req_fort 0  #nation -2 #notext #nolog #req_site 1  #removesite 1810 #end
#newevent #req_site 1 #msg "Orchestra. [Orchestra]."  #rarity 5  #req_fort 0  #nation -2 #notext #nolog #req_site 1  #removesite 1811 #end
#newevent #req_site 1 #msg "Agora. [Agora]."  #rarity 5 #req_notnation 95  #nation -2 #notext #nolog #req_site 1  #removesite 1812 #end
#newevent #req_site 1 #msg "Odeon. [Odeon]."  #rarity 5 #req_notnation 95  #nation -2 #notext #nolog #req_site 1   #removesite 1810 #end
#newevent #req_site 1 #msg "Orchestra. [Orchestra]."  #rarity 5 #req_notnation 95  #nation -2 #notext #nolog #req_site 1   #removesite 1811 #end
---- Telkhine Poison
#selectmonster 2873
#incscale 3
#end
#selectmonster 2874
#incscale 3
#end

