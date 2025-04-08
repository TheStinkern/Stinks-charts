function onBeatHit()
	if curBeat %1 <= 0 and curBeat >= 64 and curBeat <= 128 then
		setPropertyFromGroup('opponentStrums', 0, 'angle', 25)
		setPropertyFromGroup('opponentStrums', 1, 'angle', -25)
		setPropertyFromGroup('opponentStrums', 2, 'angle', 25)
		setPropertyFromGroup('opponentStrums', 3, 'angle', -25)	
		noteTweenAngle('yegfgfa', 4, -25, 0.001, 'quartOut')
		noteTweenAngle('yedfggdfsaa', 5, 25, 0.001, 'quartOut')
		noteTweenAngle('yefsgdfsaaa', 6, -25, 0.001, 'quartOut')
		noteTweenAngle('yeafgdgfsaaa', 7, 25, 0.001, 'quartOut')		
		runTimer('fart', 0.001, 0)
	end
	if curBeat %2 <= 0 and curBeat >= 64 and curBeat <= 128 then
		setPropertyFromGroup('opponentStrums', 0, 'angle', -25)
		setPropertyFromGroup('opponentStrums', 1, 'angle', 25)
		setPropertyFromGroup('opponentStrums', 2, 'angle',-25)
		setPropertyFromGroup('opponentStrums', 3, 'angle', 25)		
		noteTweenAngle('yegfgfa', 4, 25, 0.001, 'quartOut')
		noteTweenAngle('yedfggdfsaa', 5, -25, 0.001, 'quartOut')
		noteTweenAngle('yefsgdfsaaa', 6, 25, 0.001, 'quartOut')
		noteTweenAngle('yeafgdgfsaaa', 7, -25, 0.001, 'quartOut')
		runTimer('fart', 0.002, 0)
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'fart' then
		noteTweenAngle('yea', 0, 1, 0.5, 'quartOut')
		noteTweenAngle('yeaa', 1, 1, 0.5, 'quartOut')
		noteTweenAngle('yeaaa', 2, 1, 0.5, 'quartOut')
		noteTweenAngle('yeaaaa', 3, 1, 0.5, 'quartOut')
		noteTweenAngle('yefgdgfgfa', 4, 1, 0.5, 'quartOut')
		noteTweenAngle('yefdgdfgdfggdfsaa', 5, 1, 0.5, 'quartOut')
		noteTweenAngle('gdfdfgdfg', 6, 1, 0.5, 'quartOut')
		noteTweenAngle('yegdfdfgafgddfggfsaaa', 7, 1, 0.5, 'quartOut')
	end
end	