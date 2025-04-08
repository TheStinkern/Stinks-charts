function onCreate()
	dadPos = 226
	bfPos = 666
	makeLuaSprite('spotLightDarkness', image, -5000, -5000)
	makeGraphic('spotLightDarkness', 300000, 300000, '000000')
	setProperty('spotLightDarkness.alpha', 0)
	addLuaSprite('spotLightDarkness', false)
	setObjectCamera('spotLightDarkness', 'camGame')
	makeLuaSprite('spotlight', 'stagespotlight/spotLight', dadPos,-200)
	addLuaSprite('spotlight', true)
	setObjectOrder('spotlight', 15)
end

function onCreatePost()
	setProperty('spotlight.alpha', 0)
end
function onMoveCamera(focus)
	if focus == 'boyfriend' then
		doTweenX('MoveSpotlight', 'spotlight', bfPos, 1.8, 'expoOut')
	elseif focus == 'dad' then
		doTweenX('MoveSpotlightAgain', 'spotlight', dadPos, 1.8, 'expoOut')	
	end
end

function onSongStart()
	doTweenAngle('TiltSpotlight', 'spotlight', 4, 3, 'expotInOut')
	runTimer('wait', 2)
end

function onTimerCompleted(tag)
	if tag == 'wait' then
		doTweenAngle('TiltSpotlight', 'spotlight', -4, 3, 'expotInOut')
		runTimer('waitAgain', 2)
	end
	if tag == 'waitAgain' then
		doTweenAngle('TiltSpotlight', 'spotlight', 4, 3, 'expotInOut')
		runTimer('wait', 2)
	end
end

function onBeatHit()
	if curBeat == 744 or curBeat == 1216 or curBeat == 1444 then
		doTweenAlpha('yaeh', 'spotLightDarkness', 0.4, 1, 'expoOut')
		doTweenAlpha('helloSpotlight', 'spotlight', 0.7, 1, 'expoOut')

	end

	if curBeat == 776 or curBeat == 1280 or curBeat == 1476 then
		doTweenAlpha('yeah', 'spotLightDarkness', 0, 1, 'expoOut')
		doTweenAlpha('byeSpotlight', 'spotlight', 0, 1, 'expoOut')

	end
end