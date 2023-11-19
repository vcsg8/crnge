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

BorderRussia = ZONE_POLYGON:New( "RusBorder", GROUP:FindByName( "ZONE_RUSSIA" ) )

--** Detection Group
DetectionSetGroup_Red = SET_GROUP:New()
DetectionSetGroup_Red:FilterPrefixes( { "R_EWR","RED_AWACS" } )
DetectionSetGroup_Red:FilterStart()
Detection_Red = DETECTION_AREAS:New( DetectionSetGroup_Red, 65000 )

--** A2ADispatcher Setup
A2ADispatcher_VKS = AI_A2A_DISPATCHER:New( Detection_Red )

if crnge.a2adebug == false then
  A2ADispatcher_VKS:SetTacticalDisplay( false )
else
  A2ADispatcher_VKS:SetTacticalDisplay( true )
end

A2ADispatcher_VKS:SetBorderZone( BorderRussia )
A2ADispatcher_VKS:SetEngageRadius( 100000 )
A2ADispatcher_VKS:SetDisengageRadius( 340000 )
A2ADispatcher_VKS:SetGciRadius( 120000 )
A2ADispatcher_VKS:SetDefaultFuelThreshold( 0.3 ) 

--** CAP Squadrons

A2ADispatcher_VKS:SetSquadron( "MiG-21-Nalchik", "Nalchik", { "A2ACAP_MIG21" })
A2ADispatcher_VKS:SetSquadronGrouping( "MiG-21-Nalchik", 2 )
A2ADispatcher_VKS:SetSquadronGci("MiG-21-Nalchik", 400,1000)
A2ADispatcher_VKS:SetSquadronFuelThreshold("MiG-21-Nalchik", 0.4)
A2ADispatcher_VKS:SetSquadronTakeoffFromParkingCold("MiG-21-Nalchik")

env.info( "CRNGE | REDFOR CAP Spawn -- Completed" )

end