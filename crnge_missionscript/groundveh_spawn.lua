---------------------------------------------------
-- Ground Vehicle Spawning
---------------------------------------------------
do
if (crnge.debug == true) then
  trigger.action.outText("*** Ground Vehicle Spawning --- START ***" , 10 , false)
end

--Roadside convoys w/ air escort
Moving_Convoy_01 = SPAWN:New( "R_CVY_01")
  :InitLimit( 15, 0 )
  :InitGroupHeading(262)
  :InitRandomizeTemplate( Template_Red_Convoy )
  :SpawnScheduled( 300, 0)
  :OnSpawnGroup(
    function( SpawnGroup )
      local Spawn_Helo_01 = SPAWN:New( "R_Convoy_Helo_01" )
      :InitRandomizeTemplate( Template_Red_Helicopter )
      :Spawn()
      local FollowDCSTask = Spawn_Helo_01:TaskEscort( SpawnGroup, POINT_VEC3:New(-50, 100, 0):GetVec3(), 5, 3000, {'Air'} )
      Spawn_Helo_01:SetTask (FollowDCSTask,4)
    end
  )

--Roadside convoys w/ air escort
Moving_Convoy_02 = SPAWN:New( "R_CVY_02")
  :InitLimit( 15, 0 )
  :InitGroupHeading(224)
  :InitRandomizeTemplate( Template_Red_Convoy )
  :SpawnScheduled( 300, 0)
  :OnSpawnGroup(
    function( SpawnGroup )
      local Spawn_Helo_01 = SPAWN:New( "R_Convoy_Helo_02" )
      :InitRandomizeTemplate( Template_Red_Helicopter )
      :Spawn()
      local FollowDCSTask = Spawn_Helo_01:TaskEscort( SpawnGroup, POINT_VEC3:New(-50, 100, 0):GetVec3(), 5, 3000, {'Air'} )
      Spawn_Helo_01:SetTask (FollowDCSTask,4)
    end
  )

Moving_Convoy_03 = SPAWN:New( "R_CVY_03")
  :InitLimit( 15, 0 )
  :InitGroupHeading(149)
  :InitRandomizeTemplate( Template_Red_Convoy )
  :SpawnScheduled( 300, 0)


AddDismounts("R_CNV-1","Rifle")
AddDismounts("R_CNV-2","Rifle")
AddDismounts("R_CNV-3","MANPADS")
AddDismounts("R_CNV-1-1","Rifle")
AddDismounts("R_CNV-1-2","Rifle")
AddDismounts("R_CNV-1-3","MANPADS")
AddDismounts("R_SCOUT_1-1","Rifle")
AddDismounts("R_SCOUT_1-2","MANPADS")
AddDismounts("R_SCOUT_2-1","Rifle")
AddDismounts("R_SCOUT_2-2","MANPADS")
AddDismounts("R_CITY_MOV_VEH-2-1","Rifle")
AddDismounts("R_CITY_MOV_VEH-2-2","Rifle")
AddDismounts("R_CITY_MOV_VEH-2-3","Rifle")
AddDismounts("R_CITY_MOV_VEH-3-1","Rifle")
AddDismounts("R_CITY_MOV_VEH-3-2","Rifle")
AddDismounts("R_CITY_MOV_VEH-3-3","MANPADS")

 env.info( "*** CSG8 *** Ground Vehicle Spawning --- Completed" )
end