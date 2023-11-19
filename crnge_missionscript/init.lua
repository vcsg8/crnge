  
timer.scheduleFunction(crnge.playNominal, {}, timer.getTime() + 6)
timer.scheduleFunction(crnge.textNominal, {}, timer.getTime() + 10)

if (crnge.debug == true) then
  trigger.action.outText("CRNGE | Mission Script Loaded Successfully ***" , 10 , false)
end

env.info( "CRNGE | CRNGE Mission Script Version {VERSION} Loaded Successfully" )