#!/usr/bin/env zsh

HERO="$(cat firstNames.txt | sort -R | head -n 1) $(cat lastNames.txt | sort -R | head -n 1)"
HEROGENDER=$(echo -e male\\nfemale\\n | sort -R | head -n 1)
SENEXGENDER=$(echo -e male\\nfemale\\n | sort -R | head -n 1)
HOMETOWN="$(cat towns.txt | sort -R | head -n 1)"
OTHERWORLD="$(cat imaginaryPlaces.txt | sort -R | head -n 1)"
ENEMY="$(echo -e {Devil,Balrog,Emperor,King,Monster,Archon,Alien,Dragon,Half-Elf,Giant,Minotaur,Mannakin,Mandragora,Werewolf,Vampire,Lich,Succubus}\ {Az,Zar,Kor,Ak,On,Ark,Xek,Rilk}{ar,or,arc,ork,ord}{el,wurm,or,oz,kil,kan}\\n | grep . | sort -R | head -n 1)"
SENEX="$(echo -e "$(echo -e {Old\ ,Old\ Man\ ,Sir\ ,Dr.\ ,Professor\ ,Master\ ,Brother\ ,}\\n | sort -R | head -n 1)$(echo -e {$(cat firstNames.txt | sort -R | head -n 1)\ ,}\\n | sort -R | head -n 1)$(cat lastNames.txt | sort -R | head -n 1)$(echo -e {\ the\ $(echo -e {Grey,White,Red,Brown,Green,Violet,Gold,Silver,Traveller,Mad\ Arab,Mad,Ancient,Wise,Necromancer,Mage,Magician,Wizard,Monk,Paladin,Thief,Shaman,Rogue,Knight,Warrior,Priest,Alchemist,Elf,Dwarf,Orc,Man,Night\ Elf,Halfling,Wolf,Madman,Mad\ Dog,Eagle-Eyed,Fisher\ King,Hangman,Dead,Dread,Dragonborn,Yeti\ Tamer,Dog\ Whisperer}\\n | grep . |sort -R | head -n 1),}\\n | sort -R | head -n 1)$(echo -e {\ of\ $(cat towns.txt imaginaryPlaces.txt | sort -R | head -n 1 | sed 's/ /\\ /g'),}\\n | grep . | sort -R | head -n 1)" | grep . | sort -R | head -n 1 | sed 's/,}//g' | tr -d '{}\\' | sed 's/  */ /g')"
WEAPON=$(echo -e {The,A}\ {Magic,Enchanted,Golden,Silver,Kryptonite,Adamantium,Elven,Eldrich,Rusty,Green,Violet,Black,Dark,Glowing,Bright,Ancient,Arcane,Cyclopean,Antedeluvian}\ {Sword,Arrow,Bow,Shield,Cauldron,Light,Staff,Wand,Cup,Pentacle,Hand,Cloak,Cape,Scythe,Dart,Pistol,Stone,Amulet,Locket,Key,Book,Tome,Volume,Grimoire,Spell,Beans,Orb,Crystal,Doll,Stick,Pocketwatch,Mantra,Incantation,Bone,Charm,Rebis,Geas}{,\ of\ Glory,\ of\ Wrath,\ of\ Shame,\ of\ Love,\ of\ Power,\ of\ Darkness}\\n | grep . | sort -R | head -n 1)
TITLE="$(echo -e $HERO{,\ and\ $SENEX}\ in\ $OTHERWORLD\\nFrom\ $HOMETOWN\ to\ $OTHERWORLD{,\ and\ Back\ Again}\\nThe\ {Secret,Mystery}\ of\ {$OTHERWORLD,$HOMETOWN,$WEAPON}\\n$WEAPON\ in\ {$HOMETOWN,$OTHERWORLD}\\n{$HERO,$SENEX}\ and\ $WEAPON\\n | grep . | sort -R | head -n 1)"
HeroPronoun=$(if [[ "$HEROGENDER" == "male" ]] ; then echo he ; else echo she ; fi)
HeroPosessive=$(if [[ "$HEROGENDER" == "male" ]] ; then echo his ; else echo her ; fi)
HeroAttribute1=$(echo -e {Young,Brave,Fair-haired,Red-haired,Golden-haired,Courageous}\\n | grep . | sort -R | head -n 1)
weather() {
	echo -e It\ was\ a\ {warm,cold,hot,dark,muggy,foggy,humid}{\ and,\,}\ {crisp,clear,cloudy,rainy,windy,stormy,moon-lit,overcast}\ {day,night}\\n | sort -R | head -n 1
}
location() {
	echo -e {a,the}\ {cave,cavern,mansion,castle,tower,shack,riverbed,gutter,forest,valley,trees,wall,shipyard,junkyard}\ {at\ the\ edge\ of,under,behind,above,beneath,a\ few\ miles\ away\ from,beside}\ {town,$HeroPosessive\ house,$HeroPosessive\ school,$HeroPosessive\ grandmother\'s\ house,$HeroPosessive\ crazy\ uncle\'s\ house,the\ old\ mill,the\ forbidden\ zone,$HOMETOWN}\\n | sort -R | head -n 1
}
weaponAttribute() {
	echo -e {dusty,rusty,worn,eldrich,cyclopean,ancient,antedeluvian,carved,hammered,riven,sharp,dull,glowing,pulsating,incredible,silent,vibrating,numinous}\ {pitch-black,green,red,violet,purple,orange,yellow,pink,leather,rawhide,grassy,wood,silver,gold,copper,brass,bronze,iron,steel,jewel-encrusted,gem-encrusted,gilded,gilt}\ {blade,handle,shaft,chain,harness,holster,grip,spikes,tether,tip,underside,shaft,handgrip,inlay,inlays,globes,patterns,carvings,runes,sigils,engravings,tassles,barrel,sack,satchel}\\n | grep . | sort -R | head -n 1
}
weaponAttribute1=$(weaponAttribute)
weaponAttribute2=$(weaponAttribute)
aweAdjective() {
	echo -e {beautiful,enchanting,terrifying,horrible,awful,amazing,incredible,bizarre,strange,ominous,numinous,horrifying}\\n | grep . | sort -R | head -n 1
}
EnemyAttribute1=$(aweAdjective)
SenexHome=$(location)
SenexHomeDescription=$(echo -e "a $(aweAdjective) place, "{cut\ into\ the\ hillside,deep\ beneath\ the\ earth,hanging\ off\ a\ cliff,in\ the\ darkest\ depths\ of\ the\ forest,on\ the\ highest\ peak\ of\ the\ mountain,in\ the\ shadow\ of\ the\ mountain,nestled\ in\ the\ trunk\ of\ a\ great\ oak\ tree}", made of "{great\ blocks\ of\ granite,pure\ white\ marble,old\ driftwood,sod\ and\ straw,crumbling\ brick,ancient\ outcroppings,strange\ rock\ formations,the\ living\ bodies\ of\ plants,a\ heap\ of\ disintegrating\ animal\ hides,sticks\ and\ mud,uneven\ stone,concrete\ and\ rebar}", with $(aweAdjective) "{animals\ hanging\ from\ the\ cieling,organs\ in\ jars\ stacked\ on\ the\ shelves,potions\ sitting\ in\ the\ corner,chicken\ feet\ holding\ it\ off\ the\ ground,worm-eaten\ books\ piled\ against\ the\ walls,weapons\ above\ the\ mantle}" and a "{giant\ bonfire,great\ glowing\ orb,bubbling\ cauldron,summoning\ circle,rusty\ cage,operating\ table}\ {on,above,below,in\ the\ center\ of}\ {the\ drawing\ room,the\ library,the\ workshop,the\ yard}\\n | grep . | sort -R | head -n 1)

intro=$(echo -e Once{\,\ long\ ago,\ upon\ a\ time,}", in "{the\ city\ of,the\ town\ of,the\ land\ of,the\ hamlet\ of,the\ village\ of}" $HOMETOWN, there "{lived,resided}" $HERO. $(weather). $HeroPronoun "{first\ ,}{found,discovered,saw,came\ upon}" $WEAPON in $(location)."\\n"$(weather) in "{the\ city\ of,the\ town\ of,the\ land\ of,the\ hamlet\ of,the\ village\ of}" $HOMETOWN when $HERO "{first\ ,}{found,discovered,saw}" $WEAPON. It was in $(location)"\\n | grep . | sort -R | head -n 1)
intro="$intro $(echo -e "It was $(aweAdjective), with its $(aweAdjective) $weaponAttribute1 and its $(aweAdjective) $weaponAttribute2. $HeroPronoun didn't know "{what\ it\ was,what\ to\ do,what\ to\ do\ with\ it,what\ this\ omen\ meant,what\ this\ message\ from\ the\ gods\ could\ mean}", so $HeroPronoun went to $SenexHome to ask $SENEX. $SenexHome was $SenexHomeDescription. \"$HeroAttribute1 $HERO,\" $SENEX said. \"This weapon, $WEAPON, is a "{omen,sign\ from\ the\ gods,warning\ prophecy}" of "{doom,misfortune,fortune,times\ to\ come,glory}". It means you must "{go,journey,travel,quest}" to $OTHERWORLD and "{slay,kill,defeat,tame}" the $EnemyAttribute1 $ENEMY.\""\\n | grep . | sort -R | head -n 1)"

CallToAdventure="$intro"

SEPARATION="$CallToAdventure\n$RefusalOfTheCall\n$SupernaturalAid\n$CrossingTheThreshhold\n$BellyOfTheWhale\n"
INITIATION="$TheRoadOfTrials\n$TheMeetingWithTheGoddess\n$WomanAsTemptress\n$AtonementWithTheFather\n$Apotheosis\n$TheUltimateBoon\n"
RETURN="$RefusalOfTheReturn\n$TheMagicFlight\n$RescueFromWithout\n$TheCrossingOfTheReturnThreshhold\n$MasterOfTwoWorlds\n$FreedomToLive\n"
NARRATIVE="$TITLE\n\n$SEPARATION\n$INITIATION\n$RETURN\n"

echo "Hero: $HERO"
echo "Hometown: $HOMETOWN"
echo "Senex: $SENEX"
echo "Other world: $OTHERWORLD"
echo "Weapon: $WEAPON"| sed 's/\( [aA]\)\( [aeiouAEIOU]\)/\1n\2/g;s/  */ /g'
echo "Title: $TITLE"| sed 's/\( [aA]\)\( [aeiouAEIOU]\)/\1n\2/g;s/  */ /g'
echo -e "\n$NARRATIVE" | sed 's/\( [aA]\)\( [aeiouAEIOU]\)/\1n\2/g;s/  */ /g'
