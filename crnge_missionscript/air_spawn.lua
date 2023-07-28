---------------------------------------------------
-- Air Unit Spawning
---------------------------------------------------
do
if (crnge.debug == true) then
  trigger.action.outText("*** Air Unit Spawning --- START ***" , 10 , false)
end


Spawn_E3_Overlord = SPAWN:New( "Overlord" )
    :InitLimit( 1,0 )
    :InitDelayOff()
    :InitCleanUp( 300 )
    :InitRepeatOnLanding()
    :SpawnScheduled(120,0.2)

 REDFOR_AWACS = SPAWN:New("RED_AWACS"):InitLimit( 1, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 300, 0.25 )
  
  REDFOR_CITY_HELO = SPAWN:New("R_CITY_AIR-1"):InitLimit( 1, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 300, 0.25 )
 
 
 env.info( "*** CSG8 *** Air Unit Spawning --- Completed" )

end