function onCreatePost()
    makeAnimatedLuaSprite('explosion', 'explosion', -600, -300)
    addAnimationByPrefix('explosion', 'idle', 'Explosion boom', 10, false)
    objectPlayAnimation('explosion', 'idle', true)
	scaleObject('explosion',27,27)
	setProperty('explosion.alpha', 0)
    addLuaSprite('explosion', true)
	screenCenter('explosion', 'xy')
	setObjectCamera('explosion', 'camHUD')
end

function onStepHit()
	if curStep == 832 then
		doTweenAlpha('scaryBGAlpha', 'scaryBG', 0.4, 0.5, 'quartOut')
		doTweenColor('dadColor', 'dad', 'CC8888', 0.01, 'sineOut')
		doTweenColor('bfColor', 'boyfriend', 'CC7777', 0.01, 'sineOut')
	end
	if curStep == 1088 then
		--doTweenAlpha('explosionAlpha', 'explosion', 1, 0.01, 'quartOut')
		setProperty('scaryBG.alpha',0)
		doTweenColor('dadColor', 'dad', 'FFFFFF', 0.01, 'sineOut')
		doTweenColor('bfColor', 'boyfriend', 'FFFFFF', 0.01, 'sineOut')
	end
	if curStep == 2152 then
		setProperty('explosion.alpha', 1)	
		objectPlayAnimation('explosion', 'idle', true)
	end
	if curStep == 2160 then
		setProperty('explosion.alpha', 0)	
	end
end

