---------------------------------------------------
-- Naval Vessel Spawning
---------------------------------------------------
do
if (crnge.debug == true) then
  MESSAGE:New("*** Ship spawning --- START ***",10):ToAll()
end

Moving_Ship_01 = SPAWN:New( "N_NavalTargets-1")
  :InitLimit( 1, 0 )
  :OnSpawnGroup(
    function( SpawnGroup )
      SpawnGroup:PatrolRouteRandom(25)
    end
  )
  :SpawnScheduled( 120, 0)

Moving_Ship_02 = SPAWN:New( "N_NavalTargets-2")
  :InitLimit( 1, 0 )
  :OnSpawnGroup(
    function( SpawnGroup )
      SpawnGroup:PatrolRouteRandom(20)
    end
  )
  :SpawnScheduled( 120, 0)

Moving_Ship_03 = SPAWN:New( "N_NavalTargets-3")
  :InitLimit( 1, 0 )
  :SpawnScheduled( 120, 0)
  :OnSpawnGroup(
  function( SpawnGroup )
    SpawnGroup:PatrolRouteRandom(15)
  end
)

 env.info( "*** CSG8 *** Ship Spawning --- Completed" )
end