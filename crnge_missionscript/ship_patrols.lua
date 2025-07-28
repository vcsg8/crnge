---------------------------------------------------
-- SHIP PATROLS
--
---------------------------------------------------

--DEPRECIATED 2025-06-24
--[[
do
if (crnge.debug == true) then
  trigger.action.outText("CRNGE | Ship Patrol Setup --- START" , 10 , false)
end

UNIT:FindByName("CVN-75 Harry S Truman"):PatrolRoute()


env.info( "CRNGE | Ship Patrols --- Completed" )
end
]]