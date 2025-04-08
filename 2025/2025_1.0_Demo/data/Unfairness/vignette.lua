function onCreate()
	makeLuaSprite('vignette', 'vignette', 0, 0)
	setProperty('vignette.alpha', 0)
	addLuaSprite('vignette', true)
	setObjectCamera('vignette', 'camHud')
	setObjectOrder('vignette', 1)
end

function onStepHit()
	if curStep == 560 then
		doTweenAlpha('tweenVignette', 'vignette', 0.25, 0.6, 'expoOut')
	end
	if curStep == 566 then
		doTweenAlpha('tweenVignette', 'vignette', 0.5, 0.6, 'expoOut')
	end
	if curStep == 572 then
		doTweenAlpha('tweenVignette', 'vignette', 1, 0.6, 'expoOut')
	end
	if curStep == 576 then
		doTweenAlpha('tweenVignette', 'vignette', 0, 0.6, 'expoOut')
	end
	if curStep == 832 then
		doTweenAlpha('tweenVignette', 'vignette', 1, 0.6, 'linear')
	end
	if curStep == 944 then
		doTweenAlpha('tweenVignette', 'vignette', 0.3, 0.3, 'expoOut')
	end
	if curStep == 960 then
		doTweenAlpha('tweenVignette', 'vignette', 1, 0.3, 'expoOut')
	end
end