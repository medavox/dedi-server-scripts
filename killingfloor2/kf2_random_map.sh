#!/bin/bash

# 0 = Normal
# 1 = Hard
# 2 = Suicidal
# 3 = Hell on Earth
Difficulty=2

# 0 = Short (4 rounds)
# 1 = Normal (7 rounds)
# 2 = Long (10 rounds)
GameLength=2
#Port=7000
#Queryport=12000
#WebAdminPort=2000

###########
#Game Mode#
###########

#default (survival)
GameMode=""

#weekly
#GameMode="?game=KFGameContent.KFGameInfo_WeeklySurvival"

#Endless
#GameMode="?game=KFGameContent.KFGameInfo_Endless"

#VS Survival
#GameMode="?game=KFGameContent.KFGameInfo_VersusSurvival"

#TODO: Objective?

Mutator="?Mutator=KFMutator.KFMutator_MaxPlayersV2?MaxPlayers=10"
#Mutator="?Mutator=KFMutator.KFMutator_MaxPlayersV2?MaxPlayers=10?MaxMonsters=64"


##get list of installed maps:
#tree -fi /home/steam/Steam/steamapps/common/kf2server/KFGame/BrewedPC/Maps | grep -iE "KF-"
#remove junk around map names:
#regex replace "^.+/([^/]+)$" -> "\1"
#regex replace "\.kfm" -> " \"

#all maps
# maps=(KF-Airship \
# KF-AshwoodAsylum \
# KF-Biolapse \
# KF-BioticsLab \
# KF-BlackForest \
# KF-BurningParis \
# KF-Catacombs \
# KF-ContainmentStation \
# KF-Desolation \
# KF-DieSector \
# KF-EvacuationPoint \
# KF-Farmhouse \
# KF-HostileGrounds \
# KF-InfernalRealm \
# KF-KrampusLair \
# KF-Lockdown \
# KF-VolterManor \
# KF-MonsterBall \
# KF-Nightmare \
# KF-Nuked \
# KF-Outpost \
# KF-PowerCore_Holdout \
# KF-Prison \
# KF-Sanitarium \
# KF-SantasWorkshop \
# KF-ShoppingSpree \
# KF-Spillway \
# KF-SteamFortress \
# KF-TheDescent \
# KF-TragicKingdom \
# KF-ZedLanding)

#no floored maps
maps=(KF-Airship \
KF-AshwoodAsylum \
KF-BioticsLab \
KF-BlackForest \
KF-BurningParis \
KF-Catacombs \
KF-ContainmentStation \
KF-Desolation \
KF-DieSector \
KF-EvacuationPoint \
KF-Farmhouse \
KF-HostileGrounds \
KF-InfernalRealm \
KF-KrampusLair \
KF-Lockdown \
KF-VolterManor \
KF-MonsterBall \
KF-Nuked \
KF-Outpost \
KF-Prison \
KF-Sanitarium \
KF-SantasWorkshop \
KF-ShoppingSpree \
KF-Spillway \
KF-SteamFortress \
KF-TragicKingdom \
KF-ZedLanding)

int=$((RANDOM % ${#maps[*]}))
#/home/steam/Steam/steamapps/common/kf2server/Binaries/Win64/KFGameSteamServer.bin.x86_64 kf-bioticslab?Mutator=KFMutator.KFMutator_MaxPlayersV2?MaxPlayers=10?MaxMonsters=64
/home/steam/Steam/steamapps/common/kf2server/Binaries/Win64/KFGameSteamServer.bin.x86_64 \
${maps[$int]}?Difficulty=$Difficulty?GameLength=$GameLength?GameLength=$GameLength$GameMode$Mutator 
#-Port=$Port -Queryport=$Queryport -WebAdminPort=$WebAdminPort > /dev/null 2>&1 &
