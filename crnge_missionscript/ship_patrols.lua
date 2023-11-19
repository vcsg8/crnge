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