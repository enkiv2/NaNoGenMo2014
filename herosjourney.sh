#!/usr/bin/env zsh

HERO="$(cat firstNames.txt | sort -R | head -n 1) $(cat lastNames.txt | sort -R | head -n 1)"
HOMETOWN="$(cat towns.txt | sort -R | head -n 1)"
OTHERWORLD="$(cat imaginaryPlaces.txt | sort -R | head -n 1)"
SENEX="$(echo -e "$(echo -e {Old\ ,Old\ Man\ ,Sir\ ,Dr.\ ,Professor\ ,Master\ ,Brother\ ,}\\n | sort -R | head -n 1)$(echo -e {$(cat firstNames.txt | sort -R | head -n 1)\ ,}\\n | sort -R | head -n 1)$(cat lastNames.txt | sort -R | head -n 1)$(echo -e {\ the\ $(echo -e {Grey,White,Red,Brown,Green,Violet,Gold,Silver,Traveller,Mad\ Arab,Mad,Ancient,Wise,Necromancer,Mage,Magician,Wizard,Monk,Paladin,Thief,Shaman,Rogue,Knight,Warrior,Priest,Alchemist,Elf,Dwarf,Orc,Man,Night\ Elf,Halfling,Wolf,Madman,Mad\ Dog,Eagle-Eyed,Fisher\ King,Hangman,Dead,Dread,Dragonborn,Yeti\ Tamer,Dog\ Whisperer}\\n | sort -R | head -n 1),}\\n | sort -R | head -n 1)$(echo -e {\ of\ $(cat towns.txt imaginaryPlaces.txt | sort -R | head -n 1 | sed 's/ /\\ /g'),}\\n | sort -R | head -n 1)" | sort -R | head -n 1 | sed 's/,}//g' | tr -d '{}\\' | sed 's/  */ /g')"
TITLE="$(echo -e $HERO{,\ and\ $SENEX}\ in\ $OTHERWORLD\\nFrom\ $HOMETOWN\ to\ $OTHERWORLD{,\ and\ Back\ Again}\\nThe\ {Secret,Mystery}\ of\ {$OTHERWORLD,$HOMETOWN} | sort -R | head -n 1)"

SEPARATION="$CallToAdventure\n$RefusalOfTheCall\n$SupernaturalAid\n$CrossingTheThreshhold\n$BellyOfTheWhale\n"
INITIATION="$TheRoadOfTrials\n$TheMeetingWithTheGoddess\n$WomanAsTemptress\n$AtonementWithTheFather\n$Apotheosis\n$TheUltimateBoon\n"
RETURN="$RefusalOfTheReturn\n$TheMagicFlight\n$RescueFromWithout\n$TheCrossingOfTheReturnThreshhold\n$MasterOfTwoWorlds\n$FreedomToLive\n"
NARRATIVE="$SEPARATION\n$INITIATION\n$RETURN\n"

echo "Hero: $HERO"
echo "Hometown: $HOMETOWN"
echo "Senex: $SENEX"
echo "Other world: $OTHERWORLD"
echo "Title: $TITLE"
