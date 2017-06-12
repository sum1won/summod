# summod
This is summod, a dominions 4 overhaul mod, and it is a work in progress. 
For discussion: http://z7.invisionfree.com/Dom3mods/index.php?showtopic=2764 

Thanks to: LambertS, Moggers, Ohlmann, Amuys, Johannes, Algulod, llamabeast, Zonk, Sy, Cruxador, Iceland, Torgoni, Malakal, Fungalreason, AN, Maerlande, Earcaraxe, Eustachy, Yakri, PyroICF, Kate Micucci, EAlb, Warspirit, various anons, and anyone else I've forgotten.

What is the purpose of this mod?    
The mod's purpose is a general "gameplay improvement mod." This primarily involves increasing gameplay variety. While balance is involved in this, it is not the only consideration.  The changes to the generic section can be quite conservative, but certain nations with severe underlying flaws, such as LA Pythium (coming soon!), receive comprehensive rebuilds.

RANGES USED:   Units 6300-6999;  Weapons 1400-1500;  Armor 750-780;  Sites 1800-1850;  Nametypes   ; Montag 1300-1320;  Item 700-799;  Spell; restrictitem 1100-1150;  Nations;  mercenary; event; Sprites: 118
****************************************************************************************************************
Changelog (v0.77)

Table of Contents

1. [Magic Items](#magic-items)  
   * [One-handed Weapons](#one-handed-weapons)
   * [Shields](#shields)
   * [Two-handed Weapons](#two-handed-weapons)
   * [Armor](#armor)
   * [Helmets](#helmets)
   * [Boots](#boots)
   * [Miscellaneous Items](#miscellaneous-items)
   * [Artifacts](#artifacts)
2. [Non-summon Spells](#non-summon-spells)
   * [Site-search Spells](#site-search-spells)
   * [Domes](#domes)
   * [Globals](#globals)
   * [Misc Spells](#misc-spells)
   * [Battle Magic](#battle-magic)
3. [Summon Spells](#summon-spells)
   * [Fire](#fire)
   * [Earth](#earth)
   * [Air](#air)
   * [Water](#water)
   * [Astral](#astral)
   * [Death](#death)
   * [Nature](#nature)
   * [Blood](#blood)
4. [General Changes](#general-changes)
   * [Scales](#scales)
   * [Armor Changes](#armor-changes)
   * [Weapons](#weapons)
   * [Indie Changes](#indie-changes)
5. [National Changes](#national-changes)  
    1. [Early Age](#early-age)
        * [Arcoscephale, Golden Era](#arcoscephale-golden-era)
        * [Ermor, New Faith](#ermor-new-faith)
        * [Ulm, Enigma of Steel](#ulm-enigma-of-steel)
        * [Marverni, Time of Druids](#marverni-time-of-druids)
        * [Sauromatia, Amazon Queens](#sauromatia-amazon-queens)
        * [T'ien Ch'i, Spring and Autumn](#tien-chi-spring-and-autumn)
        * [Machaka, Lion Kings](#machaka-lion-kings)
        * [Mictlan, Reign of Blood](#mictlan-reign-of-blood)
        * [Abysia, Children of Flame](#abysia-children-of-flame)
        * [Caelum, Eagle Kings](#caelum-eagle-kings)
        * [C'tis, Lizard Kings](#ctis-lizard-kings)
        * [Pangaea, Age of Revelry](#pangaea-age-of-revelry)
        * [Agartha, Pale Ones](#agartha-pale-ones)
        * [Tir na n'Og, Land of the Ever Young](#tir-na-nog-land-of-the-ever-young)
        * [Fomoria, The Cursed Ones](#fomoria-the-cursed-ones)
        * [Vanheim, Age of Vanir](#vanheim-age-of-vanir)
        * [Helheim, Dusk and Death](#helheim-dusk-and-death)
        * [Niefelheim, Sons of Winter](#niefelheim-sons-of-winter)
        * [Kailasa, Rise of the Ape Kings](#kailasa-rise-of-the-ape-kings)
        * [Lanka, Land of Demons](#lanka-land-of-demons)
        * [Yomi, Oni Kings](#yomi-oni-kings)
        * [Hinnom, Sons of the Fallen](#hinnom-sons-of-the-fallen)
        * [Ur, The First City](#ur-the-first-city)
        * [Berytos, The Phoenix Empire](#berytos-the-phoenix-empire)
        * [Xibalba, Vigil of the Sun](#xibalba-vigil-of-the-sun)
        * [Atlantis, Emergence of the Deep Ones](#atlantis-emergence-of-the-deep-ones)
        * [R'lyeh, Time of Aboleths](#rlyeh-time-of-aboleths)
        * [Pelagia, Pearl Kings](#pelagia-pearl-kings)
        * [Oceania, Coming of the Capricorns](#oceania-coming-of-the-capricorns)
        * [Therodos, Telkhine Spectre](#therodos-telkhine-spectre)  
    2. [Middle Age](#middle-age)
        * [Arcoscephale, The Old Kingdom](#arcoscephale-the-old-kingdom)
        * [Ermor, Ashen Empire](#ermor-ashen-empire)
        * [Sceleria, The Reformed Empire](#sceleria-the-reformed-empire)
        * [Pythium, Emerald Empire](#pythium-emerald-empire)
        * [Man, Tower of Avalon](#man-tower-of-avalon)
        * [Eriu, Last of the Tuatha](#eriu-last-of-the-tuatha)
        * [Ulm, Forges of Ulm](#ulm-forges-of-ulm)
        * [Marignon, Fiery Justice](#marignon-fiery-justice)
        * [Mictlan, Reign of the Lawgiver](#mictlan-reign-of-the-lawgiver)
        * [T'ien Ch'i, Imperial Bureaucracy](#tien-chi-imperial-bureaucracy)
        * [Machaka, Reign of Sorcerors](#machaka-reign-of-sorcerors)
        * [Agartha, Golem Cult](#agartha-golem-cult)
        * [Abysia, Blood and Fire](#abysia-blood-and-fire)
        * [Caelum, Reign of the Seraphim](#caelum-reign-of-the-seraphim)
        * [C'tis, Miasma](#ctis-miasma)
        * [Pangaea, Age of Bronze](#pangaea-age-of-bronze)
        * [Asphodel, Carrion Woods](#asphodel-carrion-woods)
        * [Vanheim, Arrival of Man](#vanheim-arrival-of-man)
        * [Jotunheim, Iron Woods](#jotunheim-iron-woods)
        * [Vanarus, Land of the Chuds](#vanarus-land-of-the-chuds)
        * [Bandar Log, Land of the Apes](#bandar-log-land-of-the-apes)
        * [Shinuyama, Land of the Bakemono](#shinuyama-land-of-the-bakemono)
        * [Ashdod, Reign of the Anakim](#ashdod-reign-of-the-anakim)
        * [Nazca, Kingdom of the Sun](#nazca-kingdom-of-the-sun)
        * [Xibalba, Flooded Caves](#xibalba-flooded-caves)
        * [Atlantis, Kings of the Deep](#atlantis-kings-of-the-deep)
        * [R'lyeh, Fallen Star](#rlyeh-fallen-star)
        * [Pelagia, Triton Kings](#pelagia-triton-kings)
        * [Oceania, Mermidons](#oceania-mermidons)  
        * [Ys, Morgen Queens](#ys-morgen-queens)
    3. [Late Age](late-age)
        * [Arcoscephale, Sibylline Guidance](#arcoscephale-sibylline-guidance)
        * [Pythium, Serpent Cult](#pythium-serpent-cult)
        * [Lemuria, Soul Gates](#lemuria-soul-gates)
        * [Man, Towers of Chelms](#man-towers-of-chelms)
        * [Ulm, Black Forest](#ulm-black-forest)
        * [Marignon, Conquerors of the Sea](#marignon-conquerors-of-the-sea)
        * [Mictlan, Blood and Rain](#mictlan-blood-and-rain)
        * [T'ien Ch'i, Barbarian Kings](#tien-chi-barbarian-kings)
        * [Jomon, Human Daimyos](#jomon-human-daimyos)
        * [Agartha, Ktonian Dead](#agartha-ktonian-dead)
        * [Abysia, Blood of Humans](#abysia-blood-of-humans)
        * [Caelum, Return of the Raptors](#caelum-return-of-the-raptors)
        * [C'tis, Desert Tombs](ctis-desert-tombs)
        * [Pangaea, New Era](#pangaea-new-era)
        * [Midgard, Age of Men](#midgard-age-of-men)
        * [Utgard, Well of Urd](#utgard-well-of-urd)
        * [Bogarus, Age of Heroes](#bogarus-age-of-heroes)
        * [Patala, Reign of the Nagas](#patala-reign-of-the-nagas)
        * [Gath, Last of the Giants](#gath-last-of-the-giants)
        * [Ragha, Dual Kingdom](#ragha-dual-kingdom)
        * [Xibalba, Return of the Zotz](#xibalba-return-of-the-zotz)
        * [Atlantis, Frozen Sea](#atlantis-frozen-sea)
        * [R'lyeh, Dreamlands](#rlyeh-dreamlands)

******************************************************

### Magic Items

#### One-handed Weapons

Axe of Hate: N2->N1

Bane Blade: +fear 1

Demon Whip: +undead leadership 20

Dragon Sceptre: const 6->4

Duskdagger: +bleeding, +slashing, dmg 2->4, att 2->4

Elf Bane: +dispels glamour

Evening Star: nratt 1->2 

Enchanted Sword: +MR1

Enchanted Spear: +MR1

Faithful: E1S1->S1

Fire Bola: nratt 1->3

Fire Brand: primary dmg 12->8

Fire Sword: +FR3

Frost Brand: primary dmg 16->6, att 4->2

Heartfinder Sword: B3->B2

Hunter's Knife: +bleeding

Ice Sword: +CR3

Knife of Damned: +horror mark on hit

Lightning Spear: const 4->6, +LR5, A1->2, +secondary effect(AoE 3, dmg 2, shock) 

Main Gauche of Parrying: def 4->6

Rat Tail: +beastmaster 2

Rod of the Phoenix: F4->F3

Sceptre of Authority: leadership 25->50

Shadow Brand: const 6->4, D2E1->D1E1, dmg 12->8

Smasher: E2->E1

Snake Bladder Stick: AoE 4->5

Star of Heroes: nratt 1->2

Star of Thraldom: False Fetters AoE 1->5

Summer Sword: const 4->6, N2E1->N1E1, supply bonus 100->200

Sword of Swiftness: def 4->1, autocasts Quickness

Thunder Whip: dmg 10->12, +secondary effect(AoE 1, dmg 10 stun)

Vine Whip: const 4->2, N2->N1, entanglement->AoE 1

Wand of Wildfire: F3->F2

#### Shields

Charcoal Shield: E2F1->E1F1

Enchanted shield: +MR1

Golden Hoplon: F2->F1, FR15->10

Lantern Shield: D2F1->D1F1

Lead Shield: enc 3->2, def 3->7

Lucky Coin: S2->S1, parry 4->6

Scutata Voltrunus: (repeat)autocasts a modified Shock Wave

Shield of the Accursed: S2B1->S1B1, +tainted 5, (repeat)autocasts modified Horror Mark(rng 10, prec -5) 

Shield of Valor: +inspirational 1

Totem Shield: (repeat)autocasts a healing spell (AoE3, rng 8, heal 1+) 

Weightless Tower Shield: A2->A1

Weightless Kite Shield: A2->A1, def 7->6, prot 21->19

#### Two-handed Weapons

Bane Blade: +fear 3, dmg 9->12

Banefire Crossbow: const 6->4, ammo 12->24

Bow of War: const 6->4, ammo 12->24, dmg 11->13

Bow of Botulf: ammo 12->24

Carmine Cleaver: F2E1->F1E1, fireshield 7->10

Doom Glaive: decay->difficult to resist

Enchanted Pike: +MR1, def 1->3

Ethereal Crossbow: ammo 12->24

Gate Cleaver: E3->E2

Gloves of the Gladiator: N2->N1, dmg 3->5, def 1->3

Golden Arbalest: nratt 2->3, ammo 12->24

Halberd of Might: strength bonus 4->8

Hammer of the Mountains: att -1->2

Hell Sword: B3F2->B2F1, dmg 9->15

Ice Pebble Staff: W3->W2

Implementor Axe: dmg 10->12, +on-hit effect(Lesser Fear)

Ivory Bow: D3A1->D1A1, dmg 15->18, prec 2->5, ammo 12->24

Just Man's Cross: prec 4->6, ammo 12->24

Longbow of Accuracy: dmg 15->18, ammo 12->24

Midget Masher: AoE1, dmg 13->0

Moon Blade: S1->S2, +ethereal

Piercer: E1A1->E1, ammo 12->24

Skull Standard: +inspirational 1

Staff of Corrosion: W2F1->W1F1

Staff of Elemental Mastery: ritual range boost 1->2

Staff of Flame Focus: ritual range boost 1->2

Staff of Storms: A5->A4 (gem cost still 25)

Standard of the Damned: D4->D3, +100 undead leadership

Thunder Bow: +AoE1, dmg 0->-3, ammo 12->24

Vine Bow: +AoE1 entangle

Vision's Foe: nratt-3->-2, ammo 12->24

Wraith Sword: D4->D2, +fear, dmg 9->13

Wave Breaker: +autocasts Water Shield, +allows casting of Water Strike

#### Helmets

Crown of Command: +undead leadership 50, magic leadership 25->50

Helmet of Heroes: +leadership 50

Iron Face: 4E->3E

Mistletoe Garland: const 2->4, autocasts Twist of Fate 

Spirit Helmet: +SR5

Spirit Mask: D2N1->D1N1

Wraith Crown: D6->D4

#### Armor

Berserker Pelt: berserk 0->3

Black Steel Full Plate: enc 4->3

Blue Dragon Scale Mail: W2->W1, CR15->10

Bone Armor: D5->D4

Brightmail Haubergeon: const 4->6, +awe 1 

Chain Mail of Displacement: +autocasts Mirror Image

Dire Wolf Pelt: att 1->3, def 1->3

Enchanted Ring Mail Armor: +MR1

Green Dragon Scale Mail: N2->N1, PR15->10

Hydra Skin Armor: prot 12->15, -FR5

Jade Armor: 2W1E->1W1E

Lightweight Scale Mail: const 2->0, prot 11->14

Marble Armor: prot 16->19, enc 3->2

Red Dragon Scale Mail: F2->F1, FR15->10

Robe of Invulnerability: D4->D2

Silver Hauberk: A2E1->A1E1

Weightless Scale Mail: A2->A1

#### Boots

Brimstone Boots: +reinvigoration 2

Chi Boots: nratt 1->2

#### Miscellaneous Items

Acorn Necklace: N1E1->N1

Amulet of Breathing: A2->A1

Amulet of Missile Protection: A2->A1

Amulet of the Fish: W1A1->W1

Arcane Lens: ritual range bonus 1->2

Astral Serpent: N1S1->N1

Barkskin Amulet: const 2->0, N2->N1

Barrel of Air: const 6->2

Bear Claw Talisman: const 0->2, E2->E1

Blood Pendant: ritual range 1->2

Bracers of Protection: def 2->3, prot 2->3

Cat Charm: N2->N1

Cat's Eye Amulet: D1E1->D1

Cauldron of Elven Halls: const 4->0

Champions Skull: D2->D1, +inspirational 1

Crystal Heart: E2S2->E1S1

Dancing Trident: dmg 19->21, def 1->2, att 0->3

Effigy of War: false army 50->80

Elixir of Life: N2F2->N1F1 

Enchanted Mirror: A2->A1

Enormous Cauldron: const 2->0, supply 100->120

Eye Pendant: D3E3->D3E2, patrolbonus 10->20, diseasehealer 1->3

Gossamer Cloth: const 2->4, hides 25->100

Imp Familiar:  undead leadership 1->10

Lychantropos' Amulet: str 4->3, berserk 0->3, +recuperation, -1 pathboost(all)

Manual of Water Breathing: N3W1->N3, breathing 50->200 points

Miraculous Cure All Elixir: N5->N4, disease healer 1->5

Mirror of False Impressions: A4->A2

Pendant of Luck: +autocasts Twist of Fate

Pills of Water Breathing: const 4->6, A2->A1, breathing 20->80 points

Ring of Warning: patrol 10->25

Sea King's Goblet: const 6->4, W3->W2, 100->150 points

Skull Talisman: const 0->2

Slave Matrix: E1S1->S1

Stone Idol: E2S2->E1S1

Stone Bird: att 0->2

Stone Sphere: S2E1->S1E1

The Copper Arm: E3F1->E1F1, +forgebonus 1

The Pebble Pouch: range str/3->str, nratt 1->3

Wall Shaker: A3->A2

Water Lens: ritual range 1->2

Wound Fend Amulet: E1S1->S1

#### Artifacts

Amon Hotep: F6S5->F5S5

Aseftik's Armor: enc 4->3, E4->E3

Atlas of Creation: E5S5->E5S4

Boots of Antaeus: E5N1->E3N1

Carcator the Pocket Lich: D4->D2

Draupnir: E5->E4

Fenris' Pelt: N4->N3

Gate Stone: E8S8->E7S7

Hammer of Forge Lord: forgebonus 4->8 

Harvest Blade: B3N1->B2N1, fear 5->15

Holger the Head: E1D1->E1, (+casts luck on himself)

Monolith Armor: E5->E4, prot 30->32, +reinvigoration 6

Nethgul: S3W2->S2W2

Percival the Pocket Knight: E2N1->E1N1, (hp 11->16, att 11->13, def 16->19, str 11->13)

Sun Slayer: D6->D5

Tempest: A6->A5

The Ark: F6S6->F5S5

The Horror Harmonica: S6D4->S5D3

The Manual of Crossbreeding: B3N3->B2N2

The Sharpest Tooth: N2S1->N1S1

The Staff from the Sun: S5F1->S4F1

The Summit: E6->E4, att 12->15, def 6->9, +armor piercing

Unquenched Sword: F7->F5, autocasts Unquenched Fire(Living Fire+Heat from Hell)

Wondrous Box of Monsters: N5->N3, +PR5

### Non-summon Spells


#### Site-search Spells

Acashic Knowledge: conj 6->5, 25->20 gems

Arcane Probing: 3->2 gems

Auspex: range 2->3

Dark Knowledge: 4->3 gems
 
#### Domes

Dome of Arcane Warding: ench 6->4, 10->6 gems 

Dome of Corruption: ench 7->5, 20->13 slaves

Dome of Flaming Death: ench7->5, 8->5 gems

Dome of Solid Air: ench 6->5, 20->12 gems

Forest Dome: ench 6->5, 10->8 gems

Frost Dome: ench 6->4, W5->W4, 15->8 gems

#### Globals

Astral Corruption: blood 7->9, 166->222 slaves

Celestial Rainbow: W7N5->W6N4, 80->60 gems

Fata Morgana: A7->A6, 90->80 gems

Forge of the Ancients: conj 7->9, 80->60 gems

Ghost Ship Armada: 60->40 gems, (Torgrin hp 14->30, str 12->15, +invulnerablility 10, +onebattlespell Undead Horde)

Guardians of the Deep: conj 8->6, 60->40 gems

Lure of the Deep: thau 8->7, 70->50 gems

Mechanical Militia: const 9->7, 80->60 gems

Purgatory: thau 7->6

Riches from Beneath: E5->E4, 70->40 gems 

Second Sun: evo 8->7, F8->F6, 80->50 gems

Strands of Arcane Power: evo 9->8

The Kindly Ones: conj 8->7, F6N4->F5N3

The Looming Hell: blood 9->6, B8-B7, 150->100 slaves

Wrath of the Sea: ench 8->6, 70->50 gems
  
#### Misc Spells

Acashic Record: 10->5 gems

Breath of the Desert: F3A1->F3

Divine Name: 25->14 gems

Dragon Master: ench 8->6, 30->14 gems

Gift of Reason: 20->12 gems

Raven Feast: A4->A3

#### Battle Magic

(New Spell) Gulf Stream: ench 5, F3, imitates friendly currents

(New Spell) Pyriphlogos Incantation: battlefield-wide fire booster, conj 5, F3, 3 gems

(New Spell) Siren's Blessing: ench 3, A3, removes amphibian penalty 

(New Spell) Wild Tangle: conj 3, AoE　2+, scaling version of Tangle Vines

Bonds of Fire: thau 2->1

Prison of Fire: thau 4->3

Rain of Stones: 1->2 gems

Numbness: alt 3->2

Quickness: +scales

Quickening: AoE 9+->9++

Earth Might: E2->E1, +scales

Iron Warriors: +scales(only to single targets)

Iron Will: +scales

Gift of Flight: +scales

Enlarge: +scales

Mossbody: +scales

Cheat Fate: +scales

Luck: +scales

Battle Fortune: +scales

Protection: +scales

Wooden Warriors: +scales(AoE 5->6+)

Wave Warriors: +scales

Army of Giants: +scales

Berserkers: thau 2->4, range 1->15, +scales	

Touch of Madness: thau 4->2, range 15->1

Sulphur Haze: +castable UW

Rust Mist: +castable UW

Ice Strike: +castable UW

Confusion: AoE 1->2

Weakness: +scales(only to single targets)

Enfeeble: AoE 6->10+

Unraveling: S6->S5, 6->4 pearls

Bone Melter: W3N2->W3N1, range 20->25

Sailor's Death: AoE1-> 1 target, 5+ effects

Curse of the Desert: AoE 5->6+

Arcane Bolt: Dmg 10+->10++

All mid-level resists now scale

Spirit Curse: horror marks in addition to cursing

Army of Rats: alt 9->8, N7-N6, 5->3 gems

Skeletal Legion: alt 6->5

Creeping Doom: +castable UW

Polymorph: range 20->20+

### Summon Spells

#### Fire

Flame Spirit: (+generates 1F gem/month)

Fire Drake: 7->5 gems

Summer Lions: summons 5+->7+, (prot 0->7)

Terracotta Army: summons 10++->16+++ (spear->pike), T'ien Ch'i gets a national version of the spell

#### Earth
 
Clockwork Soldiers: +castable UW, 8->6 gems (reinvigoration -15->-10, prot 18->20, AP 10->12)

Clockwork Horrors: +castable UW, (reinvigoration -15->-12)

Crusher: +castable UW, 15->10 gems (stone fist 1->2, +siege bonus 30)

Cave Drake: 5->4 gems

Fall Bears: summons 5+->8+ (+bite attack, prot 0->10)

Hidden Underneath: +castable UW, 75->60 gems, (sage/released one hp 8->13, warrior hp 10->17, king hp 12->18)

Hidden in Sand: 75->60 gems, (+poor amphibian)

Iron Dragon: +castable UW, 30->20 gems, (+commander, +noleader) 

Living Statues: 20->15 gems

Mechanical Men: +castable UW, summons 10++->12++, (prot 18->19)

Siege Golem: +castable UW, const 9->7, 20->10 gems 

Troll King's Court: 55->45 gems

Trolls: 15->10 gems

#### Air

Amphiptere: 5->4 gems, (prec 10->12)

Draconians: 45->40 gems (+talons attack, prot 9->12)

Spring Hawks: 20->30 gems, summons 5+->12++ (prot 0->2)

Watcher: +stone fist, +can be transported to an adjacent province for the first month it exists, after which it becomes immobile.

Wyvern: (size 5->4, prot 12->13 +talons attack)

#### Water

Asp Turtle: 13->8 gems

Catoblepas: 15->10 gems

Claymen: 5->10 gems, summons 5+->16+++

Gelatinous Cube: 4->3 gems, (AP 2->6, +recuperation)

Hidden in Snow: 75->60 gems, (+poor amphibian)

Ice Drake: 7->5 gems

Kokythiad: 40->35 gems

Naiad: 35->30 gems

Naiad Warriors: 30->20 gems

Sea King's Court: 55->45 gems

Sea Trolls: 15->10 gems, (fist->2xclaw)

Winter Wolves: 10->20 gems, summons 5+->10++ (hp 13->16, prot 0->4)

Yetis: 15->12 gems

#### Astral

Abomination: conj 25->15 pearls

Eater of the Dead: 8->6, D4S4->D3S2, 50->25 pearls, (+FR5, +SR5, +pierceresist
acid shield at three highest levels, slimer at two highest levels, plague at the highest level)

Ether Gate: 90->65 pearls, (ether lord hp 25->30; ether warriors hp 22->25)

Golem: 30->25 pearls

Juggernaut: 25->10 pearls

Telestic Animation: can transport itself to an adjacent province for the first month of its existence, 
after which it reverts to an immobile form.

#### Death

Arouse Hunger: summons 9+++->15+++(ghouls)

Bane: 7->6 gems, (hp 23->25 hp)

Behemoth: 10->8 gems

Leviathan: 12->10 gems, land AP 4->6, mapmove 1->2

Mound King: +castable UW

Pale Riders: +castable UW

Poison Golem: 35->25 gems, (banefireshield 5->10, +pierce/slash resist, +fear 10, +mapmove teleportation)

Reanimation: 5->1 gems, summons 10->4(skeletons)

Reanimate Archers: 5->10 gems, summons 10->20++(skeletal archers, banefire bows->armor piercing)

Revenant: +castable UW

Revive Wights: 20->12 gems

Legion of Wights: conj 9->8
 
Ziz: D3A2->D3A1

#### Nature

Ambush of Tigers: 10++->14++, (+stealthy 40)

Animal Horde: 25->18 gems

Summon Animals: 10->8 gems

Call of the Wild: (werewolf hp 20->25)

Construct Manikin: 12->20 gems, summons 10++->16++++

Construct Mandragora: 10->8 gems

Contact Forest Giant: (def 9->11, +grab and swallow attack)

Forest Troll Tribe: 37->33 gems, (+stealthy 40)

Contact Forest Trolls: 10->7 gems, (+stealthy 40)

Kithaironic Lion: N3E1->N2E1, 3->6 gems, summons 1->2

Lamia Queen: 25->20 gems

Lumber Construct: const 5->3, 5->4 gems (+siege 10)

Pride of Lions: summons 10++->13+++

Sleeper: (+sacred)

Sloth of Bears: (+bite attack)

Swamp Drake: 8->6 gems

Tarrasque: conj 9->6(unique), 25->20 gems (bite->bite and swallow, +prot 18->20, enc 4->2, commander, +noleader,  
+recuperation, +slash/pierce/blunt resist, +FR/CR/SR 2, +digest 3, +acid digest 2)

Vine Men: summons 3->5

Vine Ogres: summons 2->3

#### Blood

Bind Succubus: 66->44 gems

Blood Rite: summons 3->7(vampires)

Cross Breeding: 15->12 slaves

Improved Cross Breeding: 20->16 slaves

Dark Vines: 12->30 slaves, summons 2->5

Devil: (+fire shield 6)

Plague of Locusts: (heretic 1->2)

Ritual of Five Gates: 28->24 slaves

Spine Devil: 3->12 slaves, summons 1->3, (prec 5->11, +throw spines attack)

Serpent Fiend: 4->12 slaves, summons 1->3, (att 12->15, str 12->16)

### General Changes

#### Scales:  

Growth/Death: Income 3%->2% per scale

Ohlmann: both excellent in short term gold, and excellent in long term gold. Production is a bit weak, because it doesn't give much money and resources become weaker quite fast. I also think that sloth 3 is not punitive enough.

Maerlande:  I think growth is too obvious if you want money. If I remember correctly, Calahan used +2% for growth and gave production the other percent in his version of CBM for serious competition. I think that makes quite a difference to put a bit more decision between these two. Right now, I find growth is almost always a better choice.

sum1won: I'm including this discussion since I expect this is the biggest change in the mod.  I'd also note that I modeled income and total gold from growth and order, and the comparison suggests that growth is significantly better over the long term, and nearly as good over the short term.  The largest difference in gold is around turn 8-15 (varies depending on how aggressive expansion is) and never really rises above ~5% of income/total gold.  Largest difference I saw was a few hundred gold.

#### AI 

*Doesn't recruit certain particularly bad troops.

#### Thrones

*Seasonal thrones no longer placed UW.

#### Sites

Steel Ovens: level 0->1

Cedar Pillar: level 0->1

Well of Pestilence: rarity swapped with Bonedoor Tower

Ancient Ruin: summons 5 various bugs instead of 1 spider

Farm of Plenty: less common

Caveman Cave: gives 10 resources

Animal Cemetery: summons 4 carrion beasts instead of two

Flesh Eater's Isle: summons 4 ghouls instead of one

The Slaughterhouse: provides supply, summons some extra foulspawn

Isle of Saos: gives the correct units

#### Armor changes

*Surveyed armor and made changes.

Full Ring Mail: def -2->-1, rescost 7->6 (Logrians) 

Chain Hauberk: def -2->-1

Full Chain Mail: def -3->-2 (LA Man, MA Man, LA Agartha, MA Marignon)*

Plate Cuirass: def -1->0, enc 2->1 (LA Pythium, LA Pangaea LA Ulm, LA/MA Marignon, LA Caelum (two units), LA Ragha (one unit), Therodos (Korybants -increase enc, drop defense), MA Pelagia (one unit), MA/LA Arco) 

Plate Hauberk: def -3->-1, enc 4->2 (LA Pythium, Abysia, MA Machaka, LA Marignon, Ghandarvas, MA/LA Arco)**

Full Plate Mail: def -3->-2, enc 5->3 (LA Agartha (lots), MA/LA Marignon (Royal Guard), MA Machaka (Black Hunters))

Full Chain Ulm: def -3->-2 (MA Ulm) 

Full Plate Ulm: def -3->-2 (MA Ulm) 

Bronze Cuirass: def -1->0, enc 3->2 (Therodos, MA Pangaea, MA Pelagia)

Bronze Hauberk: enc 5->3 (MA Pan, Pelagia, Oceania, EA Arco, LA Gath)

Spider Armor: rescost 26->20, def -3->-2, enc 4->3 (Machaka)

Ashigaru Armor: def -1->0, enc 2->1 (Shinyu, Yomi, slightly Jomon)*

Samurai Armor: def -2->-1, enc 3->2 (Jomon, Shinyu, Yomi)*

Heavy Samurai Armor: def -3->-2, enc 4->3 (Jomon, Yomi)*

Basalt Armor: enc 6->4, rescost 30->25 (EA Atlantis)

Hoplon: enc 1->2 (this fully offsets the benefits Therodos gets from the cuirass changes)

Jingasa: rescost 2->1

Coral Cuirass: prot 10->12, enc 2->1, rescost 7->10 (MA, LA Atlantis)*

Coral Hauberk: prot 12->14, def -2->-1, enc 3->2, rescost 10->15 (EA Pelagia, MA, LA Atlantis)*

Coral Barding: prot 11->16, rescost 12->20 (Oceania Aphroi)*

Turtle Shell Armor: prot 9->10 (EA Pelagia, EA/MA Oceania)*

Turtle Shell Barding: prot 9->10 (Oceania Icthycentaurs)*

Centaur Barding (Bronze): prot 16->17, enc 4->3 (MA Pan) 

Centaur Barding (Iron): prot 17->18, enc 3->2 (LA Pan) 

Amber Hauberk: rescost 18->15

Amber Shield: def 4->6

*Added Laminated Scale Mail

*Added Treated Scale Hauberk

#### Weapons

Mace: dmg 5->6 (Nazca, Marignon, Bandar Log/Patala/Kailasa/Lanka, Mictlan)

Hammer: dmg 7->8 (MA Ulm, Claymen)

Maul: dmg 9->10  (MA Ulm)

Machaka Spear: rescost 3->2, att -1->0 (EA/MA Machaka)

Chakram: ammo 2->5 (Bandar Log, Patala)

Throw Spines: changed to dmg str-10

Obsidian Clubsword(1-h): dmg 4->5, att 0->1

Yari: rescost 1->2

Wakizashi: rescost 4->2

Added non-rust equipment from non-rust mod:

Laminated Glaive, Laminated Yari ,Spear, Knife, Bronze Glaive, Trident ,Bronzed Falchion, Bronzed Kryss

#### Indie Changes

*Barbarians no longer look like Skwisgaar; they now wield battleaxes.

*Ichtyid, Triton, Merman and Frog Clan poptypes now provide indie scouts.

*Amphibious poptypes now provide better troops and shamans.

*Various amphibious indies given non-ferric equipment.

Hoburg Crossbows: 7->9 gold

Horse Tribe Cavalry/Brother: 25->18 gold

Horse Tribe Chief/Brother(cmnd): 55->50 gold

Jade Maiden 370: 50->45 gold

Nightmare 369: 80->70 gold

Light Cavalry 24, 25, 26: 25->18 gold, (javelin cavalry spear-> light lances)

Heavy Cavalry 19, 21 (3 attacks): 35->25 gold, (base)rescost 20->15

Heavy Cavalry 20 (2 attacks): 30->25

Cataphract 1187: 40->35 gold

Mounted Commander 44, 45: (base)rescost 20->15

Imperial Commander 2117: 65->55 gold

Knight: 35->30 gold, (base)rescost 20->15

Knight Commander: (base)rescost 20->15

Grey Kight, Lord: (base)rescost 25->19

Holy Knight: (base)rescost 30->23

Fire Lord: (base)rescost 20->15

### National Changes

#### Early Age

##### Arcoscephale, Golden Era

Chariot Archer: 55->45 gold

##### Ermor, New Faith

Equites: 35->30 gold

Equites of the Sacred Shroud: 50->45 gold 

##### Ulm, Enigma of Steel

##### Marverni, Time of Druids

Eponi Knights: 30->25 gold, +hoof attack

Eponi Chieftain: 100->95 gold, +hoof attack

##### Sauromatia, Amazon Queens

Lancer, Raider: 20->17 gold 

Sauromatian Lancer, Sauromatian Raider: 25->22 gold  

Sauromatian Cataphract: 35->30 gold

Androphag: 75->55 gold 

Oioropata: 50->35 gold 

Warrior Priestess: 130->110 gold 

Warrior Queen: 175->145 gold 

Manflayer: 155->135 gold 

Hydra Hatchling: 35->28 gold, +recuperation

Hydra: 250->180 gold, +recuperation

Daughter of Typhon: conj 9->8, 30->20 gems

##### T'ien Ch'i, Spring and Autumn

Horseman: 20->18 gold

Noble: 50->40 gold, rescost(base) 25->10

Noble Commander: 110->100 gold, rescost(base) 25->8

Celestial Servant: 3->2 gems (from MA T'ien Ch'i changes)

Internal Alchemy: 10->2 gems (from MA T'ien Ch'i changes)

##### Machaka, Lion Kings

Machaka Militia: +foreign recruit

Machaka Warriors: 10->8 gold, spear->Machaka spear, +foreign recruit

Machaka Chief: +foreign recruit

Pygmy Warriors: +forest recruit

Spider Clan Archers: 15->13 gold

Spider Clan Warriors: +furs

Spider Clan Sorcerer: +not slow-to-recruit

Spider Rider: size 5->4, 50->35 gold

Great Spider: size 5->4, MR5->8, str 11->16, +cost upkeep (from MA Machaka changes)

##### Mictlan, Reign of Blood

Sun Warriors: 18->14 gold, hp 12->13, mapmove 1->2

Tlahuelpuchi: B2->B2D2, 25->34 slaves

Civateteo: B2D2->B2, (+douse 1)

*From Xibalba changes
Beast Bat: MR15->11, def 13->11, +animal, +undisciplined, -1 siege/defense (total siege/defense of 2.44->1.44 each)

##### Abysia, Children of Flame

Anathemant Dragon: 265->240 gold, +0.5ESDB, startage 35(32)->31(32)

Anathement Salamander: +0.1 ESDB, 175->150 gold

Annointed of Rhuax: 0.1->0.5 FESB, +douse 1

(New Spell) Children of Rhuax: Abysian version of Rhuax Pact, conj 3, F4E1, 2 gems

(New Spell) Abysian (Improved) Cross Breeding: Abysian-themed version of the (Improved) Cross Breeding spell  

Summon Scorpion Man: conj 8->6, 12->10 gems, (+commander, +iron cap, +torso slot)(credit to johannes)

*Casting Gift of Reason on demonspawn results in either a misbred commander (if they have afflictions), a blood hunter, or an assassin.

##### Caelum, Eagle Kings

##### C'tis, Lizard Kings

Lizard Chariot: 50->40 gold, 26->20 rescost, (bronze scale mail cuiraiss->iron, bronze cap->iron)

Serpent Dancers: stronger weapons (snake staff: att 1->2, dmg 3->5, on-hit poison 5[weak]->15[strong])

Summon Scorpion Man: conj 8->6, 12->10 gems, (+commander, +iron cap, +torso slot)(from Abysia changes-credit to johannes)

*Shaman Prophetshape gets a pathboost (S/N +1)

##### Pangaea, Age of Revelry

Minotaurs: 40->35 gold

Minotaur Warriors: 50->35 gold

##### Agartha, Pale Ones

Ancient One: spear->UW spear

Ancient Lord: battleaxe->bronze battleaxe

Engraver: hammer->(stone)knife

##### Tir na n'Og, Land of the Ever Young

Fir Bolg Militia, Fir Bolg Warrior, Shide Warrior: stone spear->bronze spear

##### Fomoria, The Cursed Ones

Fir Bolg Warrior: stone spear->bronze spear

##### Vanheim, Age of Vanir

Summon Valkyries: A3D1->A2D1, (from EA Helheim change)

Awaken Draugar: 12->10 gems

##### Helheim, Dusk and Death

Helkarl: 165->195 gold, +1.1 AD, leadership 80->40

Summon Valkyries: A3D1->A2D1, (also benefits EA/MA Vanheim)

Awaken Draugar: 12->10 gems

(New Spell) Rouse Draugar: conj 7, D4A1, 30 gems, summons 14++

*Helheim summons stronger Draugar than other nations. 

##### Niefelheim, Sons of Winter

Awaken Draugar: 12->10 gems

##### Kailasa, Rise of the Ape Kings

Bandar Warriors: 18->17 gold

Bandar Swordsmen: hp 18->20, att 11->12, def 10->11, prec 9->10

Light Bandar Archer: 18->17 gold   

Yavana Archers: 35->30 gold, def 11->12, awe 1->2, dagger->falchion

Yavanas: 40->30 gold, def 14->15, awe 1->2

Guhyakas: 30->26 gold, def 11->12, +javelin

Ghuyaka General: not slow-to-recruit, +javelin

Yakshas: def 11->13, awe 1->2

Yakshini: awe 1->2

*Summon changes apply to Kailasa, Bandar Log and Patala

Summon Devata: 45->40 gems, (S2->3, hp 28->40, str 17->18, att 14->15, def 12->14, 45->75 magical leadership,		
autocasts an animal-only Antimagic)

Summon Devala: 55->40 gems, (S3->4, +autocasts Celestial Music)

Summon Rudra: 55->45 gems, (hp 32->48, prot 2->4, str 18->20, def 13->15, att 15->17, prec 13->15, autocast Wrathful Skies)

Summon Gandharva: 18->15 pearls, (+weak anti-undead/demon ranged attack)

Summon Apsaras: (+weak anti-undead/demon ranged attack)

##### Lanka, Land of Demons

Bandar Warriors: 18->17 gold (note: bandar changes are there because bandar are being universally changed)

Bandar Archer: 18->17 gold   

Summon Dakini: 50->66 slaves (applies to Lanka, Bandar Log, Patala)

Summon Samanishada: B3D1->B2D1, 35->30 slaves

Summon Sandhyabalas: summons 3->4

*Lanka's indie priests have 2.5X upkeep costs. Will not display until turn after recruitment. Indie flavor text changed to reflect this.

##### Yomi, Oni Kings

*Summon changes from MA Shinuyama

Summon Karasu Tengus: conj 2->5, N1A1->N3A1, 3->10 gems, summons 3->12+

Summon Konoha Tengus: conj 3->2

Summon Dai Tengu: 55->40 gems

Contact Nushi: 25->20 gems

Summon Gozu-Mezu: 7->5 gems

##### Hinnom, Sons of the Fallen

Horites: +throw rocks

Horite Champions: +throw rocks

Rephaite Warriors: 115->100 gold

Kohen: 240->200 gold, leadership 80->40, +douse 1 

Ba'al: 455->430 gold, +douse 2

Melqarts: 485->460 gold, +not cap only

##### Ur, The First City

*Ur pretenders automatically heal all afflictions while at the capital.

*PD is less garbage, and includes sirrush, great lions, and more Enkidu of better quality.

Enkidu: 16->12 gold, att 10->9, +fort recruit

Enkidu Archer 16->15 gold, att 9->10, +fort recruit

Enkidu Soldier: 16->15 gold, att 10->11, def 11->12

Enkidu Warrior: 16->15 gold, att 10->11, def 11->12, +fort recruit

Enkidu Hunter, Head Hunter, Hunter Chief: att 10->11, def 8->9, +cap recruit

Enkidu Reaver, Bone Reader: +cap recruit

Enkidu Spear Guard: 16->18 gold, mor 10->11, att 10->11, def 11->13

Ur Guard: 19->18, def 12->13

Enki's Chosen: 29->26 gold, def 12->14

Gala: (elegist 2->4)

Sirrush: 200->170 gold, (prot 15->17)

##### Berytos, The Phoenix Empire

Telkhine: +increase death scale (from EA Therodos changes)

##### Xibalba, Vigil of the Sun

*Lances replaced with Stone lances, which are non-iron and +2 resources

Obsidian Dart: ammo 4->6 (Xibalban Dart Thrower)

Xibalban Warrior: 7->8 gold

Large Scorpion: rescost 1->34

Beast Bat: MR15->11, def 13->11, +animal, +undisciplined, -1 siege/defense (total siege/defense of 2.44->1.44 each)

Batab: +slow to recruit if recruited outside a fort

Ah Nakom: 70->75 gold, increase unrest 2->4/month

Onaqui: increase unrest 2->4/month

##### Atlantis, Emergence of the Deep Ones

(New Unit) Shambler Reefmage: relatively expensive for W1 1.0%FWE 0.5%FES, coast recruit

##### R'lyeh, Time of Aboleths

*Ferrous equipment replaced with UW equivalents

Slave Trooper(net), Lobo Guard: +coast recruit

Polypal Spawn: can go on land but die after 2 turns

Androdai: 190->125 gold, 1.0%WESD->1.1%WED

Polypal Mother: +can research

Grandmother: +inspired researcher

Mind Lord: 420->360 gold, 1.1%WESD -> 1.0%WSD 1.0%WESD 0.05%ED

(New Spell) Blessing of Limne: const 6, W4, 10 gems, mass-forge spell to produce Amulets of the Fish

##### Pelagia, Pearl Kings  

(New Spell) Blessing of Limne: const 6, W4, 10 gems, mass-forge spell to produce Amulets of the Fish

##### Oceania, Coming of the Capricorns

Ichtytaurs: 40->35 gold, +gore attack while underwater

Sirens: W2->W1 +1.0AW (A1W1 Sirens will be A2 in landshape)

Capricorns: 360->330 gold, +E1/-W1 pathboost on land, +small chance of a blood random.

(New Spell) Contact Angelfish: conj 7, N3W3, 40 gems, UW only, (A1W2N3 +1.0AW, +1A/-1W on land, flyer)

(New Spell) Contact Devilfish: blood 7, B3W3, 50 slaves, UW only, (W1E1B3 demon-kraken, aquatic)

(New Spell) Bind Shark Fiends: blood 4, 13 slaves, (demon-shark, berserking, 3 attacks, amphibious)

(New Spell) Feeding Frenzy: thau 4, N2B1, 2 gems, UW only, battlefield-wide animal and demon berserk

(New Spell) Sharknado: blood 9, B5W3, 40 slaves, UW only, summons 10++ Shark Fiends

##### Therodos, Telkhine Spectre
*Popkill scales with growth/death scales.  Still ~0.5 at G0, but ~0.8 at D3 and ~0.2 at G3

*Sacreds are reclimit 2 at D3, reclimit 4 at D1, reclimit 6 at G1, and reclimit 8 at G3

*Starting army is a now a mix of living and dead units.

Kourete, Spectral Kourete, Korybant: sword->50% chance of 3 attacks (slash, stab, bash)

Melia: awe 3->1

(New Unit) Spectral Melia. Taking death scales automatically provides it, with a small chance per fort of spawning additional Spectral Melia. This scales with dominion and death scales.  

(New Unit) Therodian Swordsman: heavy infantry, coast recuit

(New Unit) Merman Mercenary: heavy infantry, amphibian, UW recruit

(New Unit) Triton Mercenary: heavy infantry, aquatic, UW recruit

(New Unit) Triton Mercenary Captain: heavy infantry, aquatic, UW recruit

(New Unit) Telkhine Adjutant: A1W2 +1.1FAWD, slow-to-recruit, sailing, holy, old, coast recruit  

Call Ephor: 7->5 gems

Telkhine: +increase death scale

(New Spell) Summon the Waters of Stygia: conj 8, W5A2, 69 gems, global, increases popkill/death scales in Therodos territory, produces sacred freespawn, and has a chance at generating sites that produce water gems.

#### Middle Age

##### Arcoscephale, The Old Kingdom

##### Ermor, Ashen Empire
*Ermor receives a D1 site that spawns in provinces (not water provinces) they control with high dominion and low population. Marignon can convert these sites into S1 sites by sufficient preaching with an inquisitor.

*Reduced capital income.

*50% more gold cost for all forts.  

*Starts at Cold 1.

Knight of the Unholy Sepulchre: att 13->11, lance->light lance, kite shield->rusty kite shield

Dusk Elders: slightly more resistant to magic duel (equivalent to having +S1)

##### Sceleria, The Reformed Empire

##### Pythium, Emerald Empire

Angel of Fury: 35->25 pearls, blood vengeance 4->0, +damage reflection 2, +self-blesses

Angelic Host: S5->S4F1, 50->40 pearls

Heavenly Choir: S7F2->S5F3, 144->88 pearls, (Angels of the Heavenly Choir: +weak anti-undead/demon ranged attack)

Serpent Cataphract: 60->45 gold, rescost 56->49

Serpent Lord: 90->75 gold, rescost 56->49

Hydra Hatchling: 35->28 gold, +recuperation (changes from EA Sauromatia)

Hydra: 250->180 gold, +recuperation (changes from EA Sauromatia)

##### Man, Tower of Avalon

Long Spear: scale mail cuirass->chain mail hauberk

Logrian Warrior: 12->11 gold

Logrian Cavalry: 30->20 gold

Warden of Avalon: mapmove 1->2

Lord Warden: mapmove 1->2, +H1

Knight of Man: 45->35 gold, rescost(base) 20->15

(New Unit) Knight Commander of Man, 60 gold

Knight of Avalon: 65->50 gold, rescost(base) 25->19, +recruitable in sufficiently magical forted forests

Knight Commander of Avalon: 126->115 gold, rescost(base) 25->19 

*Round Table Implementation (Knights of Avalon and Knight Commanders of Avalon can turn into Knights of the Round Table).

Mother of Avalon: 195->185 gold, N1H1 +2.0AN +.2WE -> A1N2 +1.0AWE +.25N

*Bonding Wardens is a common event; bonds a Warden to a Mother as a 1batstartsummon

Crone of Avalon: 335->325 gold, A2N3H1 +1.1AWEN -> A2N3H1 +1.0AN +1.0WE

*Man gets the Transformation spell at 5 gems (3 gem discount).

(New Spell) Bewitchment: ench 5, N1A1, AoE 1+ confusion effect, range 25, fatigue 20 

(New Spell) Hex of Minerva: alt 7, N2, 1 gem, AoE 5+, essentially an AoE Polymorph

(New Spell) Slumber: evo 8, N4, 1 gem, battlefield-wide, dam 30++++(sleep/stun), mr negates 

(New Spell) Incantantion of Morgan: alt 6, W1N2, AoE 5, Liquid Body + Weapons of Sharpness

(New Spell) Aegis of Niniane: ench 5, N3H1 AoE 5, Mossbody + Elemental Resistance

(New Spell) Cloak of Ygraine: alt 3, A2N2, AoE 5, Luck + Twist Fate

(New Spell) Fortification of Isolde: ench 3, E1N2, AoE 5, Legions of Steel + Weapons of Sharpness

(New Item) Rowan Staff: const 4, N2A2, MA Man only, usable by Mothers and Crones, +2 pen, +2 prec, allows 5 fatigue casting of Bewitchment.

##### Eriu, Last of the Tuatha

Fir Bolg: stone spear->bronze spear

##### Ulm, Forges of Ulm

Black Knight: 50->40 gold, rescost(base) 25->19

Black Lord: 110->100 gold, rescost(base) 25->19

##### Marignon, Fiery Justice

Flagellant: 10->9 gold 

Man at Arms: 14->13 gold 

Royal Guard: 45->35 gold, rescost(base) 20->15

Knight of the Chalice: 55->45 gold, rescost(base) 25->19

Paladin: 155->135 gold, rescost(base) 30->23

Witch Hunter: 185->175 gold, +0.1FAES 

High Inquisitor: not slow-to-recruit, +0.5S 

*Members of the Inquisition (non-witch finders) can pillage in friendly provinces (with population) to generate flagellants.  More flagellants are generated the higher the rank of the inquisitor.  Higher dominion and the presence of a temple also provide bonuses.

*(From MA Ermor changes) Ermor receives a D1 site that spawns in provinces (not water provinces) they control with high dominion and low population. Marignon can convert these sites into S1 sites by sufficient preaching with an inquisitor.

Angel of Fury: 35->25 pearls, blood vengeance 4->0, +damage reflection 2, +self-blesses

Angelic Host: S5->S4F1, 50->40 pearls

Heavenly Choir: S7F2->S5F3, 144->88 pearls, (Angels of the Heavenly Choir: +weak anti-undead/demon ranged attack)

##### Mictlan, Reign of the Lawgiver

Sun Warriors: 18->14 gold, hp 12->13, mapmove 1->2

Tlahuelpuchi: B2->B2D2, 25->34 slaves

Civateteo: B2D2->B2, (+douse 1)

*From EA Xibalba changes
Beast Bat: MR15->11, def 13->11, +animal, +undisciplined, -1 siege/defense (total siege/defense of 2.44->1.44 each)

##### T'ien Ch'i, Imperial Bureaucracy

Eunuchs: 35->75 gold, +foreign recruit, +conscription
*Conscription: Eunuchs can summon montag conscripts. Conscripts are militia-stat versions of the 3 footmen and the archer (ratio 1:1:1:2). On reaching 24 exp, conscripts either desert or become regular units via expshape.

Horsemen: 20->18 gold 

Heavy Horsemen: 35->27 gold

Imperial Horsemen: 40->30 gold 

Red Guard: springpower 50->25, 55->45 gold

Prince General: 240->160 gold, +H1, springpower 50->25  

Masters of the Way: W1H1 1.0AWSN->W1H1 1.0AES

Celestial Master: mapmove 1->2

Celestial Servant: 3->2 gems

Internal Alchemy: 10->2 gems

Thousand Year Ginseng: 8->2 gems

(New Spell) Terracotta Warriors: summons national versions of terracotta troops.

##### Machaka, Reign of Sorcerors

*Starting army is 20/20

Pygmies: +forest recruit

Machaka Warriors: 10->9 gold, +furs (the ones without javelins), +foreign recruit

Machaka Archers: 10->9 gold, +foreign recruit

Hoplites: 14->13 gold

Spider Warriors: 25->20 gold, def +1, dagger->poison dagger

Great Spiders(non-sacred mounts): size 5->4, MR5->8, str 11->16, +cost upkeep

Spider Riders: 40->30 gold, size 5->4, spear->light lance

Spider Knights: 55->40 gold, size 5->4, +single-use light lance

Spider Lord: 115->100 gold, size 5->4, +single-use light lance

Hunter Spiders(sacred mounts) MR5->10, str 16->18, +fear weapon, +cost upkeep	(Pretender: str 16->18, +fear weapon)

Machaka Chief: +foreign recruit

Bane Spiders: 110->80 gold, str 11->12, att 13->14, def 10->12 

Ears of the Lord:  65->50 gold, +foreign recruit

Eyes of the Lord:  90->80 gold, +slow-to-recruit, +foreign recruit

Voices of the Lord:  115->105 gold, +slow-to-recruit, +foreign recruit

Witchdoctors: 80->100 gold, F1D1N1->N1 +1.0FDN +1.0 FED, -4->-6 researchbonus, +forest recruit

Sorceresses:  85->90 gold, 0.1FEDN->0.4, (Great Spider form size 5->4, str 11->16)

Sorcerors: 195->180 gold, F1D1N2 +1.0FEDN -> F1D1N2 +1.0FED +0.25N +0.1FEDN

##### Agartha, Golem Cult

##### Abysia, Blood and Fire

Demonbred: DV 50%-100%

*Spell changes from EA Abysia

(New Spell) Children of Rhuax: Abysian version of Rhuax Pact, conj 3, F4E1, 2 gems

(New Spell) Abysian (Improved) Cross Breeding: Abysian-themed version of the (Improved) Cross Breeding spell  

Summon Scorpion Man: conj 8->6, 12->10 gems, (+commander, +iron cap, +torso slot)(credit to johannes)

*Casting Gift of Reason on demonspawn results in either a misbred commander (if they have afflictions), a blood hunter, or an assassin.

##### Caelum, Reign of the Seraphim

Spire Horn Archers: short bow->composite bow

Frost Bow: dmg 9->11

(New Unit) Ice Enchanter: 205 gold, W2 +1.0FSD +1.0AWS, cap only, forgebonus 1, iceforging 7

##### C'tis, Miasma

*Shaman Prophetshape gets a pathboost (S/N +1)

Summon Scorpion Man: conj 8->6, 12->10 gems, (+commander, +iron cap, +torso slot)(from Abysia changes-credit to johannes)

##### Pangaea, Age of Bronze

Minotaurs: 40->35 gold

War Minotaurs: 50->45 gold

##### Asphodel, Carrion Woods

*Spawns occasional N1 sites on sufficiently decayed, templed forest provinces

Minotaurs: 40->35 gold

War Warriors: 50->45 gold

##### Vanheim, Arrival of Man

Summon Valkyries: A3D1->A2D1, (from EA Helheim change)

Awaken Draugar: 12->10 gems

##### Jotunheim, Iron Woods

Awaken Draugar: 12->10 gems

##### Vanarus, Land of the Chuds

Awaken Draugar: 12->10 gems

##### Bandar Log, Land of the Apes

All Vanara Units: -1 gold

Light/Bandar Archers 18->17 gold

Bandar Warriors 18->17 gold, 11->12 attack

Royal Swordsmen: 26->22 gold, att 12->13

White Ones: 24->20 gold

Nagas Warriors: 20->15 gems, (falchion->bronze falchion)

Nagarajas: 30->25 gems, (falchion->bronze falchion)

*Summon changes from EA Kailasa

Contact Yaksha: (def 11->13, awe 1->2)

Contact Yakshini: (awe 1->2)

Summon Devata: 45->40 gems, (S2->3, hp 28->40, str 17->18, att 14->15, def 12->14, 45->75 magical leadership,		
autocasts an animal-only Antimagic)

Summon Devala: 55->40 gems, (S3->4, +autocasts Celestial Music)

Summon Rudra: 55->45 gems, (hp 32->48, prot 2->4, str 18->20, def 13->15, att 15->17, prec 13->15, autocast Wrathful Skies)

Gandharva: 18->15 pearls, (+weak anti-undead/demon ranged attack)

Apsaras: (+weak anti-undead/demon ranged attack)

*Summon changes from EA Lanka

Summon Dakini: 50->66 slaves (applies to Lanka, Bandar Log, Patala)

Summon Samanishada: B3D1->B2D1, 35->30 slaves

Summon Sandhyabalas: summons 3->4

##### Shinuyama, Land of the Bakemono

*Size 2 Bakemono units are now slaves.

Dai Bakemono(both): 30->25 gold

Dai Bakemono(without bow): 11->12 attack

Shuten-Doji: +taskmaster 2

Bakemono General: +inspirational 1

Bakemono Shaman: +0.2F +0.2E +0.2D

Kappa Shaman: +UW recruit

(New Unit) Kappa Mage: W1, 45 gold, UW fort recruit

Summon Karasu Tengus: conj 2->5, N1A1->N3A1, 3->10 gems, summons 3->12+

Summon Konoha Tengus: conj 3->2

Summon Dai Tengu: 55->40 gems

Contact Nushi: 25->20 gems

Summon Gozu-Mezu: 7->5 gems

Summon Ko Oni: summons 5+->7++

Summon Ao Oni:  10->4 gems

Summon Aka Oni: 10->4 gems

Summon Oni: 12->7 gems

Summon Kuro Oni: 10->6 gems, summons 4->4+

Oni General: conj 6->5, 20->14 gems

Dai Oni: conj 8->7, 45->35 gems

Kitsune: 30->23 gems

(New Spell) Hide Heart: ench 5, D2F2, 16 gems, produces a 'Ritual Assistant' that, when alone with a Sorceror on a mountain that isn't already occupied, generates a hidden heart and makes the Sorceror immortal.  However, if the heart is destroyed, the Sorceror dies.

##### Ashdod, Reign of the Anakim

##### Nazca, Kingdom of the Sun

Supaya: spectral spear mrnegates->hardmrneg

##### Xibalba, Flooded Caves

Obsidian Dart: ammo 4->6 (Muuch Dart Thrower)

Poison Dart: ammo 4->6, stun damage 25->50 (same as blowpipe)(Chak Muuch Assassin/Dart Thrower)

Zotz Warriors: 7->8 gold, lance->stone lance(non-iron and +2 resources)

Muuch Jungle Warrior: mapmove 1->2

Muuch Warriors(bronze armor): 10->13 gold, mor 10->11, att 10->11, def 9->10, stone->bronze spear

Chak Muuch Obsidian Warrior: 26->22 gold, +not cap-only

Chak Muuch Dart Thrower: +not cap-only

Ah Itz: stone dagger->knife

Muuch K'uhul: 290->265 gold, W2E1D1H1 +1.0WEDN -> W1E1D1H1 +1.0WD +1.1WEDN), stone dagger->knife

##### Atlantis, Kings of the Deep

##### R'lyeh, Fallen Star

*Ferrous equipment replaced with UW equivalents

##### Pelagia, Triton Kings

##### Oceania, Mermidons

Ichtytaurs: 40->35 gold, +gore attack while underwater, berserk 2->3 (berserk change to align with EA)

*Below are changes from EA Oceania

Sirens: W2->W1 +1.0AW (A1W1 Sirens will be A2 in landshape)

Capricorns: 360->330 gold, +E1/-W1 pathboost on land, +small chance of a blood random.

(New Spell) Contact Angelfish: conj 7, N3W3, 40 gems, UW only, (A1W2N3 +1.0AW, +1A/-1W on land, flyer)

(New Spell) Contact Devilfish: blood 7, B3W3, 50 slaves, UW only, (W1E1B3 demon-kraken, aquatic)

(New Spell) Bind Shark Fiends: blood 4, 13 slaves, (demon-shark, berserking, 3 attacks, amphibious)

(New Spell) Feeding Frenzy: thau 4, N2B1, 2 gems, UW only, battlefield-wide animal and demon berserk

(New Spell) Sharknado: blood 9, B5W3, 40 slaves, UW only, summons 10++ Shark Fiends

##### Ys, Morgen Queens

Morvarc'h Knight, Morgen Champion, Morgen Queen: (base)rescost 20->15

#### Late Age

##### Arcoscephale, Sibylline Guidance

Agema Companion 35->30 gold, (base)rescost 15->12

Agema Commander 105->100 gold, (base)rescost 15->12

##### Pythium, Serpent Cult
Folds in LA Pythium overhaul mod. Troops slightly improved, but the main thing is a mechanic that lets you switch between active cults, with different bonuses provided for any of the three possible choices.

All cults have their divine authority increased when endorsed. This might give them priest levels, remove heretic, and/or decrease a research malus.

Serpent Cult: gets more hydras and snakes and summons, while assassins and hydras stop being cult only. They can also shapeshift into monstrous snakes, and get a new magic item that can only be used when they are endorsed. Finally, they get access to Swamps of Pythia from CBM (thanks, llama!).

Solar Cult: gets cheaper and easier recruitment of their members, and gets a reclimit sacred. They get a new Solar Bull summon, and a ritual that can convert Leos into Helioperses, who are effective thugs, and the only unit that can wield the 4 new solar cult items. Casting Second Sun provides some freespawn. They also get an F2H3 buff that significantly increases the combat prowess of sacreds, but will severely burn sacreds who aren't members of the cult of the solar bull (fire resistance helps).

Fertility Cult: can convert casters into Galli, who are their clergy, and their main access to their rituals. They get very cheap assassination rituals that can send maenads, boars, or lions after an enemy, can shapechange into monstrous lions or boars, can throw bloody fertility rites and orgies, and inexpensively summon boars and lions with summerpower. They also get cheaper vine men.

Reference is made to https://docs.google.com/document/d/1nkTDn9yhYQrRcN6k0dTjzs5DpuKxiauV76wA0zQnkTs for the full changelog.

##### Lemuria, Soul Gates

*Receive a D1 site that spawns in land (not water provinces) they control with high dominion and low population.

*Reduced capital income.  

*Prefers Cold 1.

*Pays 50% more for all forts, but recruits from fortera 2.

*Spectral weapons are now hardmrnegates.  

*Chance of spawning Tribunes and Centurions in capital during expansion.

*Starts with a D2 mage.

PD uses Centurions. Acolytes appear at 20 PD.

Acolytes: D1H1->D1H1 +1.0SD

##### Man, Towers of Chelms

Axemen, Heavy Axemen: mapmove 1->2

Long Spear: scale mail cuirass->chain mail hauberk

Wardens, Lord Warden: mapmove 1->2

Tower Knight: 45->35 gold, (base)rescost 20->15

Judge: 70->50 gold, 0.25F 0.25D->0.45F 0.45D

Magister Arcane: +siege bonus 10, +castle defense 10

Magister: 100->70 gold, 0.5A 0.5E 0.25S->0.40 AE 0.5S, +fixedresearch 5

##### Ulm, Black Forest

Black Templar: 70->50 gold, (base)rescost 30->23

Hochmeister: 120->110 gold 

##### Marignon, Conquerors of the Sea

Starting Army: City Guard->Pikeneers

Flagellant: 10->9 gold

Angel of Fury: 35->25 pearls, blood vengeance 4->0, +damage reflection 2, +self-blesses

Angelic Host: S5->S4F1, 50->40 pearls

Heavenly Choir: S7F2->S5F3, 144->88 pearls, (Angels of the Heavenly Choir: +weak anti-undead/demon ranged attack)

##### Mictlan, Blood and Rain

Rain Warriors: 23->19 gold

Returned/Lord of the Deep: stone spears-> stone glaives (7 damage)

Rain Priest: Dagger->(UW)Knife

Tlahuelpuchi: B2->B2D2, 25->34 slaves

Civateteo: B2D2->B2, (+douse 1)

*From Xibalba changes
Beast Bat: MR15->11, def 13->11, +animal, +undisciplined, -1 siege/defense (total siege/defense of 2.44->1.44 each)

##### T'ien Ch'i, Barbarian Kings

Barbarian Horsemen: 20->17 gold

Khan: 140->130 gold

*From EA T'ien Ch'i changes:

Celestial Servant: 3->2 gems

Internal Alchemy: 10->2 gems

##### Jomon, Human Daimyos

(New Unit) Ashigaru Archer: 8 gold, Ashigaru yari->short bow/wakizashi

Samurai, Samurai Archer: 9->10 hp

Aka-Oni Samurai 15->14 gold

Sohei, Yamabushi: 26->20 gold

Shrimp Soldier, Shark Warrior, Crab General: full scale mail->laminated mail

Samurai Cavalry: 40->30 gold, +longbow

Mounted Gokenin: 55->45 gold, +longbow

Hatamoto: 85->75 gold, +longbows

Daimyo: 125-125 gold

Monk of the Fivefold Path: 1.00FAWEN->1.20 

Earth-touching Sign: +range scales

Welcome Sign: +range scales

Fear-not Sign: AoE 2++->4++

Constact Tatsu: 19->25 gems, 2.0FAWEN->3.0

Summon Karasu Tengus: conj 2->5, N1A1->N3A1, 3->10 gems, summons 3->12+

Summon Konoha Tengus: conj 3->2

Summon Dai Tengu: 55->40 gems

Contact Nushi: 25->20 gems

Summon Gozu-Mezu: 7->5 gems

Summon Ko Oni: summons 5+->7++

Summon Ao Oni:  10->4 gems

Summon Aka Oni: 10->4 gems

Summon Oni: 12->7 gems

Summon Kuro Oni: 10->6 gems, summons 4->4+

Oni General: conj 6->5, 20->14 gems

Dai Oni: conj 8->7, 45->35 gems

Kitsune: 30->23 gems

##### Agartha, Ktonian Dead

Blindfighter: str 11->12

Cave Knight: 100->90 gold

Blindlord: 140->110 gold, +H1, goodleader->okleader, +inspirational 1

Servant of Oracles: mapmove 1->2

##### Abysia, Blood of Humans

Newts: 85->70 gold

Anathemant Salamanders 210->195 gold, +0.2FESD

Anathemant Dragons  310->295 gold, +0.2FESD

*Spell changes from EA Abysia

(New Spell) Children of Rhuax: Abysian version of Rhuax Pact, conj 3, F4E1, 2 gems

(New Spell) Abysian (Improved) Cross Breeding: Abysian-themed version of the (Improved) Cross Breeding spell  

Summon Scorpion Man: conj 8->6, 12->10 gems, (+commander, +iron cap, +torso slot)(credit to johannes)

*Casting Gift of Reason on demonspawn results in either a misbred commander (if they have afflictions), a blood hunter, or an assassin.

##### Caelum, Return of the Raptors

##### C'tis, Desert Tombs

Summon Scorpion Man: conj 8->6, 12->10 gems, (+commander, +iron cap, +torso slot)(credit to johannes)

##### Pangaea, New Era

Minotaur Soldier: 40->35

Grove Guard: 50->45

Pan: 0.1EDNB->0.4

##### Midgard, Age of Men

Summon Valkyries: A3D1->A2D1, (from EA Helheim change)

Awaken Draugar: 12->10 gems

##### Utgard, Well of Urd

Awaken Draugar: 12->10 gems

##### Bogarus, Age of Heroes

Black Hood 25->15 gold 

Grid Druzhina 30->25 gold

Malaia Druzhina 45->35 gold

Styag 40->30 gold, AP 23->20

##### Patala, Reign of the Nagas

All Vanara Units: -1 gold

Light/Bandar Archers 18->17 gold

Bandar Warriors 18->17 gold, 11->12 attack

Nagas Warriors, Naga Chief, Nagaraja: falchion->bronze falchion

*Summon changes from EA Kailasa

Contact Yaksha: (def 11->13, awe 1->2)

Contact Yakshini: (awe 1->2)

Summon Devata: 45->40 gems, (S2->3, hp 28->40, str 17->18, att 14->15, def 12->14, 45->75 magical leadership,		
autocasts an animal-only Antimagic)

Summon Devala: 55->40 gems, (S3->4, +autocasts Celestial Music)

Summon Rudra: 55->45 gems, (hp 32->48, prot 2->4, str 18->20, def 13->15, att 15->17, prec 13->15, autocast Wrathful Skies)

Gandharva: 18->15 pearls, (+weak anti-undead/demon ranged attack)

Apsaras: (+weak anti-undead/demon ranged attack)

*Summon changes from EA Lanka

Summon Dakini: 50->66 slaves (applies to Lanka, Bandar Log, Patala)

Summon Samanishada: B3D1->B2D1, 35->30 slaves

Summon Sandhyabalas: summons 3->4

##### Gath, Last of the Giants

Zebulunite Soldier: stone->bronze spear

Naphtali Spearman: stone->bronze spear

##### Ragha, Dual Kingdom

*PD now uses a greater proportion of Light Infantry.

Paighans: 8->9 gold, mor 9->8

Airya Archers, Infantry, Light Infantry: 10->11 gold

Savaran Cataphract, Saravan Guard: rescost(base) 15->13

Turan Infantry 11->12 gold

Turan Heavy Infantry 13->14 gold

Turan Spahbed, Shah: rescost(base) 15->12

Turan War Elephants 100->110 gold

Zhayedans: cost 40 gold each time they lose a rider

Zhayedan Spahbed: rescost(base) 31->34

Karapans: 100->110 gold

Athravans: +coldrec 1 (to reduce flying sacred parties)

Turan Sorcerors: 225->260 gold, heatrec 1->2

Airya Seraphs: 225->260 gold, coldrec 1->2

##### Xibalba, Return of the Zotz

Obsidian Dart: ammo 4->6 (Zotz/Sak Muuch Dart Thrower)

Zotz Dart Thrower: 7->9 gold 

Zotz Warrior: 7->8 gold, light lance->light stone lance (recost +2)

Zotz Guard: light lance->light stone lance (recost +2)

Sak Muuch Warrior: stone->bronze spear

Batab: +slow-to-recruit outside forts

Ah Ha': bronze spear->(UW) knife

Chilan: +slow-to-recruit outside forts

*From EA Xibalba changes
Beast Bat: MR15->11, def 13->11, +animal, +undisciplined, -1 siege/defense (total siege/defense of 2.44->1.44 each)

##### Atlantis, Frozen Sea

Mournful: Halberd->(UW) Halberd

##### R'lyeh, Dreamlands
*Spawns occasional S1 sites on templed, coastal provinces with sufficiently high dominion.

*All freespawn is 0 upkeep.

*Ferrous equipment replaced with UW equivalents.

(New Spell) Sunder Reality: thau 6, S5W2, 10 pearls, ritual that can create a site that allows void-summoning.
