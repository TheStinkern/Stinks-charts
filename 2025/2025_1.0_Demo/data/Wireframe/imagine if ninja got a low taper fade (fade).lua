function onCreatePost()
	--debugPrint('fucker')
	makeLuaSprite('fadewhite', image, -700, -700)
	makeGraphic('fadewhite', 3000, 3000, 'FFFFFF')
	setProperty('fadewhite.alpha', 0)
	addLuaSprite('fadewhite', true)
	setObjectCamera('fadewhite', 'camGame')	
	
	makeLuaSprite('i fucking hate', image, -700, -500)
	makeGraphic('i fucking hate', 30000, 30000, '000ff0')
	setProperty('i fucking hate.alpha', 0)
	addLuaSprite('i fucking hate', true)
	setObjectCamera('i fucking hate', 'camGame')
	setScrollFactor('i fucking hate', 'camHud');
	
	makeLuaSprite('i fucking hate-bg', image, -700, -500)
	makeGraphic('i fucking hate-bg', 30000, 30000, '000000')
	setProperty('i fucking hate-bg.alpha', 0)
	addLuaSprite('i fucking hate-bg', false)
	setObjectCamera('i fucking hate-bg', 'camGame')
	setScrollFactor('i fucking hate-bg', 'camHud');
end

function onStepHit()
	if curStep == 1 then -- notes fade out
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	if curStep == 64 then -- notes fade out
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end
	if curStep == 2672 then
		doTweenAlpha('fadewhite', 'fadewhite', 1, 10.43)
	end
	if curStep == 2800 then
		doTweenAlpha('fadeEnding', 'i fucking hate', 1, 5)
	end
end