function onCreate()
-- sprites
	makeLuaSprite('bg','questioning',-1200, -700)

	setScrollFactor('bg', 1, 1);

	addGlitchEffect('bg', 2, 5, 0.1)


--settings
	addLuaSprite('bg',false)
	scaleObject('bg',1.5,1.5)

end

