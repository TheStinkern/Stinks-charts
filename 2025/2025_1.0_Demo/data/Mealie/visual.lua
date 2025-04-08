function onCreatePost()

	--debugPrint('gf X Pos' .. getProperty('gf.x') .. '')
	makeLuaSprite('Shader1')
    makeGraphic('Shader1', screenWidth, screenHeight)

    
    setSpriteShader('Shader1', 'chromlensthing')
	
	makeLuaSprite('Shader2')
    makeGraphic('Shader2', screenWidth, screenHeight)

    
    setSpriteShader('Shader2', 'glither')
-- jordan santiago made this part of code

end

function onUpdate(elapsed)

	setShaderFloat('Shader2', 'iTime', getSongPosition()/1000)
	
	if curBeat == 488 then
		setProperty('camGame.alpha', 0)
		doTweenAlpha('camGameTween', 'camGame', 0.8, 11.45, 'linear')
	end
	if curBeat == 520 then
		doTweenAlpha('camGameTween1', 'camGame', 1, 0.02, 'linear')
	end
	if curBeat == 360 then
		runHaxeCode([[game.iconP2.changeIcon('daveandbambi')]]);
	end
	if curBeat == 552 then
		runHaxeCode([[game.iconP2.changeIcon('bambi-angey')]]);
		doTweenAlpha('aaaaaa', 'camHUD', 0, 0.55, 'linear')
	end
	if curBeat == 488 then
		runHaxeCode([[
			game.camHUD.setFilters([new ShaderFilter(game.getLuaObject('Shader2').shader)]);
		]])
	end
	if curBeat == 520 then
		clearEffects('camHUD')
	end

end