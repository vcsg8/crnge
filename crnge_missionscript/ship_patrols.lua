---------------------------------------------------
-- SHIP PATROLS
--
---------------------------------------------------
do
if (crnge.debug == true) then
  trigger.action.outText("*** Ship Patrol Setup --- START" , 10 , false)
end

UNIT:FindByName("CVN-75 Harry S Truman"):PatrolRoute()
UNIT:FindByName("001 Liaoning"):PatrolRoute()



env.info( "*** CSG8 *** Ship Patrols --- Completed" )
end