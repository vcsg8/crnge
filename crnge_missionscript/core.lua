--[[

CSG8 CRNGE Mission Script
BUILD: {BUILD}
VERSION: {VERSION}
Authors: isotaan

]]

--Setting up debugging

env.info( "CRNGE | CRNGE Mission script version {VERSION} Loading..." ) 

env.setErrorMessageBoxEnabled(false)

crnge = {}
crnge.__index = crnge
crnge.debug = false --For verbose debugging of each section of this script
crnge.skynetdebug = false --Turns on the message debug for Skynet
crnge.a2adebug = false --Turns on message debugging for MOOSE's A2ACAP
crnge.root = nil
crnge.introMusic = nil

--Checks for JACKAL. Required for the CRNGE to work correctly.
if Jackal == nil then
   trigger.action.outText("CRNGE | CRNGE Requires JACKAL. Some functionality will not be supported." , 10 , false)
end

if (crnge.debug == true) then --If debugging is enabled, output a message to the screen
    trigger.action.outText("CRNGE | CRNGE Mission Script --- START" , 10 , false)
end
  
 _SETTINGS:SetPlayerMenuOff()