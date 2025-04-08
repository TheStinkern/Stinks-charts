function onCreate()
	--debugPrint('fucker')
	makeLuaSprite('vignette', 'vignette', 0, 0)
	setProperty('vignette.alpha', 0)
	addLuaSprite('vignette', true)
	setObjectCamera('vignette', 'camHud')
	setObjectOrder('vignette', 1)
end

function onStepHit()
	if curStep == 2592 then
		doTweenAlpha('vignettesadfasdafds', 'vignette', 0.5, 6, 'linear')
	end

	if curStep == 2719 then
		doTweenAlpha('vignettesadfasdafds', 'vignette', 0.75, 2, 'quartOut')
	end

	if curStep == 2976 then
		doTweenAlpha('vignettesadfasdafds', 'vignette', 1, 2, 'quartOut')
	end

	if curStep == 3232 then
		doTweenAlpha('vignettesadfasdafds2', 'vignette', 0.4, 4, 'linear')
	end
end