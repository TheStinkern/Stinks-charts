function onCreate()
	--debugPrint('fucker')
	makeLuaSprite('vignette', 'vignette', 0, 0)
	setProperty('vignette.alpha', 0)
	addLuaSprite('vignette', true)
	setObjectCamera('vignette', 'camHud')
	setObjectOrder('vignette', 1)
end

function onStepHit()
	if curStep == 2 or curStep == 1087 or curStep == 320 or curStep == 576 then
		doTweenAlpha('vignettesadfasdafds', 'vignette', 1, 1, 'quartOut')
	end
	if curStep == 2543 then
		doTweenAlpha('vignettesadfasdafds', 'vignette', 0.5, 10.43, 'linear')
	end
	if curStep == 64 or curStep == 1184 or curStep == 448 or curStep == 831 then
		doTweenAlpha('vignettesadfasdafds', 'vignette', 0, 1, 'quartOut')
	end
end