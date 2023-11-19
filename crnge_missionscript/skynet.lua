
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
