---------------------------------------------------
-- Menu System
---------------------------------------------------
do
if (crnge.debug == true) then
  trigger.action.outText("CRNGE | Menu Setup --- START" , 10 , false)
end

local Menu_Spawn_Master = missionCommands.addSubMenu('Unit Spawning')

  local Menu_AA_Drones = missionCommands.addSubMenu('Air to Air Drones',Menu_Spawn_Master)

    local Menu_BVR_Drones = missionCommands.addSubMenu('BVR Drones', Menu_AA_Drones)

      local Menu_BVR_Single = missionCommands.addSubMenu('Single Drones', Menu_BVR_Drones)  
        local selection_MirageBVRx1 = missionCommands.addCommand('Mirage F1M (Super 530F)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single Mirage F1M BVR", qty = 1, dir = 270})
        local selection_MiG23BVRx1 = missionCommands.addCommand('MiG-23MLD (R-24R, R-24T)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single MiG-23MLD BVR", qty = 1, dir = 270})
        local selection_MiG25BVRx1 = missionCommands.addCommand('MiG-25PD (R-40R)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single MiG-25 BVR", qty = 1, dir = 270})
        local selection_MiG29BVRx1 = missionCommands.addCommand('MiG-29S (R-27ER, R-27ET)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single MiG-29S BVR", qty = 1, dir = 270})
        local selection_J15BVRx1 = missionCommands.addCommand('J-15 (PL-12)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single J-15 BVR", qty = 1, dir = 270})
        local selection_Su30BVRx1 = missionCommands.addCommand('Su-30 (R-77)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single Su-30 BVR", qty = 1, dir = 270})
        local selection_F14BVRx1 = missionCommands.addCommand('F-14B (AIM-54C Mk 60)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single F-14B BVR", qty = 1, dir = 270})
        local selection_F15BVRx1 = missionCommands.addCommand('F-15C (AIM-120C)', Menu_BVR_Single, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Single F-15C BVR", qty = 1, dir = 270})

      local Menu_BVR_Double = missionCommands.addSubMenu('Double Drones', Menu_BVR_Drones)  
        local selection_MirageBVRx2 = missionCommands.addCommand('Mirage F1M (Super 530F)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship Mirage F1M BVR", qty = 2, dir = 270})
        local selection_MiG23BVRx2 = missionCommands.addCommand('MiG-23MLD (R-24R, R-24T)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship MiG-23 BVR", qty = 2, dir = 270})
        local selection_MiG25BVRx2 = missionCommands.addCommand('MiG-25PD (R-40R)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship MiG-25 BVR", qty = 2, dir = 270})
        local selection_MiG29BVRx2 = missionCommands.addCommand('MiG-29S (R-27ER, R-27ET)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship MiG-29S BVR", qty = 2, dir = 270})
        local selection_J15BVRx2 = missionCommands.addCommand('J-15 (PL-12)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship J-15 BVR", qty = 2, dir = 270})
        local selection_Su30BVRx2 = missionCommands.addCommand('Su-30 (R-77)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship Su-30 BVR", qty = 2, dir = 270})
        local selection_F14BVRx2 = missionCommands.addCommand('F-14B (AIM-54C Mk 60)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship F-14B BVR", qty = 2, dir = 270})
        local selection_F15BVRx2 = missionCommands.addCommand('F-15C (AIM-120C)', Menu_BVR_Double, CSG8F.crnge.spawn.spawnRedBVR, {plane = "Two-Ship F-15 BVR", qty = 2, dir = 270})

    local Menu_ACM_Drones = missionCommands.addSubMenu('ACM Drones', Menu_AA_Drones)

      local Menu_ACM_Single = missionCommands.addSubMenu('Single Drones', Menu_ACM_Drones)  
        local selection_MiG19_ACMx1 = missionCommands.addCommand('MiG-19 (K-13)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single MiG-19 ACM", qty = 1, dir = 318})
        local selection_MiG21_ACMx1 = missionCommands.addCommand('MiG-21bis (R-3R, R-60M)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single MiG-21 ACM", qty = 1, dir = 318})
        local selection_F5_ACMx1 = missionCommands.addCommand('F-5E-3 (AIM-9P5)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single F-5 ACM", qty = 1, dir = 318})
        local selection_F1_x1 = missionCommands.addCommand('Mirage F1M (AIM-9JULI)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single Mirage F1M ACM", qty = 1, dir = 318})
        local selection_Mig29_ACMx1 = missionCommands.addCommand('MiG-29A (R-73)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single MiG-29A ACM", qty = 1, dir = 318})
        local selection_F16_ACMx1 = missionCommands.addCommand('F-16 (AIM-9M))', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single F-16 ACM", qty = 1, dir = 318})
        local selection_F14_ACMx1 = missionCommands.addCommand('F-14B (AIM-9M)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single F-14B ACM", qty = 1, dir = 318})
        local selection_M2K_ACMx1 = missionCommands.addCommand('Mirage 2000C (Magic II)', Menu_ACM_Single, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Single Mirage 2000C ACM", qty = 1, dir = 318})

      local Menu_ACM_Double = missionCommands.addSubMenu('Double Drones', Menu_ACM_Drones)  
        local selection_MIGg19_ACMx2 = missionCommands.addCommand('MiG-19 (K-13)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship MiG-19 ACM", qty = 2, dir = 318})
        local selection_MIG21_ACMx2 = missionCommands.addCommand('MiG-21bis (R-3R, R-60M)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship MiG-21 ACM", qty = 2, dir = 318})
        local selection_F5_ACMx2 = missionCommands.addCommand('F-5E-3 (AIM-9P5)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship F-5 ACM", qty = 2, dir = 318})
        local selection_F1_ACMx2 = missionCommands.addCommand('Mirage F1M (AIM-9JULI)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship Mirage F1M ACM", qty = 2, dir = 318})
        local selection_MIG29_ACMx2 = missionCommands.addCommand('MiG-29A (R-73)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship MiG-29A ACM", qty = 2, dir = 318})
        local selection_F16_ACMx2 = missionCommands.addCommand('F-16 (AIM-9M)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship F-16 ACM", qty = 2, dir = 318})
        local selection_F14_ACMx2 = missionCommands.addCommand('F-14B (AIM-9M)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship F-14B ACM", qty = 2, dir = 318})
        local selection_M2K_ACMx2 = missionCommands.addCommand('Mirage 2000C (Magic II)', Menu_ACM_Double, CSG8F.crnge.spawn.spawnspawnRedACM, {plane = "Two-Ship Mirage 2000C ACM", qty = 2, dir = 318})

    local Menu_Target_Drones = missionCommands.addSubMenu('Non-Combat Target Drones', Menu_AA_Drones)
      local Menu_Target_DronesBVR = missionCommands.addSubMenu('Modern Drones', Menu_Target_Drones)
        local selection_dr_Hawkx1 = missionCommands.addCommand('Single Hawk Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Single Hawk Target Drone", qty = 1, loc = "N_A2A_BVR_Drone_SGL", dir = 270})
        local selection_dr_Hawkx2 = missionCommands.addCommand('Two-Ship Hawk Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Two-Ship Hawk Target Drone", qty = 1, loc = "N_A2A_BVR_Drone_DBL", dir = 270})  
        local selection_dr_Phantomx1 = missionCommands.addCommand('Single Phantom Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Single Phantom Target Drone", qty = 1, loc = "N_A2A_BVR_Drone_SGL", dir = 270})
        local selection_dr_Phantomx2 = missionCommands.addCommand('Two-Ship Phantom Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Two-Ship Phantom Target Drone", qty = 1, loc = "N_A2A_BVR_Drone_DBL", dir = 270})  
        local selection_dr_H6x1 = missionCommands.addCommand('Single C-17 Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Single C-17 Target Drone", qty = 1, loc = "N_A2A_BVR_Drone_SGL", dir = 270})    
        local selection_dr_H6x2 = missionCommands.addCommand('Two-Ship C-17 Target Drone', Menu_Target_DronesBVR, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Two-Ship C-17 Target Drone", qty = 2, loc = "N_A2A_BVR_Drone_DBL", dir = 270})
      local Menu_Target_DronesWW2 = missionCommands.addSubMenu('WW2 Drones', Menu_Target_Drones)
        local selection_dr_I16_x1 = missionCommands.addCommand('Single I-16 Target Drone', Menu_Target_DronesWW2, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Single I-16 Target Drone", qty = 1, loc = "N_A2A_WW2_Drone_SGL", dir = 318})
        local selection_dr_I16Nx2 = missionCommands.addCommand('Two-Ship I-16 Target Drone', Menu_Target_DronesWW2, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Two-Ship I-16 Target Drone", qty = 2, loc = "N_A2A_WW2_Drone_DBL", dir = 318}) 
        local selection_dr_A20x1 = missionCommands.addCommand('Single A-20 Target Drone', Menu_Target_DronesWW2, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Single A-20 Target Drone", qty = 1, loc = "N_A2A_WW2_Drone_SGL", dir = 318})
        local selection_dr_A20x2 = missionCommands.addCommand('Two-Ship A-20 Target Drone', Menu_Target_DronesWW2, CSG8F.crnge.spawn.spawnTargetDrones, {plane = "Two-Ship A-20 Target Drone", qty = 2, loc = "N_A2A_WW2_Drone_DBL", dir = 318})
        
    local Menu_WW2_Drones = missionCommands.addSubMenu('WW2 Drones', Menu_AA_Drones)

      local Menu_WW2_Single = missionCommands.addSubMenu('Single Drones', Menu_WW2_Drones)  
        local selection_I16x1 = missionCommands.addCommand('I-16', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single I-16", qty = 1, dir = 318})
        local selection_FW190Ax1 = missionCommands.addCommand('FW 190 A-8', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single FW 190 A-8", qty = 1, dir = 318})
        local selection_FW190Dx1 = missionCommands.addCommand('FW 190 D-9', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single FW 190 D-9", qty = 1, dir = 318})
        local selection_Bf109x1 = missionCommands.addCommand('Bf 109', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single Bf 109", qty = 1, dir = 318})
        local selection_P47x1 = missionCommands.addCommand('P-47D-40', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single P-47", qty = 1, dir = 318})
        local selection_P51x1 = missionCommands.addCommand('P-51D-30-NA', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single P-51", qty = 1, dir = 318})
        local selection_Spitx1 = missionCommands.addCommand('Spitfire LF Mk IX', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single Spitfire", qty = 1, dir = 318})
        local selection_Mossiex1 = missionCommands.addCommand('Mosquito FB Mk VI', Menu_WW2_Single, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Single Mosquito", qty = 1, dir = 318})

      local Menu_WW2_Double = missionCommands.addSubMenu('Double Drones', Menu_WW2_Drones)  
        local selection_I16x2 = missionCommands.addCommand('I-16', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship I-16", qty = 2, dir = 318})
        local selection_FW190Ax2 = missionCommands.addCommand('FW 190 A-8', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship FW 190 A-8", qty = 2, dir = 318})
        local selection_FW190Dx2 = missionCommands.addCommand('FW 190 D-9', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship FW 190 D-9", qty = 2, dir = 318})
        local selection_Bf109x2 = missionCommands.addCommand('Bf 109', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship Bf 109", qty = 2, dir = 318})
        local selection_P47x2 = missionCommands.addCommand('P-47D-40', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship P-47", qty = 2, dir = 318})
        local selection_P51x2 = missionCommands.addCommand('P-51D-30-NA', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship P-51", qty = 2, dir = 318})
        local selection_Spitx2 = missionCommands.addCommand('Spitfire LF Mk IX', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship Spitfire", qty = 2, dir = 318})
        local selection_Mossiex2 = missionCommands.addCommand('Mosquito FB Mk VI', Menu_WW2_Double, CSG8F.crnge.spawn.spawnRedWW2, {plane = "Two-Ship Mosquito", qty = 2, dir = 318})  
        
         
  local rNavalDroneTopMenu = missionCommands.addSubMenu('Naval Targets',Menu_Spawn_Master)

    local rNavalRusShips = missionCommands.addSubMenu('Russian Ships', rNavalDroneTopMenu)
      local rNavalRus1 = missionCommands.addCommand('Molinya-Class Corvette', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Molniya")
      local rNavalRus2 = missionCommands.addCommand('Grisha-Class Corvette', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Grisha")
      local rNavalRus3 = missionCommands.addCommand('Krivak-Class Frigate', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Krivak")
      local rNavalRus4 = missionCommands.addCommand('Neustrashimy-Class Frigate', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Neustrashimy")
      local rNavalRus5 = missionCommands.addCommand('Slkava-Class Cruiser', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Slava")  
      local rNavalRus6 = missionCommands.addCommand('Pyotr Velikiy-Class Cruiser', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Pyotr Velikiy")  
      local rNavalRus7 = missionCommands.addCommand('Admiral Kuznetzov-Class Carrier', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Admiral Kuznetsov") 
      local rNavalRus8 = missionCommands.addCommand('Improved Kilo-Class Submarine', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Improved Kilo") 
      local rNavalRus9 = missionCommands.addCommand('Ropucha-Class Landing SHip', rNavalRusShips, CSG8F.crnge.spawn.spawnRedShip, "Ropucha") 
    
    local rNavalPLANShips = missionCommands.addSubMenu('Chinese Ships', rNavalDroneTopMenu)
      local rNavalPLAN1 = missionCommands.addCommand('Type 054A-Class Frigate', rNavalPLANShips, CSG8F.crnge.spawn.spawnRedShip, "Type 054A")
      local rNavalPLAN2 = missionCommands.addCommand('Type 052B-Class Destroyer', rNavalPLANShips, CSG8F.crnge.spawn.spawnRedShip, "Type 052B")
      local rNavalPLAN3 = missionCommands.addCommand('Type 052C-Class Destroyer', rNavalPLANShips, CSG8F.crnge.spawn.spawnRedShip, "Type 052C")
      local rNavalPLAN4 = missionCommands.addCommand('Type 071-Class LHD', rNavalPLANShips, CSG8F.crnge.spawn.spawnRedShip, "Type 071")
      local rNavalPLAN5 = missionCommands.addCommand('Type 093-Class Submarine', rNavalPLANShips, CSG8F.crnge.spawn.spawnRedShip, "Type 093")
    
    local rNavalUSAhips = missionCommands.addSubMenu('American Ships', rNavalDroneTopMenu)
      local rNavalUSA1 = missionCommands.addCommand('OHP-Class Frigate', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Oliver Hazard Perry")  
      local rNavalUSA2 = missionCommands.addCommand('Arleigh Burke-Class Destroyer', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Arleigh Burke")    
      local rNavalUSA3 = missionCommands.addCommand('Ticonderoga-Class Destroyer', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Ticonderoga")      
      local rNavalUSA4 = missionCommands.addCommand('Tarawa-Class LHA', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Tarawa")         
      --local rNavalUSA5 = missionCommands.addCommand('Forrestal-Class Carrier', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Forrestal")     
      --local rNavalUSA6 = missionCommands.addCommand('Nimitz-Class Carrier', rNavalUSAhips, CSG8F.crnge.spawn.spawnRedShip, "Nimitz")        
      
    local rNavalUKShips = missionCommands.addSubMenu('British Ships', rNavalDroneTopMenu)
      local rNavalUK1 = missionCommands.addCommand('Castle-Class Patrol Vessel', rNavalUKShips, CSG8F.crnge.spawn.spawnRedShip, "Castle")      
      local rNavalUK2 = missionCommands.addCommand('Leander-Class Frigate', rNavalUKShips, CSG8F.crnge.spawn.spawnRedShip, "Leander")     
      local rNavalUK3 = missionCommands.addCommand('Invincible-Class Carrier', rNavalUKShips, CSG8F.crnge.spawn.spawnRedShip, "Invincible")      
      
    local rNavalOtherShips = missionCommands.addSubMenu('Other Ships', rNavalDroneTopMenu)
      local rNavalOther1 = missionCommands.addCommand('La Combattante IIa-Class Fast Attack Craft', rNavalOtherShips, CSG8F.crnge.spawn.spawnRedShip, "La Combattante")      
      local rNavalOther2 = missionCommands.addCommand('Condell-Class Frigate', rNavalOtherShips, CSG8F.crnge.spawn.spawnRedShip, "Condell")         
   
  local Menu_SAM_Top = missionCommands.addSubMenu('SAM Targets',Menu_Spawn_Master) 
      local Menu_TactSAMs = missionCommands.addSubMenu('SAM Range 1 (Grid FH94)', Menu_SAM_Top)
        local choice_Tact1_1 = missionCommands.addCommand('SA-18 "GROUSE" Detachment', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-18 MANPADS Detachment", staticTemplate = nil})
        local choice_Tact1_2 = missionCommands.addCommand('SA-24 "GRINCH" Detachment', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-24 MANPAD Detachment", staticTemplate = nil})
        local choice_Tact1_3 = missionCommands.addCommand('SA-9 "GASKIN" Battery', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-8 SAM Section", staticTemplate = nil}) 
        local choice_Tact1_4 = missionCommands.addCommand('SA-8 "GECKO" Battery', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-8 SAM Section", staticTemplate = nil}) 
        local choice_Tact1_5 = missionCommands.addCommand('SA-13 "GOPHER"', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-13 SAM Section", staticTemplate = nil})   
        local choice_Tact1_6 = missionCommands.addCommand('SA-19 "GRISOM"', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-6 SAM Battery", staticTemplate = nil})
        local choice_Tact1_7 = missionCommands.addCommand('SA-3 "GOA"', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "SA-3 SAM Site", staticTemplate = CSG8_TEMPLATES.samTemplates[3].statics})
        local choice_Tact1_8 = missionCommands.addCommand('Roland ADS', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "Roland SAM Battery", staticTemplate = nil})
        local choice_Tact1_9 = missionCommands.addCommand('MIM-120 NASAMS', Menu_TactSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH94", groupTemplate = "NASAMS SAM Battery", staticTemplate = nil})
        
      local Menu_TactSAMs2 = missionCommands.addSubMenu('SAM Range 2 (Grid FH08)', Menu_SAM_Top)
        local choice_Tact2_1 = missionCommands.addCommand('SA-6 "GAINFUL"', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-6 SAM Battery", staticTemplate = nil})  
        local choice_Tact2_2 = missionCommands.addCommand('SA-11 "GADFLY"', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-11 SAM Battery", staticTemplate = nil})  
        local choice_Tact2_3 = missionCommands.addCommand('SA-15 "GAUNTLET"', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-15 SAM Section", staticTemplate = nil})   
        local choice_Tact2_4 = missionCommands.addCommand('SA-17 "GRIZZLY" (HDS)', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-17 SAM Battery", staticTemplate = nil})
        local choice_Tact2_5 = missionCommands.addCommand('SA-2 "Guideline"', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-2 SAM Site", staticTemplate = CSG8_TEMPLATES.samTemplates[1].statics})
        local choice_Tact2_6 = missionCommands.addCommand('SA-2 "Guideline" MAD', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "SA-2 SAM Site MAD", staticTemplate = CSG8_TEMPLATES.samTemplates[2].statics}) 
        local choice_Tact2_8 = missionCommands.addCommand('MIM-23 Hawk', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "Hawk SAM Battery", staticTemplate = nil})
        --local choice_Tact2_9 = missionCommands.addCommand('MIM-120 NASAMS', Menu_TactSAMs2, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range FH08", groupTemplate = "NASAMS SAM Battery", staticTemplate = nil})
      
      local Menu_StratSAMs = missionCommands.addSubMenu('SAM Range 3 (Grid NM)', Menu_SAM_Top)
        local rStratSAMChoice1 = missionCommands.addCommand('SA-5 "Gammon"', Menu_StratSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range NM", groupTemplate = "SA-5 SAM Site", staticTemplate = CSG8_TEMPLATES.samTemplates[1].statics})
        local rStratSAMChoice2 = missionCommands.addCommand('SA-10 "Grumble"', Menu_StratSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range NM", groupTemplate = "SA-10 SAM Site", staticTemplate = nil}) 
        local rStratSAMChoice3 = missionCommands.addCommand('SA-12 "Gladiator/Giant" (HDS)', Menu_StratSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range NM", groupTemplate = "SA-12 SAM Site", staticTemplate = nil})  
        local rStratSAMChoice4 = missionCommands.addCommand('SA-20B "Gargoyle" (HDS)', Menu_StratSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range NM", groupTemplate = "SA-20B SAM Site", staticTemplate = nil})  
        local rStratSAMChoice5 = missionCommands.addCommand('MIM-104 Patriot', Menu_StratSAMs, CSG8F.crnge.spawn.spawnSAMandTemplateZone, {zone = "SAM Range NM", groupTemplate = "Patriot SAM Site", staticTemplate = nil})  
  

  
  
  local Menu_Bombers_Top = missionCommands.addSubMenu('Bomber Attack',Menu_Spawn_Master) 
    local Menu_Bombers_Era1 = missionCommands.addSubMenu('Modern - TU-22 "BACKFIRE"',Menu_Bombers_Top) 
        local bomber_Era1_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 1,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template
          })
        local bomber_Era1_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 2,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW3_Bombers_Template  
          }) 
        local bomber_Era1_Choice3 = missionCommands.addCommand('3x Bomber Group - No Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 3,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW3_Bombers_Template,            
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW3_Bombers_Template         
          }) 
        local bomber_Era1_Choice4 = missionCommands.addCommand('1x Bomber Group - Sml Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 4,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW3_Escort_Template
          })
        local bomber_Era1_Choice5 = missionCommands.addCommand('2x Bomber Group - Sml Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 5,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW3_Escort_Template,
            bomber2Group = "R_BMB_01",
            bomber2Template = Spawn_R_CW3_Bombers_Template
          })
        local bomber_Era1_Choice6 = missionCommands.addCommand('3x Bomber Group - Lrg Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 6,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW3_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW3_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW3_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW3_Bombers_Template 
          })
        local bomber_Era1_Choice7 = missionCommands.addCommand('3x Bomber Group - Huge Escort', Menu_Bombers_Era1, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 7,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW3_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW3_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW3_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW3_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW3_Bombers_Template, 
            escort3Group = "R_ESC_03",
            escort3Template = Spawn_R_CW3_Escort_Template          
          })      
    
    local Menu_Bombers_Era2 = missionCommands.addSubMenu('Modern - B-25 Stratofortress"',Menu_Bombers_Top) 
        local bomber_Era2_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 1,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template
          })
        local bomber_Era2_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 2,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW1_Bombers_Template  
          }) 
        local bomber_Era2_Choice3 = missionCommands.addCommand('3x Bomber Group - No Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 3,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW1_Bombers_Template,            
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW1_Bombers_Template         
          }) 
        local bomber_Era2_Choice4 = missionCommands.addCommand('1x Bomber Group - Sml Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 4,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW1_Escort_Template
          })
        local bomber_Era2_Choice5 = missionCommands.addCommand('2x Bomber Group - Sml Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 5,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW1_Escort_Template,
            bomber2Group = "R_BMB_01",
            bomber2Template = Spawn_R_CW1_Bombers_Template
          })
        local bomber_Era2_Choice6 = missionCommands.addCommand('3x Bomber Group - Lrg Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 6,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW1_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW1_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW1_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW1_Bombers_Template 
          })
        local bomber_Era2_Choice7 = missionCommands.addCommand('3x Bomber Group - Huge Escort', Menu_Bombers_Era2, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 7,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW1_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW1_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW1_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW1_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW1_Bombers_Template, 
            escort3Group = "R_ESC_03",
            escort3Template = Spawn_R_CW1_Escort_Template          
          })      
   
     local Menu_Bombers_Era3 = missionCommands.addSubMenu('Earl Cold War - TU-16 "BADGER"',Menu_Bombers_Top) 
        local bomber_Era3_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 1,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template
          })
        local bomber_Era3_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 2,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW2_Bombers_Template  
          }) 
        local bomber_Era3_Choice3 = missionCommands.addCommand('3x Bomber Group - No Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 3,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW2_Bombers_Template,            
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW2_Bombers_Template         
          }) 
        local bomber_Era3_Choice4 = missionCommands.addCommand('1x Bomber Group - Sml Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 4,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW2_Escort_Template
          })
        local bomber_Era3_Choice5 = missionCommands.addCommand('2x Bomber Group - Sml Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 5,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW2_Escort_Template,
            bomber2Group = "R_BMB_01",
            bomber2Template = Spawn_R_CW2_Bombers_Template
          })
        local bomber_Era3_Choice6 = missionCommands.addCommand('3x Bomber Group - Lrg Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 6,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW2_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW2_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW2_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW2_Bombers_Template 
          })
        local bomber_Era3_Choice7 = missionCommands.addCommand('3x Bomber Group - Huge Escort', Menu_Bombers_Era3, CSG8F.crnge.spawn.spawnBomberWave, 
          {
            val = 7,
            bomber1Group = "R_BMB_01",
            bomber1Template = Spawn_R_CW2_Bombers_Template,
            escort1Group = "R_ESC_01",
            escort1Template = Spawn_R_CW2_Escort_Template,
            bomber2Group = "R_BMB_02",
            bomber2Template = Spawn_R_CW2_Bombers_Template,      
            escort2Group = "R_ESC_02",
            escort2Template = Spawn_R_CW2_Escort_Template, 
            bomber3Group = "R_BMB_03",
            bomber3Template = Spawn_R_CW2_Bombers_Template, 
            escort3Group = "R_ESC_03",
            escort3Template = Spawn_R_CW2_Escort_Template          
          })    
    
    local Menu_Bombers_LL1 = missionCommands.addSubMenu('Low Level - SU-22 "FENCER"',Menu_Bombers_Top) 
        local bomber_LL1_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_LL1, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 1,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL1_Bombers_Template
          })
        local bomber_LL1_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_LL1, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 2,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL1_Bombers_Template,
            bomber2Group = "R_BMB_LL_2",
            bomber2Template = Spawn_R_LL1_Bombers_Template  
          })    

    local Menu_Bombers_LL2 = missionCommands.addSubMenu('Low Level - AJS37 "Viggen"',Menu_Bombers_Top) 
        local bomber_LL2_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_LL2, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 1,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL2_Bombers_Template
          })
        local bomber_LL2_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_LL2, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 2,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL2_Bombers_Template,
            bomber2Group = "R_BMB_LL_2",
            bomber2Template = Spawn_R_LL2_Bombers_Template  
          }) 
    
    local Menu_Bombers_LL3 = missionCommands.addSubMenu('Low Level - F-16 "Viper"',Menu_Bombers_Top) 
        local bomber_LL3_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_LL3, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 1,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL3_Bombers_Template
          })
        local bomber_LL3_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_LL3, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 2,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL3_Bombers_Template,
            bomber2Group = "R_BMB_LL_2",
            bomber2Template = Spawn_R_LL3_Bombers_Template  
          }) 
        
      local Menu_Bombers_LL4 = missionCommands.addSubMenu('Low Level - F-15 "Strike Eagle"',Menu_Bombers_Top) 
        local bomber_LL4_Choice1 = missionCommands.addCommand('1x Bomber Group - No Escort', Menu_Bombers_LL4, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 1,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL4_Bombers_Template
          })
        local bomber_LL4_Choice2 = missionCommands.addCommand('2x Bomber Group - No Escort', Menu_Bombers_LL4, CSG8F.crnge.spawn.spawnBomberWaveLL, 
          {
            val = 2,
            bomber1Group = "R_BMB_LL_1",
            bomber1Template = Spawn_R_LL4_Bombers_Template,
            bomber2Group = "R_BMB_LL_2",
            bomber2Template = Spawn_R_LL4_Bombers_Template  
          }) 

  local MenuLL_Range_North = missionCommands.addSubMenu('Low Level Ranges', Menu_Spawn_Master)
    local choice_LL_north = missionCommands.addCommand('Spawn Northern Low Level Range', MenuLL_Range_North, CSG8F.crnge.spawn.spawnNorthLowLevelRange, {})


local Menu_AI_Cleanup = missionCommands.addSubMenu('AI Cleanup',Menu_Spawn_Master)
  local choice_cleanup1 = missionCommands.addCommand('Cleanup Tactical SAMs FH94', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "SAM Range FH94")
  local choice_cleanup2 = missionCommands.addCommand('Cleanup Tactical SAMs FH08', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "SAM Range FH08")
  local choice_cleanup3 = missionCommands.addCommand('Cleanup Strategic SAMs', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "SAM Range NM")  
  local choice_cleanup4 = missionCommands.addCommand('Cleanup ACM Drones', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "CRNGEZONE_ACM") 
  local choice_cleanup5 = missionCommands.addCommand('Cleanup BVR Drones', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "CRNGEZONE_BVR")   
  local choice_cleanup6 = missionCommands.addCommand('Cleanup Red Ships', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "CRNGEZONE_SHIPS")
  local choice_cleanup7 = missionCommands.addCommand('Cleanup North Low Level Range', Menu_AI_Cleanup, CSG8F.utils.cleanUpZone, "CRNGEZONE_LLN")  
 


  local Menu_CSG_Alarm = missionCommands.addSubMenu('CSG Ship Options')
    local choice_cv_light_auto = missionCommands.addCommand('CVN Lights AUTO', Menu_CSG_Alarm, CSG8F.utils.setFlag, {flag= 90003})
    local choice_cv_light_nav = missionCommands.addCommand('CVN Lights NAV', Menu_CSG_Alarm, CSG8F.utils.setFlag, {flag= 90004})
    local choice_cv_light_rec = missionCommands.addCommand('CVN Lights RECOVERY', Menu_CSG_Alarm, CSG8F.utils.setFlag, {flag= 90002})
    local choice_cv_light_lau = missionCommands.addCommand('CVN Lights LAUNCH', Menu_CSG_Alarm, CSG8F.utils.setFlag, {flag= 90001})
    local choice_cv_light_off = missionCommands.addCommand('CVN Lights OFF', Menu_CSG_Alarm, CSG8F.utils.setFlag, {flag= 90000})
    local choice_CSG_red = missionCommands.addCommand('Weapons COLD', Menu_CSG_Alarm, CSG8F.utils.alarmGreen, {name = "Carrier Strike Group 8"})
    local choice_CSG_green = missionCommands.addCommand('Weapons HOT', Menu_CSG_Alarm, CSG8F.utils.alarmRed, {name = "Carrier Strike Group 8"})


local Menu_Mission_Misc =  missionCommands.addSubMenu('Mission Control') 
  local Menu_LoadMission = missionCommands.addSubMenu('Load Mission', Menu_Mission_Misc)

    local Menu_ReloadMission = missionCommands.addSubMenu('Reload Current Mission', Menu_LoadMission)
        local choice_confirm_reload = missionCommands.addCommand('Confirm Reload This Mission', Menu_ReloadMission,  CSG8F.utils.setFlag, {flag= 99999})

    local Menu_ChangeMissionTime = missionCommands.addSubMenu('Change Mission Day/Night', Menu_LoadMission)
        local choice_confirm_daynight = missionCommands.addCommand('Confirm Change Day/Night', Menu_ChangeMissionTime, CSG8F.utils.setFlag, {flag= 99998})
        
    local Menu_ChangeMissionWeather = missionCommands.addSubMenu('Change Mission Weather', Menu_LoadMission)
        local choice_confirm_weather = missionCommands.addCommand('Confirm Change Weather', Menu_ChangeMissionWeather, CSG8F.utils.setFlag, {flag= 99997})  
        
      local Menu_ChangeMissionSeason = missionCommands.addSubMenu('Change Mission Season', Menu_LoadMission)
        local choice_confirm_season = missionCommands.addCommand('Confirm Change Season', Menu_ChangeMissionSeason, CSG8F.utils.setFlag, {flag= 99996}) 
        
if (GROWLER ~= nil) then
  local MenuGrowlerRadio = missionCommands.addSubMenu("Growler Radio")
    local GrowlerStartVietnam         = missionCommands.addCommand("Play Vietnam Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistVietnam, announcerlist = GRLIB.announcer})
    local GrowlerStartFighterPilot    = missionCommands.addCommand("Play Fighter Pilot Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistFighter, announcerlist = GRLIB.announcer})
    local GrowlerStartBomber          = missionCommands.addCommand("Play Bomber Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistBomber, announcerlist = GRLIB.announcer})
    local GrowlerStartGringos         = missionCommands.addCommand("Play Dos Gringos Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistGringos, announcerlist = GRLIB.announcer})
    local GrowlerStartB7R             = missionCommands.addCommand("Play Anime Playlist", MenuGrowlerRadio, GROWLER.RADIOINIT, {playlist = musicPlaylistAnime, announcerlist = GRLIB.announcer})
    local GrowlerRadioSkip            = missionCommands.addCommand("Skip Next Song", MenuGrowlerRadio, GROWLER.GROWLERSKIP)
    local GrowlerRadioOff             = missionCommands.addCommand("Deactivate Growler Radio", MenuGrowlerRadio, GROWLER.GROWLERSTOP)
else
   env.info( "CRNGE | Growler Radio is not installed. Growler commands not added." ) 
end 
 
 
 
env.info( "CRNGE | Mission Control Commands --- Completed" )
 
end 