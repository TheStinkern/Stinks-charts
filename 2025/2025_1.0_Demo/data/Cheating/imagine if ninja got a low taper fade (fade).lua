function onCreate()
	makeLuaSprite('i fucking hate', image, -5000, -5000)
	makeGraphic('i fucking hate', 300000, 300000, '000000')
	setProperty('i fucking hate.alpha', 0)
	addLuaSprite('i fucking hate', true)
	setObjectCamera('i fucking hate', 'camGame')
	makeLuaSprite('i fucking hate-bg', image, -5000, -5000)
	makeGraphic('i fucking hate-bg', 300000, 300000, '000000')
	setProperty('i fucking hate-bg.alpha', 0)
	addLuaSprite('i fucking hate-bg', false)
	setObjectCamera('i fucking hate-bg', 'camGame')
	setProperty('camZooming', false)
end

function onUpdate()
	if curBeat == 584 then
		cameraFade('game', '000000', 5.33, true, false) -- fade in
	end

	if curBeat == 616 then
		doTweenAlpha('fade', 'i fucking hate-bg', 0, 19)
		cameraFade('game', '000000', 0.01, true, true) -- fade in
	end
	
	if curBeat == 680 then
		doTweenAlpha('fade', 'i fucking hate', 0.2, 0.01, 'quartOut')
	end
	
	if curBeat == 872 then
		doTweenAlpha('fade', 'i fucking hate', 1, 7, 'quartOut')
	end
	if curStep == 250 then
		cameraFade('game', 'FFFFFF', 0.48, true, false) -- fade in
	end
	if curStep == 256 then
		cameraFade('game', 'FFFFFF', 2, true, true) -- fade oout
	end
	if curStep == 1956 then
		cameraFade('game', '000000', 3, true, false)
	end
	if curStep == 2060 then
		doTweenAlpha('bg2', 'Expunged/cheater2', 1, 0.01)
		doTweenAlpha('bg1', 'Expunged/cheater', 0, 0.01)
		cameraFade('game', '000000', 7, true, true)
	end
	if curStep == 2714 then
		cameraFade('game', 'FFFFFF', 0.49, true, false)
	end
	if curStep == 2720 then
		cameraFade('game', 'FFFFFF', 2, true, true)
	end	
	if curStep == 2463 then
		doTweenAlpha('fadebg', 'i fucking hate-bg', 1, 0.01, 'linear')
	end
end

function onStepHit()
	if curStep == 2464 then
		doTweenZoom('zoom', 'game', 1, 21.33, 'linear')
	end
end