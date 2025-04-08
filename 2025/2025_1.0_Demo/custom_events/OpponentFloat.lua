local isActive = false

function onEvent(name, value1, value2)
    if name == "OpponentFloat" then
        --toggles the active state (on <-> off)
        isActive = not isActive
		
	function onUpdate(elapsed)
		fr = fr + elapsed;
			 currentBeat = (getSongPosition()/4000)*(curBpm/60)
			if modchart then
				noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
				noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 350 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
				noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
				noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 350 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
		
				noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
				noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 350 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
				noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
				noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 350 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 3)
        		end
end
   