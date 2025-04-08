function onCreatePost()
	luaDebugMode = true;
	composer = 'Sky!'
	visuals = 'Lancey'
	
	makeLuaSprite('Heading', 'black', -600, 0)
	setObjectCamera('Heading', 'camHud')
	addLuaSprite('Heading', true)
	setObjectOrder('Heading', 8)
	scaleObject('Heading', 0.06, screenHeight)
	setProperty('Heading.alpha', 0.35)
	makeLuaText('credits', 'Song by ' .. composer .. '\n' .. '\nVisuals by ' .. visuals, getProperty('Heading.width'), 0, 0);
	setTextSize('credits', 30)
	addLuaText('credits');
	setProperty('credits.x', -600)
	setObjectCamera('credits', 'camHud')
	setObjectOrder('credits', 10)
	setTextAlignment('credits', 'center')
	setTextBorder('credits', 0, '000000')
end

function onSongStart()
	runTimer('creditPopUp', 0.01)

end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'creditPopUp' then
		doTweenX('TweenInHeading', 'Heading', 0, 1, 'backOut')
		doTweenX('TweenInCredit', 'credits', 0, 1, 'backOut')
		runTimer('wait', 3)
	end
	if tag == 'wait' then
		doTweenX('TweenOutHeading', 'Heading', -600, 1, 'backIn')
		doTweenX('TweenInCredit', 'credits',-600, 1, 'backIn')
	end
end

