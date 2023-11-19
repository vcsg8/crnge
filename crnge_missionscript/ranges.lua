---------------------------------------------------
-- Target Ranges
---------------------------------------------------
do
if (crnge.debug == true) then
  MESSAGE:New("CRNGE | Target Range --- START",10):ToAll()
end



--** Static and Moving Range CN02
cn02bombingcircles = {"Range_BombCircle"}
cn02MovingTargets = {"Range_Moving_01", "Range_Moving_02", "Range_Moving_03", "Range_Moving_04", "Range_Moving_05", "Range_Moving_06"}
RangeCN02 = RANGE:New("Range KobOld")
    :AddStrafePit({"Range_StrafePit"}, 4000, 300, 180, false, 20, 428)
    :AddBombingTargets(cn02bombingcircles, 40)
    :AddBombingTargets(cn02MovingTargets, 25)

RangeCN02:Start()


 env.info( "CRNGE | Target Ranges --- Completed" )
end