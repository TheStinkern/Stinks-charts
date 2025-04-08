function onCreate()
    makeAnimatedLuaSprite('dave', 'characters/Dave/Splitathon_Dave', -0, 400)
    addAnimationByPrefix('dave', 'bruh', 'bruh0', 24, true)
    objectPlayAnimation('dave', 'bruh', true)
	setScrollFactor('dave', 1,1);
    addLuaSprite('dave', true)
	setProperty('dave.visible', false)
	setObjectOrder('dave', 16)
	doTweenColor('darkenD1', 'dave', '878787', 0.01)
    addAnimationByPrefix('dave', 'happy', 'happy0', 24, true)
    --objectPlayAnimation('dave', 'happy', true)

    makeAnimatedLuaSprite('bambi', 'characters/Bambi/Splitathon_Bambi', 100, 600)
    addAnimationByPrefix('bambi', 'corn', 'splitathon corn', 24, true)
    objectPlayAnimation('bambi', 'corn', true)
	setScrollFactor('bambi', 1,1);
    addLuaSprite('bambi', true)
	setObjectOrder('bambi',16)
	setProperty('bambi.visible', true)
	setProperty('bambi.alpha', 0)
	--doTweenColor('darkenB1', 'bambi', '878787', 0.01)
    addAnimationByPrefix('bambi2', 'confused', 'splitathon idle 2', 24, true)

end

function onSectionHit()
	if curSection == 63 then
		setProperty('dave.visible', true)

		setProperty('bambi.visible', false)
	end
	
	if curSection == 93 then
		objectPlayAnimation('dave', 'happy', true)
	end
	
	if curSection == 95 then
		objectPlayAnimation('bambi', 'confused', true)
		setProperty('bambi.visible', true)
		setProperty('dave.visible', false)
	end
	
	if curSection == 112 then
		setProperty('gf.alpha', 1)
		setProperty('gf.visible', true)
		setProperty('bambi.visible', false)
	end
	
	if curSection == 120 then
		setProperty('gf.visible', false)
		objectPlayAnimation('bambi', 'corn', true)
		setProperty('bambi.visible', true)
	end
end

function onEvent(name, value1, value2)
	if name == 'Change Character' then
		doTweenColor('ghiudfsigoud', 'dad', '878787', 0.001)	
	end
end

