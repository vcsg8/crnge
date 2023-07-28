if crnge.root ~= nil then
  
  --Checks for sanitization of ifs and io
  if lfs and io then
  
    local filePath = CSG8LIB.root .. musicNominal
    
    --Outputs a test sound file if sanitization has occured
    mist.scheduleFunction(STTS.PlayMP3,{filePath,"251,241,1","AM,AM,AM","0.3","CRNGE BETTY",2}, timer.getTime() + 6)
  else
    env.info("MissionScipting.lua is not sanitized. STTS.PlayMP3 will not function.")
  end

end

--Outputs a successful message if the script is functioning properly.  
mist.scheduleFunction(trigger.action.outText,{"REACTION ONLINE \nSENSORS ONLINE \nWEAPONS ONLINE \n\nALL SYSTEMS NOMINAL", 10, false}, timer.getTime() + 10)

if (crnge.debug == true) then
  trigger.action.outText("*** CRNGE Mission Script Loaded Successfully ***" , 10 , false)
end

env.info( "[CSG8] CRNGE Mission Script Version {VERSION} Loaded Successfully" )