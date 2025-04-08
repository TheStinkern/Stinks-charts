function onStartCountdown()
	setProperty('introSoundsSuffix', '-bambi')
end

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
	setShaderFloat('dad', 'iTime', getSongPosition()/1000)
	setShaderFloat('Shader2', 'iTime', getSongPosition()/1000)
end

function onStepHit()
	if curStep == 576 or curStep == 768 or curStep == 1170 or curStep == 1174 or curStep == 1440 or curStep == 1567 or curStep == 1632 or curStep == 1928 or curStep == 1952 or curStep == 2756 or curStep == 2820 then
		clearEffects('camHud')
		clearEffects('camGame')
	end
	
	if curStep == 566 or curStep == 744 or curStep == 1168 or curStep == 1172 or curStep == 1436 or curStep == 1536 or curStep == 1600 or curStep == 1920 or curStep == 1944 or curStep == 2752 or curStep == 2816 then -- blocked glitch effect
		runHaxeCode([[
				game.camGame.setFilters([new ShaderFilter(game.getLuaObject('Shader2').shader)]);
				game.camHUD.setFilters([new ShaderFilter(game.getLuaObject('Shader2').shader)]);
		]])
	end
	
	if curStep == 3475 then
		setSpriteShader('dad', 'glither')
	end
	
	if curStep == 3488 then
		clearEffects('dad')
	end
end