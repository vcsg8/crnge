--[[

CSG8 CRNGE Mission Script
Version: 2023-11-19T14:32:28Z
Authors: isotaan

]]

--Setting up debugging

env.info( "CRNGE | CRNGE Mission Script dev-2023-11-19T14:32:28Z Loading..." ) 

crnge = {}
crnge.__index = crnge
crnge.debug = false --For verbose debugging of each section of this script
crnge.skynetdebug = false --Turns on the message debug for Skynet
crnge.a2adebug = false --Turns on message debugging for MOOSE's A2ACAP
crnge.root = nil
crnge.introMusic = nil

 --Default sound message that plays at the end of this script


if (homefile == true) then
  crnge.root = "G:\\DCS Sound Files\\Music"
  crnge.introMusic = crnge.root .."999_Nominal.mp3"
else
  crnge.root = "D:\\STE_Files\\Music\\"
  crnge.introMusic = crnge.root .."999_Nominal.mp3"
end

--Checks for JACKAL. Required for the CRNGE to work correctly.
if jackal == nil then
   trigger.action.outText("CRNGE | CRNGE Requires JACKAL. Some functionality will not be supported." , 10 , false)
else
  --Enables Jackal logging
  jackal.enums.preferences.markpoint_logging = true
end

 
if (crnge.debug == true) then
    trigger.action.outText("CRNGE | CRNGE Mission Script --- START" , 10 , false)
end
  
 _SETTINGS:SetPlayerMenuOff()
 
function crnge.playNominal()

  if lfs and io then
    --Outputs a test sound file if sanitization has occured
    STTS.PlayMP3(crnge.introMusic,"251,241,1","AM,AM,FM","0.3","CRNGE BETTY",2)
  else
    env.info("CRNGE | MissionScipting.lua is not sanitized. STTS.PlayMP3 will not function.")
  end
end
  
function crnge.textNominal()
  trigger.action.outText("REACTION ONLINE \nSENSORS ONLINE \nWEAPONS ONLINE \n\nALL SYSTEMS NOMINAL", 10)
end
---------------------------------------------------
-- Group Templates
---------------------------------------------------
do

    if (crnge.debug == true) then
      trigger.action.outText("CRNGE | Group Templates --- START" , 10 , false)
    end

  Template_Red_Convoy = { 
    'R_CONVOY', 
    'R_CONVOY-1', 
    'R_CONVOY-2', 
    'R_CONVOY-3',  
    'R_CONVOY-4',  
    'R_CONVOY-5',
    'R_CONVOY-6',
    'R_CONVOY-7',
    'R_CONVOY-8',
    'R_CONVOY-9',
    'R_CONVOY-10',
    }

  Template_Red_Helicopter = { 
    'R_TMP_HELO_AH1', 
    'R_TMP_HELO_AH64', 
    'R_TMP_HELO_KA50',
    'R_TMP_HELO_MI24AA',
    'R_TMP_HELO_MI24AG',
    'R_TMP_HELO_MI28',
    'R_TMP_HELO_GAZAA',
    'R_TMP_HELO_UH60',
    'R_TMP_HELO_UH1',
    'R_TMP_HELO_OH58',
    'R_TMP_HELO_MI8',
    'R_TMP_HELO_MI26',
    'R_TMP_HELO_KA27',
    'R_TMP_HELO_CH47',
    'R_TMP_HELO_KA50III'
    }

  Spawn_R_Escort_Template = { 
    'ESC_SU27', 
    'ESC_MIG23',
    'ESC_SU30'
    }

  Spawn_R_WW2_Escort_Template = { 
    'Two-Ship Bf 109', 
    'Two-Ship P-47',
    'Two-Ship P-51'
  }

  Spawn_R_CW1_Escort_Template = { 
    'ESC_F5',
    'ESC_F1EQ',
    'ESC_F4',
    'ESC_F16',
    'ESC_F14',
    'ESC_F18'
  }

  Spawn_R_CW2_Escort_Template = { 
    'ESC_MIG21', 
    'ESC_MIG19',
    'ESC_MIG23'
  }

  Spawn_R_CW3_Escort_Template = { 
    'ESC_SU27', 
    'ESC_SU30',
    'ESC_JF17',
    'ESC_J11'
  }

  Spawn_R_Bombers_Template = { 
    'A2G_BOMBERS_TU22'
    }

  Spawn_R_WW2_Bombers_Template = { 
    'A2G_BOMBERS_A20'
    }

  Spawn_R_CW1_Bombers_Template = { 
    'A2G_BOMBERS_B52'
  }

  Spawn_R_CW2_Bombers_Template = { 
    'A2G_BOMBERS_H6J'
  }

  Spawn_R_CW3_Bombers_Template = { 
    'A2G_BOMBERS_TU22'
  }

  Spawn_R_LL1_Bombers_Template = { 
    'A2G_BOMBERS_SU22'
  }

  Spawn_R_LL2_Bombers_Template = { 
    'A2G_BOMBERS_AJS37'
  }

  Spawn_R_LL3_Bombers_Template = { 
    'A2G_BOMBERS_F16'
  }
  
  Spawn_R_LL4_Bombers_Template = { 
    'A2G_BOMBERS_F15'
  }

  env.info( "CRNGE | Group Templates --- Completed" )

end
---------------------------------------------------
-- Carrier Unit Spawning
---------------------------------------------------
do
if (crnge.debug == true) then
  trigger.action.outText("*** Carrier Unit Spawning --- START ***" , 10 , false)
end

-- *** Carrier Patrol ***
--GROUP:FindByName("Carrier Strike Group 8"):PatrolRouteRandom(37)
--GROUP:FindByName("Liaoning Task Force"):PatrolRouteRandom(37)


--[[ *** S-3 Recovery Tanker ***
local tankerCSG=RECOVERYTANKER:New(UNIT:FindByName("CVN-75 Harry S Truman"), "S-3")
    :SetTACAN(85, "TX1", "X")
    :SetRadio(285)
    :SetCallsign(CALLSIGN.Tanker.Texaco, 1)
    :SetAltitude(6000)
    :SetSpeed(274) --250 IAS
    :SetRacetrackDistances(10,5)
    :SetTakeoffAir()


tankerCSG:Start()
]]

--[[ *** KC-130 Tanker ***
local tanker130CSG=RECOVERYTANKER:New(UNIT:FindByName("CVN-75 Harry S Truman"), "KC-130")
    :SetHomeBase(AIRBASE.PersianGulf.Fujairah_Intl)
    :SetTACAN(86, "TX2", "X")
    :SetRadio(286)
    :SetCallsign(CALLSIGN.Tanker.Texaco, 2)
    :SetAltitude(8000)
    :SetSpeed(290) --250 IAS
    :SetRacetrackDistances(10,5)
    :SetTakeoffAir()

tanker130CSG:Start()
]]

--
--[[ *** AWACS ***
local awacsDarkstar=RECOVERYTANKER:New(UNIT:FindByName("CVN-75 Harry S Truman"), "E-2")
    :SetAWACS()
    :SetCallsign(CALLSIGN.AWACS.Darkstar, 1)
    :SetAltitude(25000)
    :SetRadio(252.75)
    :SetTakeoffAir()

awacsDarkstar:Start()
]]

--[[ *** Rescue Helo ***
heloCSG=RESCUEHELO:New("CVN-75 Harry S Truman", "SH-60")
    :SetModex(22)
    :SetHomeBase(AIRBASE:FindByName("CG-66 Hue City"))

heloCSG:Start()

]]
env.info( "CSG8 | Carrier Unit Spawning --- Completed" )

end
---------------------------------------------------
-- Air Unit Spawning
---------------------------------------------------
do
if (crnge.debug == true) then
  trigger.action.outText("CRNGE | Air Unit Spawning --- START" , 10 , false)
end


Spawn_E3_Overlord = SPAWN:New( "Overlord" )
    :InitLimit( 1,0 )
    :InitDelayOff()
    :InitCleanUp( 300 )
    :InitRepeatOnLanding()
    :SpawnScheduled(120,0.2)

 REDFOR_AWACS = SPAWN:New("RED_AWACS"):InitLimit( 1, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 300, 0.25 )
  
  REDFOR_CITY_HELO = SPAWN:New("R_CITY_AIR-1"):InitLimit( 1, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 300, 0.25 )
 
 
 env.info( "CRNGE | Air Unit Spawning --- Completed" )

end
---------------------------------------------------
-- Ground Vehicle Spawning
---------------------------------------------------
do
if (crnge.debug == true) then
  trigger.action.outText("CRNGE | Ground Vehicle Spawning --- START" , 10 , false)
end

--Roadside convoys w/ air escort
Moving_Convoy_01 = SPAWN:New( "R_CVY_01")
  :InitLimit( 15, 0 )
  :InitGroupHeading(262)
  :InitRandomizeTemplate( Template_Red_Convoy )
  :SpawnScheduled( 300, 0)
  :OnSpawnGroup(
    function( SpawnGroup )
      local Spawn_Helo_01 = SPAWN:New( "R_Convoy_Helo_01" )
      :InitRandomizeTemplate( Template_Red_Helicopter )
      :Spawn()
      local FollowDCSTask = Spawn_Helo_01:TaskEscort( SpawnGroup, POINT_VEC3:New(-50, 100, 0):GetVec3(), 5, 3000, {'Air'} )
      Spawn_Helo_01:SetTask (FollowDCSTask,4)
    end
  )

--Roadside convoys w/ air escort
Moving_Convoy_02 = SPAWN:New( "R_CVY_02")
  :InitLimit( 15, 0 )
  :InitGroupHeading(224)
  :InitRandomizeTemplate( Template_Red_Convoy )
  :SpawnScheduled( 300, 0)
  :OnSpawnGroup(
    function( SpawnGroup )
      local Spawn_Helo_01 = SPAWN:New( "R_Convoy_Helo_02" )
      :InitRandomizeTemplate( Template_Red_Helicopter )
      :Spawn()
      local FollowDCSTask = Spawn_Helo_01:TaskEscort( SpawnGroup, POINT_VEC3:New(-50, 100, 0):GetVec3(), 5, 3000, {'Air'} )
      Spawn_Helo_01:SetTask (FollowDCSTask,4)
    end
  )

Moving_Convoy_03 = SPAWN:New( "R_CVY_03")
  :InitLimit( 15, 0 )
  :InitGroupHeading(149)
  :InitRandomizeTemplate( Template_Red_Convoy )
  :SpawnScheduled( 300, 0)

--[[
AddDismounts("R_CNV-1","Rifle")
AddDismounts("R_CNV-2","Rifle")
AddDismounts("R_CNV-3","MANPADS")
AddDismounts("R_CNV-1-1","Rifle")
AddDismounts("R_CNV-1-2","Rifle")
AddDismounts("R_CNV-1-3","MANPADS")
AddDismounts("R_SCOUT_1-1","Rifle")
AddDismounts("R_SCOUT_1-2","MANPADS")
AddDismounts("R_SCOUT_2-1","Rifle")
AddDismounts("R_SCOUT_2-2","MANPADS")
AddDismounts("R_CITY_MOV_VEH-2-1","Rifle")
AddDismounts("R_CITY_MOV_VEH-2-2","Rifle")
AddDismounts("R_CITY_MOV_VEH-2-3","Rifle")
AddDismounts("R_CITY_MOV_VEH-3-1","Rifle")
AddDismounts("R_CITY_MOV_VEH-3-2","Rifle")
AddDismounts("R_CITY_MOV_VEH-3-3","MANPADS")]]

 env.info( "CRNGE | Ground Vehicle Spawning --- Completed" )
end
---------------------------------------------------
-- Naval Vessel Spawning
---------------------------------------------------
do
if (crnge.debug == true) then
  MESSAGE:New("CRNGE | Ship spawning --- START",10):ToAll()
end

Moving_Ship_01 = SPAWN:New( "N_NavalTargets-1")
  :InitLimit( 1, 0 )
  :OnSpawnGroup(
    function( SpawnGroup )
      SpawnGroup:PatrolRouteRandom(25)
    end
  )
  :SpawnScheduled( 120, 0)

Moving_Ship_02 = SPAWN:New( "N_NavalTargets-2")
  :InitLimit( 1, 0 )
  :OnSpawnGroup(
    function( SpawnGroup )
      SpawnGroup:PatrolRouteRandom(20)
    end
  )
  :SpawnScheduled( 120, 0)

Moving_Ship_03 = SPAWN:New( "N_NavalTargets-3")
  :InitLimit( 1, 0 )
  :SpawnScheduled( 120, 0)
  :OnSpawnGroup(
  function( SpawnGroup )
    SpawnGroup:PatrolRouteRandom(15)
  end
)

 env.info( "CRNGE | Ship Spawning --- Completed" )
end
---------------------------------------------------
-- Target Ranges
---------------------------------------------------
do
if (crnge.debug == true) then
  MESSAGE:New("CRNGE | Target Range --- START",10):ToAll()
end



--** Static and Moving Range CN02
cn02bombingcircles = {"Range_BombCircle"}
cn02MovingTargets = {"Range_Moving_01", "Range_Moving_02", "Range_Moving_03", "Range_Moving_04", "Range_Moving_05", "Range_Moving_06"}
RangeCN02 = RANGE:New("Range KobOld")
    :AddStrafePit({"Range_StrafePit"}, 4000, 300, 180, false, 20, 428)
    :AddBombingTargets(cn02bombingcircles, 40)
    :AddBombingTargets(cn02MovingTargets, 25)

RangeCN02:Start()


 env.info( "CRNGE | Target Ranges --- Completed" )
end

---------------------------------------------------
-- SKYNET SETUP
---------------------------------------------------

do  
  if (crnge.debug == true) then
    trigger.action.outText("*** Blue Skynet --- START ***" , 10 , false)
  end

  --Create a new Skynet IADS object named redIADS
  blueIADS = SkynetIADS:create('blueIADS')

  --All units with the prefix RED EWR will be EWRs for the redIADS
  blueIADS:addEarlyWarningRadarsByPrefix('B_EWR')

  --All units with the prefix RED SAM will be SAM sites for the red IADS
  blueIADS:addSAMSitesByPrefix('B_SAM')

  if (crnge.skynetdebug == true) then
    --activate the radio menu to toggle IADS Status output
    blueIADS:addRadioMenu()
  end

  if (crnge.skynetdebug == true) then
    iadsDebugB = blueIADS:getDebugSettings()
    iadsDebugB.IADSStatus = true
    iadsDebugB.samWentDark = true
    iadsDebugB.contacts = false
    iadsDebugB.radarWentLive = true
    iadsDebugB.noWorkingCommmandCenter = false
    iadsDebugB.ewRadarNoConnection = false
    iadsDebugB.samNoConnection = false
    iadsDebugB.jammerProbability = true
    iadsDebugB.addedEWRadar = false
    iadsDebugB.hasNoPower = false
    iadsDebugB.harmDefence = true
    iadsDebugB.warnings = true
  end

  blueIADS:setUpdateInterval(30)

  --Turn on redIADS. This should always be the last line in the Skynet configuration.
  blueIADS:activate()

  if (crnge.debug == true) then
    MESSAGE:New("*** Red Skynet --- START ***",10):ToAll()
  end

  --Create a new Skynet IADS object named redIADS
  redIADS = SkynetIADS:create('redIADS')

  --All units with the prefix RED EWR will be EWRs for the redIADS
  redIADS:addEarlyWarningRadarsByPrefix('R_EWR')

  --All units with the prefix RED SAM will be SAM sites for the red IADS
  redIADS:addSAMSitesByPrefix('R_SAM')

  --Set engagement radius
  redIADS:getSAMSites():setGoLiveRangeInPercent(60)
  redIADS:getSAMSitesByNatoName('SA-2 Guideline'):setGoLiveRangeInPercent(90)
  redIADS:getSAMSitesByNatoName('SA-5 Gammon'):setGoLiveRangeInPercent(40)
  redIADS:getSAMSitesByNatoName('SA-10 Grumble'):setGoLiveRangeInPercent(70)
  redIADS:getSAMSitesByNatoName('SA-17 Grizzly'):setGoLiveRangeInPercent(80)


  -- Find all EWRs that Skynet is aware of and give them a % chance of detecting HARMs, and defending by shutting off
  redIADS:getEarlyWarningRadars():setHARMDetectionChance(66)

  if (crnge.skynetdebug == true) then
    iadsDebug = redIADS:getDebugSettings()
    iadsDebug.IADSStatus = true
    iadsDebug.samWentDark = true
    iadsDebug.contacts = false
    iadsDebug.radarWentLive = true
    iadsDebug.noWorkingCommmandCenter = false
    iadsDebug.ewRadarNoConnection = false
    iadsDebug.samNoConnection = false
    iadsDebug.jammerProbability = true
    iadsDebug.addedEWRadar = false
    iadsDebug.hasNoPower = false
    iadsDebug.harmDefence = true
    iadsDebug.warnings = true
  end

  if (crnge.skynetdebug == true) then
    iadsDebug.samSiteStatusEnvOutput = true
    iadsDebug.earlyWarningRadarStatusEnvOutput = true
  end

  if (crnge.skynetdebug == true) then
    --activate the radio menu to toggle IADS Status output
    redIADS:addRadioMenu()
  end

  redIADS:setUpdateInterval(45)

  --Turn on redIADS. This should always be the last line in the Skynet configuration.
  redIADS:activate()

  env.info( "CRNGE | Skynet -- Completed" )


end
---------------------------------------------------
-- REDFOR CAP SPAWNS
---------------------------------------------------

do
if (crnge.debug == true) then
  trigger.action.outText("CRNGE | REDFOR CAP Spawn -- START" , 10 , false)
end

--RUSSIAN AIR FORCE (VKS)

  REDFOR_CAP_BESLAN = SPAWN:New("R_A2ACAP_MIG23_BESLAN"):InitLimit( 2, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 600, 0.2 )

  REDFOR_CAP_KRAS = SPAWN:New("R_A2ACAP_MIG31_KRAS"):InitLimit( 2, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 600, 0.2 )


  REDFOR_CAP_KRAS = SPAWN:New("R_A2ACAP_MIG25_MOZ"):InitLimit( 2, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 600, 0.2 )
    
  REDFOR_CAP_MAYKOP = SPAWN:New("RA2ACAP_SU30_MAY"):InitLimit( 2, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 600, 0.2 )   

--** CAP ZONES

BorderRussia = ZONE_POLYGON:New( "RusBorder", GROUP:FindByName( "ZONE_RUSSIA" ) )

--** Detection Group
DetectionSetGroup_Red = SET_GROUP:New()
DetectionSetGroup_Red:FilterPrefixes( { "R_EWR","RED_AWACS" } )
DetectionSetGroup_Red:FilterStart()
Detection_Red = DETECTION_AREAS:New( DetectionSetGroup_Red, 65000 )

--** A2ADispatcher Setup
A2ADispatcher_VKS = AI_A2A_DISPATCHER:New( Detection_Red )

if crnge.a2adebug == false then
  A2ADispatcher_VKS:SetTacticalDisplay( false )
else
  A2ADispatcher_VKS:SetTacticalDisplay( true )
end

A2ADispatcher_VKS:SetBorderZone( BorderRussia )
A2ADispatcher_VKS:SetEngageRadius( 100000 )
A2ADispatcher_VKS:SetDisengageRadius( 340000 )
A2ADispatcher_VKS:SetGciRadius( 120000 )
A2ADispatcher_VKS:SetDefaultFuelThreshold( 0.3 ) 

--** CAP Squadrons

A2ADispatcher_VKS:SetSquadron( "MiG-21-Nalchik", "Nalchik", { "A2ACAP_MIG21" })
A2ADispatcher_VKS:SetSquadronGrouping( "MiG-21-Nalchik", 2 )
A2ADispatcher_VKS:SetSquadronGci("MiG-21-Nalchik", 400,1000)
A2ADispatcher_VKS:SetSquadronFuelThreshold("MiG-21-Nalchik", 0.4)
A2ADispatcher_VKS:SetSquadronTakeoffFromParkingCold("MiG-21-Nalchik")

env.info( "CRNGE | REDFOR CAP Spawn -- Completed" )

end
---------------------------------------------------
-- SHIP PATROLS
--
---------------------------------------------------
do
if (crnge.debug == true) then
  trigger.action.outText("CRNGE | Ship Patrol Setup --- START" , 10 , false)
end

UNIT:FindByName("CVN-75 Harry S Truman"):PatrolRoute()
UNIT:FindByName("001 Liaoning"):PatrolRoute()



env.info( "CRNGE | Ship Patrols --- Completed" )
end
---------------------------------------------------
-- Menu System
---------------------------------------------------
do
if (crnge.debug == true) then
  trigger.action.outText("*** Menu Setup --- START" , 10 , false)
end

local Menu_Spawn_Master = missionCommands.addSubMenu('Unit Spawning')

  local Menu_AA_Drones = missionCommands.addSubMenu('Air to Air Drones',Menu_Spawn_Master)

    local Menu_BVR_Drones = missionCommands.addSubMenu('BVR Drones', Menu_AA_Drones)

      local Menu_BVR_Single = missionCommands.addSubMenu('Single Drones', Menu_BVR_Drones)  
        local selection_MirageBVRx1 = missionCommands.addCommand('Mirage F1M (Super 530F)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single Mirage F1M BVR", qty = 1, dir = 270})
        local selection_MiG23BVRx1 = missionCommands.addCommand('MiG-23MLD (R-24R, R-24T)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single MiG-23MLD BVR", qty = 1, dir = 270})
        local selection_MiG25BVRx1 = missionCommands.addCommand('MiG-25PD (R-40R)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single MiG-25 BVR", qty = 1, dir = 270})
        local selection_MiG29BVRx1 = missionCommands.addCommand('MiG-29S (R-27ER, R-27ET)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single MiG-29S BVR", qty = 1, dir = 270})
        local selection_J15BVRx1 = missionCommands.addCommand('J-15 (PL-12)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single J-15 BVR", qty = 1, dir = 270})
        local selection_Su30BVRx1 = missionCommands.addCommand('Su-30 (R-77)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single Su-30 BVR", qty = 1, dir = 270})
        local selection_F14BVRx1 = missionCommands.addCommand('F-14B (AIM-54C Mk 60)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single F-14B BVR", qty = 1, dir = 270})
        local selection_F15BVRx1 = missionCommands.addCommand('F-15C (AIM-120C)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single F-15C BVR", qty = 1, dir = 270})

      local Menu_BVR_Double = missionCommands.addSubMenu('Double Drones', Menu_BVR_Drones)  
        local selection_MirageBVRx2 = missionCommands.addCommand('Mirage F1M (Super 530F)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship Mirage F1M BVR", qty = 2, dir = 270})
        local selection_MiG23BVRx2 = missionCommands.addCommand('MiG-23MLD (R-24R, R-24T)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship MiG-23 BVR", qty = 2, dir = 270})
        local selection_MiG25BVRx2 = missionCommands.addCommand('MiG-25PD (R-40R)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship MiG-25 BVR", qty = 2, dir = 270})
        local selection_MiG29BVRx2 = missionCommands.addCommand('MiG-29S (R-27ER, R-27ET)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship MiG-29S BVR", qty = 2, dir = 270})
        local selection_J15BVRx2 = missionCommands.addCommand('J-15 (PL-12)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship J-15 BVR", qty = 2, dir = 270})
        local selection_Su30BVRx2 = missionCommands.addCommand('Su-30 (R-77)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship Su-30 BVR", qty = 2, dir = 270})
        local selection_F14BVRx2 = missionCommands.addCommand('F-14B (AIM-54C Mk 60)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship F-14B BVR", qty = 2, dir = 270})
        local selection_F15BVRx2 = missionCommands.addCommand('F-15C (AIM-120C)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship F-15 BVR", qty = 2, dir = 270})

    local Menu_ACM_Drones = missionCommands.addSubMenu('ACM Drones', Menu_AA_Drones)

      local Menu_ACM_Single = missionCommands.addSubMenu('Single Drones', Menu_ACM_Drones)  
        local selection_MiG19_ACMx1 = missionCommands.addCommand('MiG-19 (K-13)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single MiG-19 ACM", qty = 1, dir = 318})
        local selection_MiG21_ACMx1 = missionCommands.addCommand('MiG-21bis (R-3R, R-60M)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single MiG-21 ACM", qty = 1, dir = 318})
        local selection_F5_ACMx1 = missionCommands.addCommand('F-5E-3 (AIM-9P5)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single F-5 ACM", qty = 1, dir = 318})
        local selection_F1_x1 = missionCommands.addCommand('Mirage F1M (AIM-9JULI)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single Mirage F1M ACM", qty = 1, dir = 318})
        local selection_Mig29_ACMx1 = missionCommands.addCommand('MiG-29A (R-73)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single MiG-29A ACM", qty = 1, dir = 318})
        local selection_F16_ACMx1 = missionCommands.addCommand('F-16 (AIM-9M))', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single F-16 ACM", qty = 1, dir = 318})
        local selection_F14_ACMx1 = missionCommands.addCommand('F-14B (AIM-9M)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single F-14B ACM", qty = 1, dir = 318})
        local selection_M2K_ACMx1 = missionCommands.addCommand('Mirage 2000C (Magic II)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single Mirage 2000C ACM", qty = 1, dir = 318})

      local Menu_ACM_Double = missionCommands.addSubMenu('Double Drones', Menu_ACM_Drones)  
        local selection_MIGg19_ACMx2 = missionCommands.addCommand('MiG-19 (K-13)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship MiG-19 ACM", qty = 2, dir = 318})
        local selection_MIG21_ACMx2 = missionCommands.addCommand('MiG-21bis (R-3R, R-60M)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship MiG-21 ACM", qty = 2, dir = 318})
        local selection_F5_ACMx2 = missionCommands.addCommand('F-5E-3 (AIM-9P5)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship F-5 ACM", qty = 2, dir = 318})
        local selection_F1_ACMx2 = missionCommands.addCommand('Mirage F1M (AIM-9JULI)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship Mirage F1M ACM", qty = 2, dir = 318})
        local selection_MIG29_ACMx2 = missionCommands.addCommand('MiG-29A (R-73)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship MiG-29A ACM", qty = 2, dir = 318})
        local selection_F16_ACMx2 = missionCommands.addCommand('F-16 (AIM-9M)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship F-16 ACM", qty = 2, dir = 318})
        local selection_F14_ACMx2 = missionCommands.addCommand('F-14B (AIM-9M)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship F-14B ACM", qty = 2, dir = 318})
        local selection_M2K_ACMx2 = missionCommands.addCommand('Mirage 2000C (Magic II)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship Mirage 2000C ACM", qty = 2, dir = 318})

    local Menu_Target_Drones = missionCommands.addSubMenu('Non-Combat Target Drones', Menu_AA_Drones)
      local Menu_Target_DronesBVR = missionCommands.addSubMenu('Modern Drones', Menu_Target_Drones)
        local selection_dr_Hawkx1 = missionCommands.addCommand('Single Hawk Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Single Hawk Target Drone", qty = 1, loc = "N_A2A_BVR_Drone_SGL", dir = 270})
        local selection_dr_Hawkx2 = missionCommands.addCommand('Two-Ship Hawk Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Two-Ship Hawk Target Drone", qty = 1, loc = "N_A2A_BVR_Drone_DBL", dir = 270})  
        local selection_dr_Phantomx1 = missionCommands.addCommand('Single Phantom Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Single Phantom Target Drone", qty = 1, loc = "N_A2A_BVR_Drone_SGL", dir = 270})
        local selection_dr_Phantomx2 = missionCommands.addCommand('Two-Ship Phantom Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Two-Ship Phantom Target Drone", qty = 1, loc = "N_A2A_BVR_Drone_DBL", dir = 270})  
        local selection_dr_H6x1 = missionCommands.addCommand('Single C-17 Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Single C-17 Target Drone", qty = 1, loc = "N_A2A_BVR_Drone_SGL", dir = 270})    
        local selection_dr_H6x2 = missionCommands.addCommand('Two-Ship C-17 Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Two-Ship C-17 Target Drone", qty = 2, loc = "N_A2A_BVR_Drone_DBL", dir = 270})
      local Menu_Target_DronesWW2 = missionCommands.addSubMenu('WW2 Drones', Menu_Target_Drones)
        local selection_dr_I16_x1 = missionCommands.addCommand('Single I-16 Target Drone', Menu_Target_DronesWW2, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Single I-16 Target Drone", qty = 1, loc = "N_A2A_WW2_Drone_SGL", dir = 318})
        local selection_dr_I16Nx2 = missionCommands.addCommand('Two-Ship I-16 Target Drone', Menu_Target_DronesWW2, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Two-Ship I-16 Target Drone", qty = 2, loc = "N_A2A_WW2_Drone_DBL", dir = 318}) 
        local selection_dr_A20x1 = missionCommands.addCommand('Single A-20 Target Drone', Menu_Target_DronesWW2, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Single A-20 Target Drone", qty = 1, loc = "N_A2A_WW2_Drone_SGL", dir = 318})
        local selection_dr_A20x2 = missionCommands.addCommand('Two-Ship A-20 Target Drone', Menu_Target_DronesWW2, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Two-Ship A-20 Target Drone", qty = 2, loc = "N_A2A_WW2_Drone_DBL", dir = 318})
        
    local Menu_WW2_Drones = missionCommands.addSubMenu('WW2 Drones', Menu_AA_Drones)

      local Menu_WW2_Single = missionCommands.addSubMenu('Single Drones', Menu_WW2_Drones)  
        local selection_I16x1 = missionCommands.addCommand('I-16', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single I-16", qty = 1, dir = 318})
        local selection_FW190Ax1 = missionCommands.addCommand('FW 190 A-8', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single FW 190 A-8", qty = 1, dir = 318})
        local selection_FW190Dx1 = missionCommands.addCommand('FW 190 D-9', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single FW 190 D-9", qty = 1, dir = 318})
        local selection_Bf109x1 = missionCommands.addCommand('Bf 109', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single Bf 109", qty = 1, dir = 318})
        local selection_P47x1 = missionCommands.addCommand('P-47D-40', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single P-47", qty = 1, dir = 318})
        local selection_P51x1 = missionCommands.addCommand('P-51D-30-NA', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single P-51", qty = 1, dir = 318})
        local selection_Spitx1 = missionCommands.addCommand('Spitfire LF Mk IX', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single Spitfire", qty = 1, dir = 318})
        local selection_Mossiex1 = missionCommands.addCommand('Mosquito FB Mk VI', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single Mosquito", qty = 1, dir = 318})

      local Menu_WW2_Double = missionCommands.addSubMenu('Double Drones', Menu_WW2_Drones)  
        local selection_I16x2 = missionCommands.addCommand('I-16', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship I-16", qty = 2, dir = 318})
        local selection_FW190Ax2 = missionCommands.addCommand('FW 190 A-8', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship FW 190 A-8", qty = 2, dir = 318})
        local selection_FW190Dx2 = missionCommands.addCommand('FW 190 D-9', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship FW 190 D-9", qty = 2, dir = 318})
        local selection_Bf109x2 = missionCommands.addCommand('Bf 109', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship Bf 109", qty = 2, dir = 318})
        local selection_P47x2 = missionCommands.addCommand('P-47D-40', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship P-47", qty = 2, dir = 318})
        local selection_P51x2 = missionCommands.addCommand('P-51D-30-NA', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship P-51", qty = 2, dir = 318})
        local selection_Spitx2 = missionCommands.addCommand('Spitfire LF Mk IX', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship Spitfire", qty = 2, dir = 318})
        local selection_Mossiex2 = missionCommands.addCommand('Mosquito FB Mk VI', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship Mosquito", qty = 2, dir = 318})  
        
         
  local rNavalDroneTopMenu = missionCommands.addSubMenu('Naval Targets',Menu_Spawn_Master)

    local rNavalRusShips = missionCommands.addSubMenu('Russian Ships', rNavalDroneTopMenu)
      local rNavalRus1 = missionCommands.addCommand('Molinya-Class Corvette', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Molniya")
      local rNavalRus2 = missionCommands.addCommand('Grisha-Class Corvette', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Grisha")
      local rNavalRus3 = missionCommands.addCommand('Krivak-Class Frigate', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Krivak")
      local rNavalRus4 = missionCommands.addCommand('Neustrashimy-Class Frigate', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Neustrashimy")
      local rNavalRus5 = missionCommands.addCommand('Slkava-Class Cruiser', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Slava")  
      local rNavalRus6 = missionCommands.addCommand('Pyotr Velikiy-Class Cruiser', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Pyotr Velikiy")  
      local rNavalRus7 = missionCommands.addCommand('Admiral Kuznetzov-Class Carrier', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Admiral Kuznetsov") 
      local rNavalRus8 = missionCommands.addCommand('Improved Kilo-Class Submarine', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Improved Kilo") 
      local rNavalRus9 = missionCommands.addCommand('Ropucha-Class Landing SHip', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Ropucha") 
    
    local rNavalPLANShips = missionCommands.addSubMenu('Chinese Ships', rNavalDroneTopMenu)
      local rNavalPLAN1 = missionCommands.addCommand('Type 054A-Class Frigate', rNavalPLANShips, CSG8F.crnge.spawn.spawnRedShip, "Type 054A")
      local rNavalPLAN2 = missionCommands.addCommand('Type 052B-Class Destroyer', rNavalPLANShips, CSG8F.crnge.spawn.spawnRedShip, "Type 052B")
      local rNavalPLAN3 = missionCommands.addCommand('Type 052C-Class Destroyer', rNavalPLANShips, CSG8F.crnge.spawn.spawnRedShip, "Type 052C")
      local rNavalPLAN4 = missionCommands.addCommand('Type 071-Class LHD', rNavalPLANShips, CSG8F.crnge.spawn.spawnRedShip, "Type 071")
      local rNavalPLAN5 = missionCommands.addCommand('Type 093-Class Submarine', rNavalPLANShips, CSG8F.crnge.spawn.spawnRedShip, "Type 093")
    
    local rNavalUSAhips = missionCommands.addSubMenu('American Ships', rNavalDroneTopMenu)
      local rNavalUSA1 = missionCommands.addCommand('OHP-Class Frigate', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Oliver Hazard Perry")  
      local rNavalUSA2 = missionCommands.addCommand('Arleigh Burke-Class Destroyer', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Arleigh Burke")    
      local rNavalUSA3 = missionCommands.addCommand('Ticonderoga-Class Destroyer', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Ticonderoga")      
      local rNavalUSA4 = missionCommands.addCommand('Tarawa-Class LHA', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Tarawa")         
      --local rNavalUSA5 = missionCommands.addCommand('Forrestal-Class Carrier', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Forrestal")     
      --local rNavalUSA6 = missionCommands.addCommand('Nimitz-Class Carrier', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Nimitz")        
      
    local rNavalUKShips = missionCommands.addSubMenu('British Ships', rNavalDroneTopMenu)
      local rNavalUK1 = missionCommands.addCommand('Castle-Class Patrol Vessel', rNavalUKShips, CSG8F.crnge.spawn.spawnRedShip, "Castle")      
      local rNavalUK2 = missionCommands.addCommand('Leander-Class Frigate', rNavalUKShips, CSG8F.crnge.spawn.spawnRedShip, "Leander")     
      local rNavalUK3 = missionCommands.addCommand('Invincible-Class Carrier', rNavalUKShips, CSG8F.crnge.spawn.spawnRedShip, "Invincible")      
      
    local rNavalOtherShips = missionCommands.addSubMenu('Other Ships', rNavalDroneTopMenu)
      local rNavalOther1 = missionCommands.addCommand('La Combattante IIa-Class Fast Attack Craft', rNavalOtherShips, CSG8F.crnge.spawn.spawnRedShip, "La Combattante")      
      local rNavalOther2 = missionCommands.addCommand('Condell-Class Frigate', rNavalOtherShips, CSG8F.crnge.spawn.spawnRedShip, "Condell")         
   
  local Menu_SAM_Top = missionCommands.addSubMenu('SAM Targets',Menu_Spawn_Master) 
      local Menu_TactSAMs = missionCommands.addSubMenu('SAM Range 1 (Grid FH94)', Menu_SAM_Top)
        local choice_Tact1_1 = missionCommands.addCommand('SA-18 "GROUSE" Detachment', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-18 MANPADS Detachment", staticTemplate = nil})
        local choice_Tact1_2 = missionCommands.addCommand('SA-24 "GRINCH" Detachment', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-24 MANPAD Detachment", staticTemplate = nil})
        local choice_Tact1_3 = missionCommands.addCommand('SA-9 "GASKIN" Battery', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-8 SAM Section", staticTemplate = nil}) 
        local choice_Tact1_4 = missionCommands.addCommand('SA-8 "GECKO" Battery', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-8 SAM Section", staticTemplate = nil}) 
        local choice_Tact1_5 = missionCommands.addCommand('SA-13 "GOPHER"', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-13 SAM Section", staticTemplate = nil})   
        local choice_Tact1_6 = missionCommands.addCommand('SA-19 "GRISOM"', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-6 SAM Battery", staticTemplate = nil})
        local choice_Tact1_7 = missionCommands.addCommand('SA-3 "GOA"', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-3 SAM Site", staticTemplate = CSG8_TEMPLATES.samTemplates[3].statics})
        local choice_Tact1_8 = missionCommands.addCommand('Roland ADS', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "Roland SAM Battery", staticTemplate = nil})
        local choice_Tact1_9 = missionCommands.addCommand('MIM-120 NASAMS', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "NASAMS SAM Battery", staticTemplate = nil})
        
      local Menu_TactSAMs2 = missionCommands.addSubMenu('SAM Range 2 (Grid FH08)', Menu_SAM_Top)
        local choice_Tact2_1 = missionCommands.addCommand('SA-6 "GAINFUL"', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-6 SAM Battery", staticTemplate = nil})  
        local choice_Tact2_2 = missionCommands.addCommand('SA-11 "GADFLY"', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-11 SAM Battery", staticTemplate = nil})  
        local choice_Tact2_3 = missionCommands.addCommand('SA-15 "GAUNTLET"', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-15 SAM Section", staticTemplate = nil})   
        local choice_Tact2_4 = missionCommands.addCommand('SA-17 "GRIZZLY" (HDS)', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-17 SAM Battery", staticTemplate = nil})
        local choice_Tact2_5 = missionCommands.addCommand('SA-2 "Guideline"', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-2 SAM Site", staticTemplate = CSG8_TEMPLATES.samTemplates[1].statics})
        local choice_Tact2_6 = missionCommands.addCommand('SA-2 "Guideline" MAD', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-2 SAM Site MAD", staticTemplate = CSG8_TEMPLATES.samTemplates[2].statics}) 
        local choice_Tact2_8 = missionCommands.addCommand('MIM-23 Hawk', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "Hawk SAM Battery", staticTemplate = nil})
        --local choice_Tact2_9 = missionCommands.addCommand('MIM-120 NASAMS', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "NASAMS SAM Battery", staticTemplate = nil})
      
      local Menu_StratSAMs = missionCommands.addSubMenu('SAM Range 3 (Grid NM)', Menu_SAM_Top)
        local rStratSAMChoice1 = missionCommands.addCommand('SA-5 "Gammon"', Menu_StratSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range NM", groupTemplate = "SA-5 SAM Site", staticTemplate = CSG8_TEMPLATES.samTemplates[1].statics})
        local rStratSAMChoice2 = missionCommands.addCommand('SA-10 "Grumble"', Menu_StratSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range NM", groupTemplate = "SA-10 SAM Site", staticTemplate = nil}) 
        local rStratSAMChoice3 = missionCommands.addCommand('SA-12 "Gladiator/Giant" (HDS)', Menu_StratSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range NM", groupTemplate = "SA-12 SAM Site", staticTemplate = nil})  
        local rStratSAMChoice4 = missionCommands.addCommand('SA-20B "Gargoyle" (HDS)', Menu_StratSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range NM", groupTemplate = "SA-20B SAM Site", staticTemplate = nil})  
        local rStratSAMChoice5 = missionCommands.addCommand('MIM-104 Patriot', Menu_StratSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range NM", groupTemplate = "Patriot SAM Site", staticTemplate = nil})  
  

  
  
  local Menu_Bombers_Top = missionCommands.addSubMenu('Bomber Attack',Menu_Spawn_Master) 
    local Menu_Bombers_Era1 = missionCommands.addSubMenu('Modern - TU-22 "BACKFIRE"',Menu_Bombers_Top) 
        local bomber_Era1_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 1,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template
          })
        local bomber_Era1_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 2,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW3_Bombers_Template  
          }) 
        local bomber_Era1_Choice3 = missionCommands.addCommand('3x Bomber Group - No Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 3,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW3_Bombers_Template,            
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW3_Bombers_Template         
          }) 
        local bomber_Era1_Choice4 = missionCommands.addCommand('1x Bomber Group - Sml Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 4,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW3_Escort_Template
          })
        local bomber_Era1_Choice5 = missionCommands.addCommand('2x Bomber Group - Sml Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 5,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW3_Escort_Template,
            bomber2Group = "R_BMB_01",
            bomber2Template = Spawn_R_CW3_Bombers_Template
          })
        local bomber_Era1_Choice6 = missionCommands.addCommand('3x Bomber Group - Lrg Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 6,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW3_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW3_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW3_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW3_Bombers_Template 
          })
        local bomber_Era1_Choice7 = missionCommands.addCommand('3x Bomber Group - Huge Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 7,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW3_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW3_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW3_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW3_Bombers_Template, 
            escort3Group = "R_ESC_03",
            escort3Template = Spawn_R_CW3_Escort_Template          
          })      
    
    local Menu_Bombers_Era2 = missionCommands.addSubMenu('Modern - B-25 Stratofortress"',Menu_Bombers_Top) 
        local bomber_Era2_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 1,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template
          })
        local bomber_Era2_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 2,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW1_Bombers_Template  
          }) 
        local bomber_Era2_Choice3 = missionCommands.addCommand('3x Bomber Group - No Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 3,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW1_Bombers_Template,            
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW1_Bombers_Template         
          }) 
        local bomber_Era2_Choice4 = missionCommands.addCommand('1x Bomber Group - Sml Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 4,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW1_Escort_Template
          })
        local bomber_Era2_Choice5 = missionCommands.addCommand('2x Bomber Group - Sml Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 5,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW1_Escort_Template,
            bomber2Group = "R_BMB_01",
            bomber2Template = Spawn_R_CW1_Bombers_Template
          })
        local bomber_Era2_Choice6 = missionCommands.addCommand('3x Bomber Group - Lrg Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 6,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW1_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW1_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW1_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW1_Bombers_Template 
          })
        local bomber_Era2_Choice7 = missionCommands.addCommand('3x Bomber Group - Huge Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 7,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW1_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW1_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW1_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW1_Bombers_Template, 
            escort3Group = "R_ESC_03",
            escort3Template = Spawn_R_CW1_Escort_Template          
          })      
   
     local Menu_Bombers_Era3 = missionCommands.addSubMenu('Earl Cold War - TU-16 "BADGER"',Menu_Bombers_Top) 
        local bomber_Era3_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 1,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template
          })
        local bomber_Era3_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 2,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW2_Bombers_Template  
          }) 
        local bomber_Era3_Choice3 = missionCommands.addCommand('3x Bomber Group - No Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 3,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW2_Bombers_Template,            
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW2_Bombers_Template         
          }) 
        local bomber_Era3_Choice4 = missionCommands.addCommand('1x Bomber Group - Sml Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 4,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW2_Escort_Template
          })
        local bomber_Era3_Choice5 = missionCommands.addCommand('2x Bomber Group - Sml Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 5,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW2_Escort_Template,
            bomber2Group = "R_BMB_01",
            bomber2Template = Spawn_R_CW2_Bombers_Template
          })
        local bomber_Era3_Choice6 = missionCommands.addCommand('3x Bomber Group - Lrg Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 6,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW2_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW2_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW2_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW2_Bombers_Template 
          })
        local bomber_Era3_Choice7 = missionCommands.addCommand('3x Bomber Group - Huge Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 7,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW2_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW2_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW2_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW2_Bombers_Template, 
            escort3Group = "R_ESC_03",
            escort3Template = Spawn_R_CW2_Escort_Template          
          })    
    
    local Menu_Bombers_LL1 = missionCommands.addSubMenu('Low Level - SU-22 "FENCER"',Menu_Bombers_Top) 
        local bomber_LL1_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_LL1, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 1,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL1_Bombers_Template
          })
        local bomber_LL1_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_LL1, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 2,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL1_Bombers_Template,
            bomber2Group = "R_BMB_LL_2",
            bomber2Template = Spawn_R_LL1_Bombers_Template  
          })    

    local Menu_Bombers_LL2 = missionCommands.addSubMenu('Low Level - AJS37 "Viggen"',Menu_Bombers_Top) 
        local bomber_LL2_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_LL2, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 1,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL2_Bombers_Template
          })
        local bomber_LL2_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_LL2, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 2,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL2_Bombers_Template,
            bomber2Group = "R_BMB_LL_2",
            bomber2Template = Spawn_R_LL2_Bombers_Template  
          }) 
    
    local Menu_Bombers_LL3 = missionCommands.addSubMenu('Low Level - F-16 "Viper"',Menu_Bombers_Top) 
        local bomber_LL3_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_LL3, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 1,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL3_Bombers_Template
          })
        local bomber_LL3_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_LL3, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 2,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL3_Bombers_Template,
            bomber2Group = "R_BMB_LL_2",
            bomber2Template = Spawn_R_LL3_Bombers_Template  
          }) 
        
      local Menu_Bombers_LL4 = missionCommands.addSubMenu('Low Level - F-15 "Strike Eagle"',Menu_Bombers_Top) 
        local bomber_LL4_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_LL4, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 1,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL4_Bombers_Template
          })
        local bomber_LL4_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_LL4, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 2,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL4_Bombers_Template,
            bomber2Group = "R_BMB_LL_2",
            bomber2Template = Spawn_R_LL4_Bombers_Template  
          }) 

  local MenuLL_Range_North = missionCommands.addSubMenu('Low Level Ranges', Menu_Spawn_Master)
    local choice_LL_north = missionCommands.addCommand('Spawn Northern Low Level Range', MenuLL_Range_North, CSG8F.crnge.spawn.spawnNorthLowLevelRange, {})


local Menu_AI_Cleanup = missionCommands.addSubMenu('AI Cleanup',Menu_Spawn_Master)
  local choice_cleanup1 = missionCommands.addCommand('Cleanup Tactical SAMs FH94', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "SAM Range FH94")
  local choice_cleanup2 = missionCommands.addCommand('Cleanup Tactical SAMs FH08', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "SAM Range FH08")
  local choice_cleanup3 = missionCommands.addCommand('Cleanup Strategic SAMs', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "SAM Range NM")  
  local choice_cleanup4 = missionCommands.addCommand('Cleanup ACM Drones', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "CRNGEZONE_ACM") 
  local choice_cleanup5 = missionCommands.addCommand('Cleanup BVR Drones', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "CRNGEZONE_BVR")   
  local choice_cleanup6 = missionCommands.addCommand('Cleanup Red Ships', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "CRNGEZONE_SHIPS")
  local choice_cleanup7 = missionCommands.addCommand('Cleanup North Low Level Range', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "CRNGEZONE_LLN")  
 
local Menu_Mission_Misc =  missionCommands.addSubMenu('Mission Control')

  local Menu_CSG_Alarm = missionCommands.addSubMenu('CSG Ship Options', Menu_Mission_Misc)
    local choice_CSG_red = missionCommands.addCommand('Weapons COLD', Menu_CSG_Alarm, CSG8F.utils.alarmGreen, {name = "Carrier Strike Group 8"})
    local choice_CSG_green = missionCommands.addCommand('Weapons HOT', Menu_CSG_Alarm, CSG8F.utils.alarmRed, {name = "Carrier Strike Group 8"})


 
  local Menu_LoadMission = missionCommands.addSubMenu('Load Mission', Menu_Mission_Misc)

    local Menu_ReloadMission = missionCommands.addSubMenu('Reload Current Mission', Menu_LoadMission)
        local choice_confirm_reload = missionCommands.addCommand('Confirm Reload This Mission', Menu_ReloadMission,  CSG8F.utils.setFlag, {flag= 99999})

    local Menu_ChangeMissionTime = missionCommands.addSubMenu('Change Mission Day/Night', Menu_LoadMission)
        local choice_confirm_daynight = missionCommands.addCommand('Confirm Change Day/Night', Menu_ChangeMissionTime, CSG8F.utils.setFlag, {flag= 99998})
        
    local Menu_ChangeMissionWeather = missionCommands.addSubMenu('Change Mission Weather', Menu_LoadMission)
        local choice_confirm_weather = missionCommands.addCommand('Confirm Change Weather', Menu_ChangeMissionWeather, CSG8F.utils.setFlag, {flag= 99997})  
        
      local Menu_ChangeMissionSeason = missionCommands.addSubMenu('Change Mission Season', Menu_LoadMission)
        local choice_confirm_season = missionCommands.addCommand('Confirm Change Season', Menu_ChangeMissionSeason, CSG8F.utils.setFlag, {flag= 99996}) 
        
if (GROWLER ~= nil) then
  local MenuGrowlerRadio = missionCommands.addSubMenu("Growler Radio")
    local GrowlerStartVietnam         = missionCommands.addCommand("Play Vietnam Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistVietnam, announcerlist = GRLIB.announcer})
    local GrowlerStartFighterPilot    = missionCommands.addCommand("Play Fighter Pilot Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistFighter, announcerlist = GRLIB.announcer})
    local GrowlerStartBomber          = missionCommands.addCommand("Play Bomber Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistBomber, announcerlist = GRLIB.announcer})
    local GrowlerStartGringos         = missionCommands.addCommand("Play Dos Gringos Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistGringos, announcerlist = GRLIB.announcer})
    local GrowlerStartB7R             = missionCommands.addCommand("Play Anime Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistAnime, announcerlist = GRLIB.announcer})
    local GrowlerRadioSkip            = missionCommands.addCommand("Skip Next Song", MenuGrowlerRadio, GROWLER.GROWLERSKIP)
    local GrowlerRadioOff             = missionCommands.addCommand("Deactivate Growler Radio", MenuGrowlerRadio, GROWLER.GROWLERSTOP)
end 
 
 
 
 
  env.info( "CSG8 | Mission Control Commands --- Completed" )
 
end 
  
timer.scheduleFunction(crnge.playNominal, {}, timer.getTime() + 6)
timer.scheduleFunction(crnge.textNominal, {}, timer.getTime() + 10)

if (crnge.debug == true) then
  trigger.action.outText("CRNGE | Mission Script Loaded Successfully ***" , 10 , false)
end

env.info( "CRNGE | CRNGE Mission Script Version 2023-11-19T14:32:28Z Loaded Successfully" )
