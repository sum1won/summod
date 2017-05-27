# summod
This is summod, a dominions 4 overhaul mod, and it is a work in progress. 
For discussion: http://z7.invisionfree.com/Dom3mods/index.php?showtopic=2764 

Thanks to: LambertS, Moggers, Ohlmann, Amuys, Johannes, Algulod, llamabeast, Zonk, Sy, Cruxador, Iceland, Torgoni, Malakal, Fungalreason, AN, Maerlande, Earcaraxe, Eustachy, Yakri, PyroICF, Kate Micucci, EAlb, various anons, and anyone else I've forgotten.

What is the purpose of this mod?    
The mod's purpose is a general "gameplay improvement mod." This primarily involves increasing gameplay variety. While balance is involved in this, it is not the only consideration.  The changes to the generic section can be quite conservative, but certain nations with severe underlying flaws, such as LA Pythium (coming soon!), receive comprehensive rebuilds.

RANGES USED:   Units 6300-6999;  Weapons 1400-1500;  Armor 750-780;  Sites 1800-1850;  Nametypes   ; Montag 1300-1320;  Item 700-799;  Spell; restrictitem 1100-1150;  Nations;  mercenary; event; Sprites: 118
****************************************************************************************************************
Changelog

Table of Contents

1. [Magic Items](#magic-items)  
   * [One-handed Weapons](#one-handed-weapons)
   * [Shields](#shields)
   * [Two-handed Weapons](#two-handed-weapons)
   * [Armour](#armor)
   * [Helmets](#helmets)
   * [Boots](#boots)
   * [Miscellaneous Items](#miscellaneous-items)
   * [Artifacts](#artifacts)
2. [Non-summon Spells](#non-summon-spells)
   * [Site-search Spells](#site-search-spells)
   * [Domes](#domes)
   * [Globals](#globals)
   * [Misc Spells](#misc-spells)
   * [Battlemagic](#battlemagic)
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
   * [Indie Changes](#indie-changes).
5. [National Changes](#national-changes)  
6. [Early Age](#early-age)
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
7. [Middle Age](#middle-age)
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
8. [Late Age](late-age)
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

Dragon Sceptre: const6->4

Duskdagger: +bleeding, +slashing, dmg 2->4, att 2->4

Elf Bane: +dispels glamour

Evening Star: nratt 1->2 

Enchanted Sword: +MR1

Enchanted Spear: +MR1

?Faithful: E1S1->S1

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

?Snake Bladder Stick: AoE 4->5

Star of Heroes: nratt 1->2

Star of Thraldom: False Fetters AoE 1->5

Summer Sword: const 4->6, N2E1->N1E1, supply bonus 100->200

?Sword of Swiftness: def 4->1, autocasts Quickness, const 4->6

Thunder Whip: dmg 10->12, +secondary effect(AoE 1, dmg 10, stun)

Vine Whip: const 4->2, N2->N1, entanglement->AoE 1

Wand of Wildfire: F3->F2

#### Shields

Charcoal Shield: E2F1->E1F1

Enchanted shield: +MR1

Golden Hoplon: F2->F1, FR15->10

Lantern Shield: D2F1->D1F1

?Lead Shield: MR4->5, enc 3->2, def 3->7

Lucky Coin: S2->S1, parry 4->6

Scutata Voltrunus: (repeat)autocasts a modified Shock Wave

Shield of the Accursed: S2B1->S1B1, +tainted 5, (repeat)autocasts modified Horror Mark(rng 10, prec -5) 

Shield of Valor: +inspirational 1

Totem Shield: (repeat)autocasts a healing spell (AoE3, rng 8, heal 1+) 

Weightless Tower Shield: A2->A1

Weightless Kite Shield: A2->A1, def 7->6, prot 21->19

#### Two-handed Weapons

Bane Blade: +fear 3, dmg 9->12

?Banefire Crossbow: const 6->4 , ammo 12->24

Bow of War: const 6->4, ammo 12->24, dmg 11->13

Bow of Botulf: ammo 12->24

Carmine Cleaver: F2E1->F1E1, fireshield 7->10

Doom Glaive: decay->difficult to resist

Enchanted Pike: +MR1, def 1->3

Ethereal Crossbow: ammo 12->24

Gate Cleaver: E3->E2

Gloves of the Gladiator: N2->N1, dam 3->5, def 1->3

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

Vision's Foe: ammo 12->24, nratt-3->-2

Wraith Sword: D4->D2, +fear, dmg 9->13

Wavebreaker: +autocasts Water Shield, +allows casting of Water Strike

#### Helmets

Crown of Command: +undead leadership 50, magic leadership 25->50

Helmet of Heroes: +leadership 50

Iron Face: 4E->3E

Mistletoe Garland: const2->4, autocasts Twist of Fate 

Spirit Helmet: +SR5

Spirit Mask: D2N1->D1N1

Wraith Crown: D6->D4

#### Armor

Berserker Pelt: berserk 0->3

Blacksteel Full Plate: enc 4->3

Blue Dragon Scale Mail: W2->W1, CR15->10

Bone Armor: D5->D4

Brightmail Haubergeon: +awe 1, const 4->6

Chain Mail of Displacement: autocasts Mirror Image

Direwolf Pelt: att 1->3, def 1->3

Enchanted Ring Mail Armor: +MR1

Green Dragon Scale Mail: N2->N1, PR15->10

Hydra Skin Armor: prot 12->15, FR-5

Jade Armor: 2W1E->1W1E

Lightweight Scale Mail: Const 2->0, prot 11->14

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

Amulet of Breathing: A1

Amulet of Missile Protection: A2->A1

Amulet of the Fish: W1A1->W1

Arcane Lens: ritual range bonus 1->2

Astral Serpent: N1S1->N1

Barkskin Amulet: const 2->0, N2->N1

Barrel of Air: const 6->2, 150 points

Bear Claw Talisman: E2->E1, const 0->2

Blood Pendant: ritual range 1->2

Bracers of Protection: def 2->3, prot 2->3

Cat Charm: N2->N1

?Catseye Amulet: D1E1->D1, 100 darkvision 

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

Lychantropos' Amulet: str 4->3, berserk 0->3, #heal, -1 pathboost(all)

Manual of Water Breathing: N3W1->N3, breathing 50->200 points

Miraculous Cure All Elixir: N5->N4, disease healer 1->5

Mirror of False Impressions: A4->A2

Pendant of Luck: +autocast Twist of Fate

Pills of Water Breathing: A2->A1, const 4->6, breathing 20->80 points

Ring of Warning: patrol 10->25

Sea King's Goblet: W3->W2, const 6->4, 100->150 points

Skull Talisman: const 0->2

Slave Matrix: E1S1->S1

Stone Idol: E2S2->E1S1

Stone Bird: att 0->2

Stone Sphere: S2E1->S1E1

The Copper Arm: E3F1->E1F1, +forgebonus 1

The Pebble Pouch: range str/3->str, nratt 1->3

Wall Shaker: A3->A2

Water Lens: ritual range 1->2

Woundfend Amulet: E1S1->S1

#### Artifacts

Amon Hotep: F6S5->F5S5

Aseftik's Armor: enc 4->3, E4->E3

Atlas of Creation: E5S5->E5S4

Boots of Antaeus: E5N1->E3N1

?Carcator the Pocket Lich: D4->D2, inspiring researcher 1

Draupnir: E5->E4

Fenris Pelt: N4->N3

Gate Stone: E8S8->E7S7

Hammer of Forge Lord: forgebonus 4->8 

Harvest Blade: B3N1->B2N1, fear 5->15

Holger the Head: E1D1->E1, +casts luck on himself

Monolith Armor: E5->E4, prot 30->32, reinvigoration 6

Nethgul: S3W2->S2W2

Percival the Pocket Knight: E2N1->E1N1, hp 11->16, att 11->13, def 16->19, str 11->13

Sun Slayer: D6->D5

Tempest: A6->A5

The Ark: F6S6->F5S5

The Horror Harmonica: S6D4->S5D3

The Manual of Crossbreeding: B3N3->B2N2

The Sharpest Tooth: N2S1->N1S1

The Staff from the Sun: S5F1->S4F1

The Summit: E6->E4, att 12->15 , def 6->9, +armor piercing

Unquenched Sword: F7->F5, autocast Living Fire

Wondrous Box of Monsters: N5->N3, +PR5

### Non-summon Spells


#### Site-search Spells

Acashic Knowledge: conj 6->5, 25->20 gems

Dark Knowledge: 4->3 gems

Arcane Probing: 3->2 gems

Auspex: range 2->3
 
#### Domes

Dome of Arcane Warding: ench 6->4, 10->6 gems 

Dome of Corruption: ench 7->5, 20->13 slaves

Dome of Flaming Death: ench7->5, 8->5 gems

Dome of Solid Air: ench 6->5, 20->12 gems

Forest Dome: ench 6->5, 10->8 gems

Frost Dome: ench 6->4, W5->W4, 15->8 gems

#### Globals

Astral Corruption: blood 7->9, 166->222 slaves

?Burden of Time: thau 6->7

Celestial Rainbow: W7N5->W6N4, 80->60 gems

Fata Morgana: A7->A6, 90->80 gems

Forge of the Ancients: conj 7->9, 80->60 gems

Ghost Ship Armada: 60->40 gems

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

#### Battlemagic

(New Spell) Pyriphlogos Incantation: battlefield-wide fire booster, conj 5, F3, 3 gems

Bonds of Fire: thau 2->1

Prison of Fire: thau 4->3

Rain of Stones: 1->2 gems

Numbness: alt 3->2, W3->W2

Quickness: +scales

Earthmight: +scales, E2->E1

Iron Warriors: +scales(only to single targets)

Iron Will: +scales

Gift of Flight: +scales

New scaling version of Tangle Vines(Wild Tangle) conj 3, AoE　2+

Enlarge: +scales

Mossbody: +scales

Cheat Fate: +scales

Wooden Warriors: +scales

Army of Giants: +scales

Berserkers: +scales	

Touch of Madness: thau 4->2, range 15->1

Sulphur Haze: +castable UW

Rust Mist: +castable UW

Ice Strike: +castable UW

(New spell) Siren's Blessing: ench 3, A3, removes amphibian penalty 

(New spell) Gulf Stream: ench 5, F3, imitates friendly currents

Confusion: AoE3/scales

?Weakness: AoE1/scales

Enfeeble: AoE 6->10+

Unraveling: S6->S5, 6->4 pearls

Bonemelter: range 20->25

Sailor's Death: AoE1-> 1 target, 3+ effects

Curse of the Desert: AoE 5->6+

Astral Bolt: Dmg 10+->10++

All mid-level resists now scale

Spirit Curse: horror marks in addition to cursing

Army of Rats: alt 9->8, 6->3 gems

Skeletal Legion: alt 6->5

Creeping Doom: +castable UW

### Summon Spells

#### Fire

Flame Spirit - Generates 1F/month

Summer Lions prot 7, summon 7+

Terracotta Army 16+++, armed with pikes; TC gets a national version

Fire Drake  7 gems -> 5

#### Earth
 
Clockwork Soldiers 8 -> 6 gems Reinvigoration -15 -> -10 Prot 18 -> 20 AP 10 -> 12 Castable UW

Clockwork Horrors Reinvigoration -15 -> -12; Castable UW

Crusher - Stone Fist -> 2 Stone Fists; Crusher 10 gems; Siege 30; Castable UW

Cave drake 1 gem cheaper

Enliven Statues; 20 -> 15 gems

Fall bears - Bite attack added ; Prot 10 ; 2 more per summon

Hidden in Cave - 75 -> 60 gems;  poor amphibian; Castable UW; Sage, Walker 8 hp->13 hp; Warrior -> 17 hp; King -> 18 hp

Hidden in Sand - 75 -> 60 gems; poor amphibian

Iron Dragon - noleader; commander; 25->20 gems

Mechanical Men - 10+2/level -> 12+2/level per summoning; Castable UW; prot 19

Siege Golem - 10 gems from 20; research 9->7; Castable UW

Troll King?s Court - 55->45 gems;

(Contact) Trolls - 15 -> 10 gems

#### Air

Amphiptere
Prec 10->12
5 gems->4

Draconians
45 -> 40 gems
Talons attack added
Prot 9 -> 12

Spring Hawks
+50% gemcost, 5+-> 10++ hawks
prot 2

Watcher
Can be transported to an adjacent province for the first month it exists, after which it becomes immobile.

Wyvern
Size 5 -> 4
Prot 12 -> 13
Talon

#### Water

Catoblepas
15 ->10 gems

Claymen
5 gems-> 10, 16+++ per summon

Gelatinous Cube
+2 AP -> 6 AP
recuperation
4 gems->3

Hidden in snow
75 -> 60 gems
 poor amphibian

Kokythiad
40 -> 35 gems

Naiad
35 -> 30 gems

Naiad Warriors
30 -> 20 gems

Ice Drake
7->5 gems

Sea King's Court
55 -> 50 gems

Sea Trolls
15 -> 10 gems
Fist -> 2x Claw

Winter Wolves - Amount and cost increased 2X, hp 16, prot 4

Yetis
15 gems->12

#### Astral

Abomination
25 -> 15 gems

Eater of the Dead
50 pearls->25
Very low fire and shock res added; increases with level
Pierceresist
Acid Shield at three highest levels
Slimer at two highest levels
Plague at the highest level
Reduced Summon Reqs
Conj 8->Conj 7

Ether gate
90 -> 65 gems
Ether Lord 25 hp->30; Ether Warrior 23 hp -> 27

Juggernaut
25 gems -> 10

Telestic Animation
Can transport itself to an adjacent province for the first month of its existence, after which it reverts to an immobile form.

#### Death

Arouse Hunger
9+++ >12+++ ghouls

Bane
23 hp -> 25 hp
7->6 gems

Behemoth
10->8 gems

Create Revenant
Castable UW

Leviathan 12->10 gems, landap 4->6

Pale Rider
Castable UW

Poison Golem
35 -> 25 gems
pierce, slash resist
att->11
Fear
Banefireshield 10
Mapmovement teleportation

Reanimation
5 gems for 10 skeletons->1 gem for 4 skeletons

Reanimate Archers
5 gems->10
10 effects to 20++
Banefire bows are AP

Revive Wights
20 gems-> 12
poor amphibian
 
Ziz
D3A2->D3A1
Biggest problem with Ziz is that your mages have better things to do than summon large birds one at a time.

#### Nature

Ambush of Tigers
scales to 12++, tigers stealthy

Animal Horde
25 -> 18 gems

(Summon) Animals
10>8 gems

Call of the wild
Werewolf 20 -> 25 hp

Construct Manikin
12 -> 20 gems
16++++ scale rate
(doubled mage-efficiency, increased base amount, scale rate constant, gem cost slightly reduced

Construct Mandragora
10 -> 8 gems

Forest Giant
Grab and Swallow weapon added

Forest Troll Tribe
37 gems->33
Contact Forest Trolls 
10->7 gems 
stealthy

Lamia Queen
25 -> 20 gems
Contact Lamias
N3->N2

Lumber Construct
5 -> 4 gems
Siege 10

Manticore
Flick barbs damage changed from 10 nostrength to -10 strength so buffs help?

Kithaironic Lion
	Casting requirements reduced, doubled mage turn efficiency

Pride of Lions
10++ -> 13+++ lions

Sleeper
Sacred

Sloth of Bears
Claw -> Bite, claw

Swamp Drake
8-> 5 cost

Vine Men
3 -> 5 men

Vine Ogres
2 -> 3 ogres

Tarrasque
commander, noleader
25 gems->20
Level 6 unique
buffs: (recuperation, prot 18->20, enc 2, slash/pierce resist).  Has an attack that can swallow enemies.

#### Blood

Bind Succubus
66->44 gems

Blood Rite
summons 3->7 vampires

Cross Breeding
15 -> 12 slaves

Improved Cross Breeding
20 -> 16 slaves

Dark Vines
summons 5 at 30 slaves

Devil
Fire shield 6

Plague of Locusts
heretic 1->2

Ritual of Five Gates
28->25

Spine Devil
Given Flick barbs, precision 10, 3X summonspeed

Serpent Fiend
+3 att, +4 strength, 3X summon speed

### General Changes

#### Scales:  
Growth/Death: Income 3%->2% per scale

Ohlmann - both excellent in short term gold, and excellent in long term gold. Production is a bit weak, because it don't give much money and resources become weaker quite fast. I also think that sloth 3 is not punitive enough

Maerlande -  I think growth is too obvious if you want money. If I remember correctly, Calahan used +2% for growth and gave production the other percent in his version of CBM for serious competition. I think that makes quite a difference to put a bit more decision between these two. Right now, I find growth is almost always a better choice.

sum1won: I?m including this discussion since I expect this is the biggest change in the mod.  I?d also note that I modeled income and total gold from growth and order, and the comparison suggests that growth is significantly better over the long term, and nearly as good over the short term.  The largest difference in gold is around turn 8-15 (varies depending on how aggressive expansion is) and never really rises above ~5% of income/total gold.  Largest difference I saw was a few hundred gold.

#### AI 
doesn't recruit certain particularly bad troops

#### Thrones
Season thrones aren't UW

#### Sites

Steel ovens level 0->1

Cedar pillar level 0->1

Well of Pestilence rarity swapped with bonedoor tower

Ancient ruin summons 5 various bugs instead of 1 spider

Farm of Plenty less common

Caveman cave gives 10 resources

Animal Cemetary: Summons 4 carrion beasts instead of two

Flesh Eaters Isle: Summons 4 ghouls instead of one

The Slaughterhouse: Provides supply, summons some extra foulspawn

Isle of Saos gives the correct units

#### Armor changes

Surveyed armor, made changes

Full Ring Mail def -2 to -1, res 7->6 (Logrians) 

Chain Hauberk -2 to -1 def

Full Chain Mail def -3 to -2 - LA Man, MA Man, LA Agartha, MA MArignon *

Plate cuirass  def -1 to 0, enc 2->1 (LA Pythium, LA Pangaea LA Ulm, LA/MA Marignon, LA Caelum (two units), LA Ragha (one unit), Therodos (Korybants -increase enc, drop defense), MA Pelagia (one unit), MA/LA Arco 

Plate Hauberk def -3 to -1, enc 4 to 2 (LA Pythium, Abysia, MA Machaka, LA Marignon, Ghandarvas, MA/LA Arco)**

Full Plate Mail def -3 to -2, enc 5 to 3 (LA Agartha (lots), MA/LA Marignon (Royal Guard), MA Machaka (Black Hunters).

Full Chain Ulm def -3 to -2  (MA Ulm) 

Full Plate Ulm def -3 to -2, (MA Ulm) 

Bronze Cuirass def -1 to 0, enc 3 to 2 (Therodos, MA Pangaea, MA Pelagia)

Bronze Hauberk enc 5->3 (MA Pan, Pelagia, Oceania, EA Arco, LA Gath)

Spider Armor rescost 26->20, def -3 to -2, enc 4->3 (Machaka)

Ashigaru Armor def -1 to 0, enc 2 to 1(Shinyu, Yomi, slightly Jomon)*

Samurai Armor def -2 to -1, enc 3->2 (Jomon, Shinyu, Yomi)*

Heavy Samurai Armor def -3 to -2, enc 4->3 (Jomon, Yomi)*

Basalt Armor enc 6->4 rescost 30->25 (EA Atlantis)

Hoplon Enc 1->2	(This fully offsets the benefits Therodos gets from the cuirass changes).

Jingasa rcost 2->1

Coral cuirass Prot 10->12, enc 2->1, rescost 7->10 (MA, LA Atlantis)?

Coral Hauberk Prot 12->14, def -2->-1, enc 3->2, rescost 10->15 (EA Pelagia, MA, LA Atlantis)?

Coral Barding prot 11->16, rescost 12->20 (Oceania Aphroi)?

Turtle Shell Armor prot 9->10 (EA Pelagia, EA/MA Oceania)?

Turtle Shell Barding prot 9->10 (Oceania Icthycentaurs)?

Centaur Barding (Bronze) 16->17 prot, enc 4->3 MA Pan 

Centaur Barding (Iron) 17->18 prot, enc 3->2 LA Pan 

Amber hauberk rescost 18->15

Amber Shield def 4->6

adds Laminated scale mail

Adds treated scale hauberk

#### Weapons

Mace - 5 dmg -> 6 dmg (Nazca, Marignon, Bandar Log/Patala/Kailasa/Lanka, Mictlan)

Hammer - 7 dmg -> 8 dmg (MA Ulm, Claymen)

Maul dmg 9->10  (MA Ulm)

Machaka Spear - 3 res -> 2 res, -1 -> 0 Atk (EA/MA Machaka)

Chakram - 2 -> 5 ammo (Bandar Log, Patala)

Throw Spines changed to strength-10 damage

Obsidian Clubsword -> Damage 5, att 1

Yari rcost 1->2

Wakizashi rcost 4->2

Added nonrust equipment from nonrust mod:

Laminated glaive

Laminated Yari

Spear

Knife

Bronze Glaive

Trident

Bronzed Falchion

Bronzed Kryss

#### Indie changes

Barbarians no longer look like Skwisgaar.  They now wield axes.

Hoburg crossbows 7->9g

Heavy Cav (Indie) 19, 20, 21-- Dropped cost to 25

Knight, (indie)22  cost35->30

Light Cav (Indie) 24, 25, 26 -> Dropped cost to 15; javelin light cav get light lances

Horse Tribe Chief/Brother (55->45)

Imperial Commander  2117 65->55

Horse Tribe Cav Cost 25->15

Horse Brother 25->15

Jade Maiden 370  50 -> 45

Nightmare  369 85 -> 70

Cataphract 1187 30 -> 35

Hog Knights Rsize 2->1

Ichtyid, triton, merman, Frog Clan poptypes now provide indie scouts

Amphibious poptypes now provide better troops and shamans.

Various amphibious indies given non-ferric equipment

### National Changes

#### Early Age

##### Arcoscephale, Golden Era

##### Ermor, New Faith
Equites 35->30 gold

equites sacred shroud 50->45 gold 

##### Ulm, Enigma of Steel

##### Marverni, Time of Druids
Eponi 30->25 gold, addition of a hoof attack

##### Sauromatia, Amazon Queens
Lancer, Raider, Sauromatian Lancer, Sauromatian Raider - 20->17 gold 

Cataphract - 35->30 gold

Androphag -- 75->55 gold 

Oioropata -- 45->35 gold 

WarriorPriestess, warrior queen - 130/170->110/150 gold 

Manflayer 95->70 gold 

Hydra 250->180 gold, recuperation

Hydra Hatchling 35->28 gold, recuperation

##### T'ien Ch'i, Spring and Autumn

##### Machaka, Lion Kings
Machaka Warriors Foreign Recruit, 10->9 gold

machaka militia foreign recruit

Machaka Chief Foreign Recruit (40 gold)

Pygmy Warriors Forest Recruitable

Spider clan Archers cheaper

Spider clan Warriors have furs

Spider clan Sorcerer not STR

Spider Rider 	Size 4	Gold 40->25

Great Spider changes from MA Machaka (Size 4, 8 MR, 20 goldcost, 17 strength)

##### Mictlan, Reign of Blood
sun warriors cost 18->15; Hp 12->13; Strength 10->11

Tlahuelpuchi cost 25->50->33

Pathreq B2->B2D2

Civateteo pathreq B2D2->B2, douse 1

##### Abysia, Children of Flame
Anathemant Dragon - 265Gold->240;  +0,5ESDB

Anathement salamander	0.1 ESDB	175 gold->150

Annointed of Rhuax 	Random chance moved to 0.5 from 0.1

Addition of ?Childen of Rhuax? spell - Abysian version of Rhuax pact, requiring F4E1.

Summon scorpion man now summons a commander, costs 10 gems, has torso  credit to  johannes

Addition ?abysian crossbreeding? (abysian themed version of the crossbreeding spell.)  

GoRing Demonspawn results in either a misbred commander (if they have afflictions), a blood hunter, or an assassin.

##### Caelum, Eagle Kings

##### C'tis, Lizard Kings

Serpent Dancers carry stronger weapons

Shaman Prophetshape gets a small magicboost

##### Pangaea, Age of Revelry

Minotaurs 5 gold discount

##### Agartha, Pale Ones

##### Tir na n'Og, Land of the Ever Young

##### Fomoria, The Cursed Ones

##### Vanheim, Age of Vanir

##### Helheim, Dusk and Death

Helkarl - +110%AD magic, normal leadership (195 total cost).

Helheim summons stronger Draugar than other nations. 

New spell: Bind Draugar.  Conj 7,  30 gems, 15++, D4A1,

Summon Valkyries, 7 -> 10 valks summoned (Also benefits EA/MA Vanheim)

##### Niefelheim, Sons of Winter

##### Kailasa, Rise of the Ape Kings
ghukuya generals not str

Bandar Warriors, 18g -> 17g, Att 11 -> 12

Bandar Archers - elite statline

Bandar Archer, 18g -> 17g   

Yavana Archers carry falchions

Yavanas 40->35 gold

Yakshas awe 2

Guhyakas: Javelins 

Summon changes: (apply to Kailasa, Bandar Log, Patala)

Devata 40 gems, S2->S3, HP 28->40 Str 17->19 Att 14->15 Def 12->13 Prc 11->13, 45->75 magical leadership		
Autocasts an animal-only antimagic

Devala 40 gems; S3->S4, Autocasts Celestial Music

Rudra 45 gems, HP 32->48, STR 18->21, Def 13->15, Prot 2->4, Att 15->17, Prec 13->15, autospell wrathful skies

Gandharva 18->15 pearls

Apasaras: Weak ranged attack granted

##### Lanka, Land of Demons
Bandar Warriors, 18g -> 17g, Att 11 -> 12 (note: Bandar changes are there because bandar are   being universally changed)

Bandar Archer, 18g -> 17g   

Summon Dakini: 50->66 Bloodslaves (Applies to Lanka, BL, Patala)

Samanishada 35 -> 30 slaves; pathlevel 0-2

Sandhyabalas 3 -> 4 summoned

Lanka?s indie priests have 2.5X upkeep costs.  Will not display until turn after recruitment.  Indie flavor text changed to reflect this.

##### Yomi, Oni Kings

##### Hinnom, Sons of the Fallen
Kohen: douse 1, basecost -10, leadership 80->40  gold 240->225

Ba'al 455 gold-> 430

Melqarts 485 gold->460, not cap only

Rephaite Warriors 115 gold -> 100

horites throw rocks

##### Ur, The First City
Ur pretenders automatically heal all afflictions while at the capital.

Elegist is now +3 instead of +1, making them 4X as effective instead of 2X.

PD is less garbage, and includes sirrush, great lions, and more Enkidu of better quality.

You can now recruit more foreignrec and swamprec troops at your capital.

Your troop quality is improved.  Generally -1 to -2 gold from vanilla, and +1 attack

Spearguard became elites, and received +2 goldcost and +defense.

##### Berytos, The Phoenix Empire

##### Xibalba, Vigil of the Sun
Lances replaced with Stone lances, which are non-iron and +2 resources

Batabs are slow to recruit if recruited outside a fort

7 gold bats now cost 8

Ah nakom are 75 gold from 70

Ah nakom and Onaqui now produce more unrest

Beastbats are -1 siegedefense (For total siegedefense of 1.44 each instead of 2.44 each).

##### Atlantis, Emergence of the Deep Ones
New Coastal Shambler Mage -- Relatively expensive for W1, 1 WSFE ,5SFE

##### R'lyeh, Time of Aboleths
Mindlord 420->360; given an extra +100%WSD +0.5%ED

Androdai discounted, random changed to EWD from EWSD

Polypal Mothers can research

Grandmothers have Inspired Researcher

Polypal Spawn can go on land, but die after 2 turns

Merman Slaves, Lobo Guard, Slave Mages recruitable on land

Given a mass-forge spell to produce air breathing amulets (Blessing of Limne Const6 W4 10 gems)

##### Pelagia, Pearl Kings
Sideraspists slightly improved.  

Given a mass-forge spell to produce air breathing amulets (Blessing of Limne Const6 W4 10 gems)

##### Oceania, Coming of the Capricorns
Minotaurs given Gore while underwater

Capricorns 360 gold->330

Capricorns get blood magic

New summons:

Angelfish:  A1W1N3, 100%AW, +1A on land, +1 W on water.  Conj 7, N3W3 caster requirement, 40 gem flying summon, UW only

Devilfish:  W2E2B3 demonkraken, UW only, Blood 7, 50 slaves, B3W3 caster requirement, uw only

Demonshark: Berserking 3 attack amphibious demon summon, research 4, 13 blood slaves

##### Therodos, Telkhine Spectre
Popkill scales with growth/death scales.  Still ~0.5 at G0, but ~0.8 at D3 and ~0.2 at G3

Sacreds are reclimit 2 at D3, reclimit 4 at D1, reclimit 6 at G1, and reclimit 8 at G3

Sacred attack replaced with a 50% chance of 3 attacks

Starting army is a mix of living and dead units

Addition of Undead Melia.  Taking death scales automatically provides it, with a small chance per fort of spawning additional undead melia.  This scales with dominion and death scales.  

Old STR battlemage available in coastal forts.  Sailing, holy, W2A1 (1.1 FWAD).

Swordsmen (Mermen, Human, and Tritons) recruitable in underwater and coastal forts

Global that increases popkill/death scales in Therodos territory, produces sacred freespawn, and has a chance at generating sites that produce water gems.

#### Middle Age

##### Arcoscephale, The Old Kingdom

##### Ermor, Ashen Empire
Ermor receives a D1 site that spawns in land (not water provinces) they control with high dominion and low population, and reduced cap income. 

50% more for all forts.  

Starts at Cold1

Dusk Elders are slightly more resistant to magic duel

Marignon can convert these sites into S1 sites by sufficient preaching with an inquisitor

##### Sceleria, The Reformed Empire

##### Pythium, Emerald Empire
Angel of Fury cost->25 pearls, self-blesses, damage reflection

Angelic Host S5->S4F1, 50->40 pearls

Heavely Choir S6F2->S5F3, 144->88 pearls, choir angels now get an anti-undead ranged attack

Serpent Cataphract 60->45
Serpent Lord 90->75 gold discount

##### Man, Tower of Avalon
Knight 45->35 gold

Avalon knight 65->50 gold

Knight commander of avalon 110 ->100 gold

New Knight Commander of Man, 60 gold

Round Table Implementation (Knights of Avalon and Knight Commanders can turn into Knights of the Round Table).

Knights of Avalon are recruitable in sufficiently magical forted forests

Logrian Cav 30->20 gold

Warden mm1->2

Lord warden mm1->2, H1

Logrian 12->11 gold

Long spear chain mail cuirass->hauberk

Logrian random AFEN->AFE

Crone Randoms: AEWN-> AN/.5EWF

New Spell: n1a1 "Bewitchment" Aoe1+ confusion effect range 25 fatigue 20 ench 5

Man gets transformation at 5 gems

Man gets a Hex spell that is essentially a small-aoe polymorph.  N2, Alt 7, 1 gem, aoe 3+

Slumber spell added.  Battlefield wide 30++++ fatigue damage mr negates spell.  Evo 8, N4, 1 gem.

W1N2: Incantantion of Morgan: Aoe 5, Research 6 alt liquid body, weapons of sharpness

N3H1: Aegis of Niniane: Aoe 5, Resarch 5 ench Mossbody/Elemental Resistance

A2N2: Cloak Of Ygraine: Luck + Twist Fate, research 3 alt, Aoe 5

E1N2: Fortification of Isolde: Legions of Steel, Weapons of Sharpness, Aoe 5, Research 3 ench

Mother of Avalon paths N(AN)(AN).2(WE)->N2A1(WE).25(N)

Crone paths improved (ANWE)->(AN)(WE)

Bonding Wardens is a common event; bonds a warden to a mother as a 1batstartsummon

New Item: Rowan Staff.  MA Man only, usable by mothers and Crones. N2A2, +2 pen, +2 precision, allows 5 fatigue casting of Bewitchment.

##### Eriu, Last of the Tuatha

##### Ulm, Forges of Ulm
Black Lord 110->100 gold discount

Black Knight 50->40 gold discount

##### Marignon, Fiery Justice
Angel of Fury cost->25 pearls, self-blesses, damage reflection

Angelic Host S5->S4F1, 50->40 pearls

Heavely Choir ->S5F3, 88 pearls, choir angels now get an anti-undead ranged attack

Man at Arms 14->13 gold 

Flagellant 10->9 gold 

Witchhunter 185->175 gold, 0.1 FAES random

Royal Guard - 45->35 gold 

Knight of the Chalice  - 55->45 gold

Paladin - 155->135 gold 

High inquistor- not str, 0.5 S random added

Members of the inquisition (nonwitchfinders) can pillage in friendly provinces (with population) to generate flagellants.  More flagellants are generated the higher the rank of the inquisitor.  Higher dominion and the presence of a temple also provide bonuses.

##### Mictlan, Reign of the Lawgiver
Tlahuelpuchi cost 25->33 Pathreq B2->B2D2

Civateteo pathreq B2D2->B2, douse 1

Sun Warriors 12->13 hp, 11->12 strength, 18->15 gold

##### T'ien Ch'i, Imperial Bureaucracy
Conscription:  Eunuchs foreignrec.  They can summon montag conscripts. Conscripts are militia-stat versions of the 3 footmen and the archer (ratio 1:1:1:2).  On reaching 24 exp, conscripts either desert or become regular units via expshape.

Masters of the Way W (WS) from W (WSAF)

Celestial Master MM1->2

Celestial Servant 3->2 gems

Horsemen, 20->18 gold 

Heavy Horsemen, 35->27 discount

Imperial Horsemen 40-30 gold dicount

Redguard Springpower 50->25, 55->45 gold

Prince General H1 Springpower 50->25, 240->210 gold 

Celestial Servent 3-> 2 gems

Internal Alchemy 10-> 2 gems

Thousand Year Ginseng 8->2 gems

Terracotta warriors summons national versions of terracotta troops.

##### Machaka, Reign of Sorcerors
Starting army is 20/20

Pygmies are forestrec

Witchdoctors are forestrec, 100 gold, -5 researchbonus, and N (FED)(EDN)from 80 gold FDN

Sorcerors are 195->180 gold, FDN2 (EDF) 0.25N from FDN2 1.1(EDNF)

Sorceresses are 85->90 gold, 0.1->0.4 FEDN

Machaka Archers are 10->9 gold

Machaka Warriors are 10->9 gold, the ones without javelins wear furs

Machaka Warriors and Chiefs are Foreignrec

Voices of the Lord are 115->90 gold, STR, and Foreignrec

Eyes of the Lord are 90->80 STR and Foreignrec

Ears of the Lord are 65->50 gold and Foreignrec

Bane Spiders are 110->80 gold and have 11->12 strength, 13->14 attack, 10->12 defense

Spider Warriors have +1 defense, 25->20 gold, and have dagger->poison dagger

Nonsacred spiders are now size 4, have higher strength and MR, and cost upkeep. 

So, spider Knights are 55->40 gold, wield lances, and are size 4
Spider Riders are 40->25 gold, and size 4 with light lances

Hunter Spiders (Black spiders) now have a fear weapon	

Spider form has MR 5->10 and strength 16->18, and upkeep 0->50

Hoplites are 14->13 gold

##### Agartha, Golem Cult

##### Abysia, Blood and Fire
Addition of ?Childen of Rhuax? spell - Abysian version of Rhuax pact, requiring F4E1.

Summon scorpion man now summons a commander, costs 10 gems, has torso  credit to  johannes

Addition ?abysian crossbreeding? (abysian themed version of the crossbreeding spell.)  

GoRing Demonspawn results in either a misbred commander (if they have afflictions), a blood hunter, or an assassin.

##### Caelum, Reign of the Seraphim

Spire Horn Archers (128) get a composite bow instead of a shortbow

Ice Bow does 9->11 damage

New Monster: Ice Enchanter.  W2 with an FSD random and a AWS random

##### C'tis, Miasma

Shaman Prophetshape gets +1S, +1N

##### Pangaea, Age of Bronze

Minotaurs 5 gold discount (50->45; 40->35)

##### Asphodel, Carrion Woods

Spawns occasional N1 sites on sufficiently decayed templed forest provinces

Minotaurs 5 gold discount (50->45; 40->35)

##### Vanheim, Arrival of Man

##### Jotunheim, Iron Woods

##### Vanarus, Land of the Chuds

##### Bandar Log, Land of the Apes

White Ones -5 gold

Royal Swordsmen -4 gold, +1 atk

Bandar Archers 18->17 gold

Bandar Warriors 18->17 gold  11->12 attack

All Vanara Units -1 gold

Nagas 20->15 gems

Nagaraja 30->25 gems

Devata 40 gems, S2->S3, HP 28->40 Str 17->19 Att 14->15 Def 12->13 Prc 11->13, 45->75 magical leadership		
Autocasts an animal-only antimagic

Devala 40 gems; S3->S4, Autocasts Celestial Music

Rudra 45 gems, HP 32->48, STR 18->21, Def 13->15, Prot 2->4, Att 15->17, Prec 13->15, autospell wrathful skies

Gandharva 18->15 pearls

Apasaras: Weak ranged attack 

Summon Dakini: 50->66 Bloodslaves (Applies to Lanka, BL, Patala)

Samanishada 35 -> 30 slaves; pathlevel 0-2

Sandhyabalas 3 -> 4 summoned

##### Shinuyama, Land of the Bakemono
Kappa Shaman UW Recruitable

Size 2 Bakemono are now slaves

Shuten-Doji Taskmaster 2

Bakemono General Inspiration 1

Bakemono Shaman get 0.2 F, 0.2 E, 0.2 D randoms

Dai Bakemono 30->25 gold

Dai Bakemono without bow 11->12 attack

Underwater Fort-rec kappa mage for 55 gold

Gozu-Mezu 7->5 gems

Summon Ko Oni effects 5+ >7++

Summon Ao Oni  10->4 gems

Summon Aka Oni 10->4 gems

Summon Oni - 12->7 gems

Summon Kuro Oni 10->6 gems, 4->4+ effects

Oni General  Research 6->5, 20->14 gems

Dai Oni 45->35 gems, research 8->7

Karusu Tengu Conj 2-> 5, 3->10 gems, 3->10+ effects

Konoha Tengu research level 3->2

Dai Tengu 55->40 gems

Nushi 25->20 gems

Kitsune 30->23 gems

New Ritual ?Hide Heart? (D2F2, 16 gems, research 5) produces a ?Ritual Assistant? that, when alone with a Sorceror on a mountain that isn?t already occupied, generates a hidden heart and makes the sorceror immortal.  However, if the heart is destroyed, the sorceror dies.

##### Ashdod, Reign of the Anakim

##### Nazca, Kingdom of the Sun

##### Xibalba, Flooded Caves
Jungle Muuch mm2

Darts ammo 4->6

Muuch Warrior (Bronze): +1 morale, attack, defense, +4 gold

Red Muuch not cap limited

Poison Dart stun damage increased to 50 (same as blowpipe)

Obsidian Warrior 26->22 gcost

muuch kahal paths W2E1D1(WEDN)-> W1E1D1 (WD) (WEDN) or (WED)(WDN)

##### Atlantis, Kings of the Deep

##### R'lyeh, Fallen Star

##### Pelagia, Triton Kings

##### Oceania, Mermidons

#### Late Age

##### Arcoscephale, Sibylline Guidance
Agema Commander 105->100 gold 

Agema Companion 35->30 gold 

##### Pythium, Serpent Cult
Folds in LA Pythium overhaul mod. Troops slightly improved, but the main thing is a mechanic that lets you switch between active cults, with different bonuses provided for any of the three possible choices.

All cults have their divine authority increased when endorsed. This might give them priest levels, remove heretic, and/or decrease a research malus.

Serpent Cult gets more hydras and snakes as summons, while assassins and hydras stop being cult only. They can also shapeshift into monstrous snakes, and get a new magic item that can only be used when they are endorsed. Finally, they get access to Swamps of Pythia from CBM (thanks, llama!).

Solar Cult gets cheaper and easier recruitment of their members, and gets a reclimit sacred. They get a new solar bull summon, and a ritual that can convert Leos into Helioperses, who are effective thugs, and the only unit that can wield the 4 new solar cult items. Casting second sun provides some freespawn. They also get an F2H3 buff that significantly increases the combat prowess of sacreds, but will severely burn sacreds who aren't members of the cult of the solar bull (fire resistance helps).

Fertility cult can convert casters into Galli, who are their clergy, and their main access to their rituals. They get very cheap assassination rituals that can send maenads, boars, or lions after an enemy, can shapechange into monstrous lions or boars, can throw bloody fertility rites and orgies, and inexpensively summon boars and lions with summerpower. They also get cheaper vine men.

Reference is made to https://docs.google.com/document/d/1nkTDn9yhYQrRcN6k0dTjzs5DpuKxiauV76wA0zQnkTs for the full changelog.

##### Lemuria, Soul Gates
Spectrals weapons are now hardmrnegates.  

Receive a D1 site that spawns in land (not water provinces) they control with high dominion and low population,

reduced cap income.  

Prefers cold 1

Pays 50% more for all forts, but recruits from fortera 2

Starts with a D2 mage; 

acolytes D1H1-> D1H1(DS)

PD uses centurions.  Acolytes appear at 20 pd.

Chance of spawning tribunes and centurions in capital during expansion.

##### Man, Towers of Chelms
Tower Knight 45gold->35

Axemen mm1-> mm2

Warden, Lord Warden MM2

Magister Arcane: Siege bonus, siege defense 10

Magister: Always provides research, magic paths changed from 0.5A, 0.5E, 0.25S to 0.40 AE, 0.5 S, 100->70 gold.

Judge 70->50 gold, paths changed from 0.25F, 0.25D to 0.45F, 0.45D, no longer needs forts

##### Ulm, Black Forest
Black Templar 70->50 gold 

Hochmeister 120->105 gold 

##### Marignon, Conquerors of the Sea
Angel of Fury cost->25 pearls, self-blesses, damage reflection

Angelic Host S5->S4F1, 50->40 pearls

Heavely Choir S6F2->S5F3, 88 pearls, choir angels now get an anti-undead ranged attack

Starting Army city guard -> Pikeneers

Goetic Masters are stronger ritual casters

##### Mictlan, Blood and Rain
Rain Warriors 23->20 gold

Returned have stone glaives (7 damage) instead of spears

sun warriors cost 18->15; Hp 12->13; Strength 10->11

Tlahuelpuchi cost 25-33 Pathreq B2->B2D2

Civateteo pathreq B2D2->B2, douse 1

##### T'ien Ch'i, Barbarian Kings
Khan 140->130 gold

Light Barbarian Horsemen 20->17 gold

##### Jomon, Human Daimyos
Ashigaru Archer added (As Ashigaru is to Bandit: 8 gold, not stealthy)

Samurai, Samurai archer 9->10 hp

Aka-Oni Samurai 15->14 gold

Samurai Cav 40->30 gold, Longbow

Sohei, Yamabushi 26 gold -> 21

Mounted Gokenin, Hatamoto given Longbows

Fivefold path monks: 1.00->1.20 randoms

meditation sign: 20+5/level fatigue reduction

earth-touching sign: range scales

welcome sign: range scales

Courage sign: Aoe 2++->4++

Tatsu 200% randoms->300%, 19 gems->25

Gozu-Mezu 7->5 gems

Summon Ko Oni effects 5+ >7++

Summon Ao Oni  10->4 gems

Summon Aka Oni 10->4 gems

Summon Oni - 12->7 gems

Summon Kuro Oni 10->6 gems, 4->4+ effects

Oni General  Research 6->5, 20->14 gems

Dai Oni 45->35 gems, research 8->7

Karusu Tengu Conj 2-> 5, 3->10 gems, 3->10+ effects

Konoha Tengu research level 3->2

Dai Tengu 55->40 gems

Nushi 25->20 gems

Kitsune 30->23 gems

##### Agartha, Ktonian Dead
Blindlord; 140->110 gold, insp 1, goodleader->okleader

Blindfighter Strength 11->12

Cave Knight 10 gold discount

Servant of Oracles given mm2

##### Abysia, Blood of Humans
Addition of ?Childen of Rhuax? spell - Abysian version of Rhuax pact, requiring F4E1.

Summon scorpion man now summons a commander, costs 10 gems, has torso  credit to  johannes

Addition ?abysian crossbreeding? (abysian themed version of the crossbreeding spell.)  

GoRing Demonspawn results in either a misbred commander (if they have afflictions), a blood hunter, or an assassin.

Newts discounted by 85->70 gold

Anathemant Salamanders 175->160 gold, given 0.2 FESD  random

Anathemant Dragons  310->295 gold, given 0.2 FESD additional random

##### Caelum, Return of the Raptors

##### C'tis, Desert Tombs

##### Pangaea, New Era

Pan EDNB random is 10%->30%

Minotaurs 5 gold discount (50->45; 40->35).

##### Midgard, Age of Men

##### Utgard, Well of Urd

##### Bogarus, Age of Heroes
Grid Druzhina 30->25 gold

Malaia Druzhina 45->35 gold

Styag 40->30 gold

Black Hood 25->15 gold 

##### Patala, Reign of the Nagas
Bandar Archers 18->17 gold

Bandar Warriors 18->17 gold  11->12 attack

All Vanara Units -1 gold

Devata 40 gems, S2->S3, HP 28->40 Str 17->19 Att 14->15 Def 12->13 Prc 11->13, 45->75 magical leadership		
Autocasts an animal-only antimagic

Devala 40 gems; S3->S4, Autocasts Celestial Music

Rudra 45 gems, HP 32->48, STR 18->21, Def 13->15, Prot 2->4, Att 15->17, Prec 13->15, autospell wrathful skies

Gandharva 18->15 pearls

Apasaras: Weak ranged attack granted

Summon Dakini: 50->66 Bloodslaves 

Samanishada 35 -> 30 slaves; pathlevel 0-2

Sandhyabalas 3 -> 4 summoned

##### Gath, Last of the Giants
##### Ragha, Dual Kingdom
PD now use a greater proprotion of light infantry.

Zhayedans cost 40 gold each time they lose a rider

Karapans cost 100->110 gold

Athravans are coldrec 1, to reduce flying sacred parties

Turan Sorcerors are heatrec 2, 225->265 gold

Airya Seraphs are coldrec 2, 225->265 gold

Paighans have militia morale, are 8->9 gold

Turan infantry are all +1 goldcost

Turan Elephants are +10 goldcost

Airya archers and infantry are +1 goldcost

##### Xibalba, Return of the Zotz
Beastbats 1.44 siege defense from 2.44, undisciplined, lower MR.

Chilans Recruited in Caves are STR

Zotz lances are stone, and cost +2 resources

Zotz cost a minimum of 8 gold.

##### Atlantis, Frozen Sea

##### R'lyeh, Dreamlands
spawns occasional S1 sites on templed coastal provinces with sufficiently high dominion

All freespawn is 0 upkeep

Create Voidrift: Thau 6 S5W2 10 pearl ritual that can create a site that allows void-summoning.
