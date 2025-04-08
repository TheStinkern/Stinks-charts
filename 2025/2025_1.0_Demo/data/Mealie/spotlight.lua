--[[
function onCreate()
	dadPosX = (getProperty('dad.x') - 93)
	bfPosX = (getProperty('boyfriend.x') - 37)
	makeLuaSprite('spotLightDarkness', image, -5000, -5000)
	makeGraphic('spotLightDarkness', 300000, 300000, '000000')
	setProperty('spotLightDarkness.alpha', 0)
	addLuaSprite('spotLightDarkness', false)
	setObjectCamera('spotLightDarkness', 'camGame')
	makeLuaSprite('spotlight', 'stagespotlight/spotLight', dadPosX,0)
	scaleObject('spotlight', 0.75, 0.75)
	addLuaSprite('spotlight', true)
end

function onCreatePost()
	setProperty('spotlight.alpha', 0)
end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
		doTweenX('MoveSpotlight', 'spotlight', bfPosX, 0.8, 'expoOut')
	elseif focus == 'dad' then
		doTweenX('MoveSpotlightAgain', 'spotlight', dadPosX, 0.8, 'expoOut')	
	end
end

function onSongStart()
	doTweenAngle('TiltSpotlight', 'spotlight', 2, 3, 'expotInOut')
	runTimer('wait', 2)
end

function onTimerCompleted(tag)
	if tag == 'wait' then
		doTweenAngle('TiltSpotlight', 'spotlight', -3, 1, 'expotInOut')

		runTimer('waitAgain', 2)
	end
	if tag == 'waitAgain' then
		doTweenAngle('TiltSpotlight', 'spotlight', 3, 1, 'expotInOut')
		runTimer('wait', 2)
	end
end

function onBeatHit()
	if curBeat == 160 or curBeat == 232 then
		doTweenAlpha('yaeh', 'spotLightDarkness', 0.4, 1, 'expoOut')
		doTweenAlpha('helloSpotlight', 'spotlight', 0.7, 1, 'expoOut')
		
	end
	if curBeat == 224 or curBeat == 328 then
		doTweenAlpha('yeah', 'spotLightDarkness', 0, 1, 'expoOut')
		doTweenAlpha('byeSpotlight', 'spotlight', 0, 1, 'expoOut')
	end
end]]

-- scrapped because of the time change script