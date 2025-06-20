---------------------------------------------------
-- REDFOR CAP SPAWNS
---------------------------------------------------

do
if (crnge.debug == true) then
  trigger.action.outText("CRNGE | REDFOR CAP Spawn -- START" , 10 , false)
end

--RUSSIAN AIR FORCE (VKS)

  REDFOR_CAP_BESLAN = SPAWN:New("R_A2ACAP_MIG23_BESLAN"):InitLimit( 2, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 600, 0.2 )

  REDFOR_CAP_KRAS = SPAWN:New("R_A2ACAP_MIG31_KRAS"):InitLimit( 2, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 600, 0.2 )


  REDFOR_CAP_KRAS = SPAWN:New("R_A2ACAP_MIG25_MOZ"):InitLimit( 2, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 600, 0.2 )
    
  REDFOR_CAP_MAYKOP = SPAWN:New("RA2ACAP_SU30_MAY"):InitLimit( 2, 0 )
    :InitRepeatOnLanding()
    :InitDelayOff()
    :InitCleanUp( 300 )
    :SpawnScheduled( 600, 0.2 )   

--** CAP ZONES

--Current depreciated

env.info( "CRNGE | REDFOR CAP Spawn -- Completed" )

end