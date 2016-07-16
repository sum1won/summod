#modname "Popkill Overhaul"
#description "Only includes changes to popkill nations"
#version 1.0


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
#defcom1 678
#defcom2 2333
#end

#newevent 
#req_fornation 62
#nation -2
#rarity 5
#req_rare 20
#req_owncapital 1
#req_maxturn 12
#req_nomonster 678
#com 678
#end

#newevent 
#req_fornation 62
#nation -2
#rarity 5
#req_rare 40
#req_owncapital 1
#req_nomonster 678
#req_maxturn 15
#com 681
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


#newsite 1818
#name "Void Rift"
#path 4
#level 0
#rarity 5
#voidgate 20
#end

#newmonster 6413
#copystats 757
#copyspr 757
#name "Voidrift Sacrifice"
#landdamage 100
#uwdamage 100
#firstshape 757
#end

#newevent
#req_pop0ok
#rarity 5
#nation -2
#req_fornation 92
#req_freesites 1
#req_nositenbr 1818
#req_dominion 3
#req_monster 6413
#msg "The ritual has succeeded!  A rift in reality has been created!"
#nolog
#addsite 1818
#end

#newspell
#name "Sunder Reality"
#descr "A starspawn attempts to create a connection to the void, a dangerous ritual that can only happen in a fort where the Dream holds sway"
#school 5
#researchlevel 6
#fatiguecost 1000
#path 0 4
#path 1 2
#pathlevel 0 5 -- change
#pathlevel 1 2 --change
#restricted 92
#effect 10001
#provrange 1
#nowatertrace 1
#nolandtrace 1
#damage 6413
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
#end
#selectmonster 1564
#gcost 0
#end
#selectmonster 1566
#gcost 0
#resources 1
#end
#selectmonster 1567
#gcost 0
#resources 1
#end
#selectmonster 1568
#gcost 0
#resources 1
#end
#selectmonster 1569
#gcost 0
#resources 1
#end
#selectmonster 1570
#gcost 0
#resources 1
#end
#selectmonster 1571
#gcost 0
#resources 1
#end
#selectmonster 1572
#gcost 0
#resources 1
#end
#selectmonster 1573
#gcost 0
#resources 1
#end
#selectmonster 1574
#gcost 0
#resources 1
#end
#selectmonster 1575
#gcost 0
#end
#selectmonster 1576
#gcost 0
#resources 1
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
#sailing 999 2
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
#armor 209
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



