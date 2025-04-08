function onCreate()
	makeLuaSprite('scaryBG','Expunged/op',-2000, -1000)
	addGlitchEffect('scaryBG', 2, 5, 0.1)
	
	addLuaSprite('scaryBG',false)

	setScrollFactor('scaryBG', 1, 1);
end