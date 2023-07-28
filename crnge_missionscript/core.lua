--[[

CSG8 CRNGE Mission Script
Version: {VERSION}
Authors: isotaan

]]

--Setting up debugging

env.info( "*** CSG8 *** CRNGE Mission Script {VERSION} Loading..." ) 

crnge = {}
crnge.__index = crnge
crnge.debug = false --For verbose debugging of each section of this script
crnge.skynetdebug = false --Turns on the message debug for Skynet
crnge.a2adebug = false --Turns on message debugging for MOOSE's A2ACAP
crnge.introMusic = "\\999_Nominal.mp3" --Default sound message that plays at the end of this script

--Checks for JACKAL. Required for the CRNGE to work correctly.
if jackal == nil then
   trigger.action.outText("*** CRNGE Requires JACKAL. Some functionality will not be supported. ***" , 10 , false)
else
  --Enables Jackal logging
  jackal.enums.preferences.markpoint_logging = true
end

 
if (crnge.debug == true) then
    trigger.action.outText("*** CRNGE Mission Script --- START ***" , 10 , false)
end
  
 _SETTINGS:SetPlayerMenuOff()