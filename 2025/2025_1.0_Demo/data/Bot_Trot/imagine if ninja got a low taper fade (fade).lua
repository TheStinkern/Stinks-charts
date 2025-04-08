function onCreate()
	--debugPrint('fucker')
	makeLuaSprite('i fucking hate', image, -500, -500)
	makeGraphic('i fucking hate', 3000, 3000, '000000')
	setProperty('i fucking hate.alpha', 0)
	addLuaSprite('i fucking hate', true)
	setObjectCamera('i fucking hate', 'camGame')
	makeLuaSprite('i fucking hate-white', image, -500, -500)
	makeGraphic('i fucking hate-white', 3000, 3000, 'FFFFFF')
	setProperty('i fucking hate-white.alpha', 0)
	addLuaSprite('i fucking hate-white', true)
	setObjectCamera('i fucking hate-white', 'camGame')
end

function onStepHit()
-- place the holder
end