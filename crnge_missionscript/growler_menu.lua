---------------------------------------------------
-- Growler Radio Menu System System
---------------------------------------------------

if (GROWLER ~= nil) then
   MenuGrowlerRadio = missionCommands.addSubMenu("Growler Radio")
     GrowlerStartVietnam         = missionCommands.addCommand("Play Vietnam Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistVietnam, announcerlist = GRLIB.announcer})
     GrowlerStartFighterPilot    = missionCommands.addCommand("Play Fighter Pilot Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistFighter, announcerlist = GRLIB.announcer})
     GrowlerStartBomber          = missionCommands.addCommand("Play Bomber Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistBomber, announcerlist = GRLIB.announcer})
     GrowlerStartGringos         = missionCommands.addCommand("Play Dos Gringos Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistGringos, announcerlist = GRLIB.announcer})
     GrowlerStartB7R             = missionCommands.addCommand("Play Anime Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistAnime, announcerlist = GRLIB.announcer})
     GrowlerRadioSkip            = missionCommands.addCommand("Skip Next Song", MenuGrowlerRadio, GROWLER.GROWLERSKIP)
     GrowlerRadioOff             = missionCommands.addCommand("Deactivate Growler Radio", MenuGrowlerRadio, GROWLER.GROWLERSTOP)
else
   env.info( "CRNGE | Growler Radio is not installed. Growler commands not added." ) 
end 
