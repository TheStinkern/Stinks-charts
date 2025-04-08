function onCreate()
	darkVal = 0.85
	lightVal = 0.35
	makeLuaSprite('scaryBG','Expunged/scaryBG',-1200, -500)
	makeLuaSprite('fadeBG','blackscreen',-1200, -500)
	addGlitchEffect('scaryBG', 2, 5, 0.1)
	
	addLuaSprite('scaryBG',false)
	addLuaSprite('fadeBG',false)
	scaleObject('scaryBG',4,4)
	scaleObject('fadeBG',6,6)
	setProperty('fadeBG', 0)
	setProperty('fadeBG.alpha', darkVal)

	setScrollFactor('scaryBG', 1, 1);
	setScrollFactor('fadeBG', 'camHud');

end

function onCreatePost()
	setProperty('fadeBG.alpha', 0.9)
	setProperty('scaryBG.alpha', 0.1)
	doTweenAlpha('nis', 'fadeBG', darkVal, 5, 'quadInOut')
end

function onTweenCompleted(tag)
	if tag == 'pe' then
		doTweenAlpha('nis', 'fadeBG', darkVal, 5, 'quadInOut')
	end
	if tag == 'nis' then
		doTweenAlpha('pe', 'fadeBG', lightVal, 5, 'quadInOut')
	end
end