function onCreate()
	makeLuaSprite('Expunged/cheater','Expunged/cheater',-1200, -700)
	makeLuaSprite('Expunged/cheater2','Expunged/cheater2',-1200, -700)
	setScrollFactor('Expunged/cheater', 1, 1);
	setScrollFactor('Expunged/cheater2', 1, 1);
	
	addGlitchEffect('Expunged/cheater', 2, 5, 0.1)
	addGlitchEffect('Expunged/cheater2', 2, 5, 0.1)

--settings
	addLuaSprite('Expunged/cheater',false)
	scaleObject('Expunged/cheater',1.5,1.5)
	addLuaSprite('Expunged/cheater2',false)
	scaleObject('Expunged/cheater2',1.5,1.5)
	setProperty('Expunged/cheater2.alpha', 0)
end
