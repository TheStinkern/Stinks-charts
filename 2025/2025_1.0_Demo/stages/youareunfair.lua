function onCreate()
	makeLuaSprite('scaryBG','Expunged/scaryBG',-700, -500)
	addGlitchEffect('scaryBG', 2, 5, 0.1)
	
	addLuaSprite('scaryBG',false)
	scaleObject('scaryBG',3,3)

	setScrollFactor('scaryBG', 1, 1);

    setProperty('boyfriend.color', getColorFromHex('878787'))
    setProperty('gf.color', getColorFromHex('878787'))
	
	if songName == 'Unfairness' then
		-- penis
	else
		doTweenColor('dad', 'dad', '878787', 0.01)
	end
	
end
