function onCreate()
-- sprites
	makeLuaSprite('redsky','redsky',-1750, -900)

	addGlitchEffect('redsky', 1.5,4)

--settings
	addLuaSprite('redsky',false)
	scaleObject('redsky',2,2)


-- non stage things
 	function onUpdate(elapsed)    if curStep == 0 then

        started = true

	    end

	songPos = getSongPosition()

	local currentBeat = (songPos/5000)*(curBpm/60)

	doTweenY('opponentmove', 'dad', -100 - 100*math.sin((currentBeat+12*12)*math.pi), 2)

	doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

	end

end
