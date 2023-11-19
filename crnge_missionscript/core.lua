--[[

CSG8 CRNGE Mission Script
Version: {VERSION}
Authors: isotaan

]]

--Setting up debugging

env.info( "CRNGE | CRNGE Mission Script {VERSION} Loading..." ) 

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