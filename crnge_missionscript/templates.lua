---------------------------------------------------
-- Group Templates
---------------------------------------------------
do

    if (crnge.debug == true) then
      trigger.action.outText("CRNGE | Group Templates --- START" , 10 , false)
    end

  Template_Red_Convoy = { 
    'R_CONVOY', 
    'R_CONVOY-1', 
    'R_CONVOY-2', 
    'R_CONVOY-3',  
    'R_CONVOY-4',  
    'R_CONVOY-5',
    'R_CONVOY-6',
    'R_CONVOY-7',
    'R_CONVOY-8',
    'R_CONVOY-9',
    'R_CONVOY-10',
    }

  Template_Red_Helicopter = { 
    'R_TMP_HELO_AH1', 
    'R_TMP_HELO_AH64', 
    'R_TMP_HELO_KA50',
    'R_TMP_HELO_MI24AA',
    'R_TMP_HELO_MI24AG',
    'R_TMP_HELO_MI28',
    'R_TMP_HELO_GAZAA',
    'R_TMP_HELO_UH60',
    'R_TMP_HELO_UH1',
    'R_TMP_HELO_OH58',
    'R_TMP_HELO_MI8',
    'R_TMP_HELO_MI26',
    'R_TMP_HELO_KA27',
    'R_TMP_HELO_CH47',
    'R_TMP_HELO_KA50III'
    }

  Spawn_R_Escort_Template = { 
    'ESC_SU27', 
    'ESC_MIG23',
    'ESC_SU30'
    }

  Spawn_R_WW2_Escort_Template = { 
    'Two-Ship Bf 109', 
    'Two-Ship P-47',
    'Two-Ship P-51'
  }

  Spawn_R_CW1_Escort_Template = { 
    'ESC_F5',
    'ESC_F1EQ',
    'ESC_F4',
    'ESC_F16',
    'ESC_F14',
    'ESC_F18'
  }

  Spawn_R_CW2_Escort_Template = { 
    'ESC_MIG21', 
    'ESC_MIG19',
    'ESC_MIG23'
  }

  Spawn_R_CW3_Escort_Template = { 
    'ESC_SU27', 
    'ESC_SU30',
    'ESC_JF17',
    'ESC_J11'
  }

  Spawn_R_Bombers_Template = { 
    'A2G_BOMBERS_TU22'
    }

  Spawn_R_WW2_Bombers_Template = { 
    'A2G_BOMBERS_A20'
    }

  Spawn_R_CW1_Bombers_Template = { 
    'A2G_BOMBERS_B52'
  }

  Spawn_R_CW2_Bombers_Template = { 
    'A2G_BOMBERS_H6J'
  }

  Spawn_R_CW3_Bombers_Template = { 
    'A2G_BOMBERS_TU22'
  }

  Spawn_R_LL1_Bombers_Template = { 
    'A2G_BOMBERS_SU22'
  }

  Spawn_R_LL2_Bombers_Template = { 
    'A2G_BOMBERS_AJS37'
  }

  Spawn_R_LL3_Bombers_Template = { 
    'A2G_BOMBERS_F16'
  }
  
  Spawn_R_LL4_Bombers_Template = { 
    'A2G_BOMBERS_F15'
  }

  env.info( "CRNGE | Group Templates --- Completed" )

end