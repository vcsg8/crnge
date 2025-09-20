---------------------------------------------------
-- CRNGE Unique Sounds
---------------------------------------------------
---

--Default sound message that plays at the end of this script
if (homefile == true) then
  crnge.root = "G:\\DCS Sound Files\\Music"
  crnge.introMusic = crnge.root .."999_Nominal.mp3"
else
  crnge.root = "D:\\STE_Files\\Music\\"
  crnge.introMusic = crnge.root .."999_Nominal.mp3"
end

function crnge.playNominal()

  if lfs and io then
    --Outputs a test sound file if sanitization has occured
    STTS.PlayMP3(crnge.introMusic,"251,241,1","AM,AM,FM","0.3","CRNGE BETTY",2)
  else
    env.info("CRNGE | MissionScipting.lua is not sanitized. STTS.PlayMP3 will not function.")
  end
end
  
function crnge.textNominal()
  trigger.action.outText("REACTOR ONLINE \nSENSORS ONLINE \nWEAPONS ONLINE \n\nALL SYSTEMS NOMINAL", 10)
end

timer.scheduleFunction(crnge.playNominal, {}, timer.getTime() + 6)
timer.scheduleFunction(crnge.textNominal, {}, timer.getTime() + 10)