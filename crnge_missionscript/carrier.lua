---------------------------------------------------
-- Carrier Unit Spawning
---------------------------------------------------
do
if (crnge.debug == true) then
  trigger.action.outText("*** Carrier Unit Spawning --- START ***" , 10 , false)
end

-- *** Carrier Patrol ***
--GROUP:FindByName("Carrier Strike Group 8"):PatrolRouteRandom(37)
--GROUP:FindByName("Liaoning Task Force"):PatrolRouteRandom(37)


--[[ *** S-3 Recovery Tanker ***
local tankerCSG=RECOVERYTANKER:New(UNIT:FindByName("CVN-75 Harry S Truman"), "S-3")
    :SetTACAN(85, "TX1", "X")
    :SetRadio(285)
    :SetCallsign(CALLSIGN.Tanker.Texaco, 1)
    :SetAltitude(6000)
    :SetSpeed(274) --250 IAS
    :SetRacetrackDistances(10,5)
    :SetTakeoffAir()


tankerCSG:Start()
]]

--[[ *** KC-130 Tanker ***
local tanker130CSG=RECOVERYTANKER:New(UNIT:FindByName("CVN-75 Harry S Truman"), "KC-130")
    :SetHomeBase(AIRBASE.PersianGulf.Fujairah_Intl)
    :SetTACAN(86, "TX2", "X")
    :SetRadio(286)
    :SetCallsign(CALLSIGN.Tanker.Texaco, 2)
    :SetAltitude(8000)
    :SetSpeed(290) --250 IAS
    :SetRacetrackDistances(10,5)
    :SetTakeoffAir()

tanker130CSG:Start()
]]

--
--[[ *** AWACS ***
local awacsDarkstar=RECOVERYTANKER:New(UNIT:FindByName("CVN-75 Harry S Truman"), "E-2")
    :SetAWACS()
    :SetCallsign(CALLSIGN.AWACS.Darkstar, 1)
    :SetAltitude(25000)
    :SetRadio(252.75)
    :SetTakeoffAir()

awacsDarkstar:Start()
]]

--[[ *** Rescue Helo ***
heloCSG=RESCUEHELO:New("CVN-75 Harry S Truman", "SH-60")
    :SetModex(22)
    :SetHomeBase(AIRBASE:FindByName("CG-66 Hue City"))

heloCSG:Start()

]]
env.info( "*** CSG8 *** Carrier Unit Spawning --- Completed" )

end