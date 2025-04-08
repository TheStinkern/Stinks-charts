function onUpdate()
	if curBeat == 561 then
		cameraFade('game', '000000', 4.33, true, false) -- fade in
		doTweenY('adfgsgdfsa', 'camFollow', (getProperty('camFollow.y') - 20), 0.9, 'expoIn')
	end
end

function onTweenCompleted(tag)
	if tag == 'adfgsgdfsa' then
		doTweenY('adfgsgfgddfsa', 'camFollow', (getProperty('camFollow.y') - 270), 4.5)
	end
end