
function onCreate()
	setProperty('dad.alpha', 0)
	setProperty('boyfriend.alpha', 0)
	setProperty('redTunnel.alpha', 0)
end

function onStepHit()
	if curStep == 1 then
		setProperty('dad.alpha', 1)	
	end
	if curStep == 32 then
		doTweenAlpha('boyfriendAlpha', 'boyfriend', 1, 1, 'quartOut')
	end
	if curStep == 60 then
		doTweenAlpha('bgAlpha', 'redTunnel', 0.5, 0.3)
	end
	if curStep == 64 then
		doTweenAlpha('bgAlpha', 'redTunnel', 1, 0.01)
	end
end