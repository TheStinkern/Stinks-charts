function onCreatePost()	
	makeLuaSprite('Shader')
    makeGraphic('Shader', screenWidth, screenHeight)

    
    setSpriteShader('Shader', 'glither')
-- jordan santiago made this part of code

end

function onSongStart()
--[[
	if botPlay then
		triggerEvent('Windows notification', '[DATA EXPUNGED]', 'Forced off botplay, nice try...')
		setProperty('cpuControlled', false)
		triggerEvent('Screen Shake', '0.1, 0.05', '0.1, 0.05')
	end]]
end

function onPause()
	cameraFade('camGame', '000000', 0.001, true)
	function onUpdatePost(elapsed)
		setShaderFloat('Shader', 'iTime', getSongPosition()/500)
	end
	runHaxeCode([[
		game.camGame.setFilters([new ShaderFilter(game.getLuaObject('Shader').shader)]);
		game.camHUD.setFilters([new ShaderFilter(game.getLuaObject('Shader').shader)]);
		game.camOther.setFilters([new ShaderFilter(game.getLuaObject('Shader').shader)]);
	]])
end


function onResume()
--[[
	if botPlay then
		triggerEvent('Windows notification', '[DATA EXPUNGED]', 'Forced off botplay, nice try...')
		setProperty('cpuControlled', false)
		triggerEvent('Screen Shake', '0.1, 0.05', '0.1, 0.05')
	end]]
	clearEffects('camGame')
	clearEffects('camHUD')
	clearEffects('camOther')
	cameraFade('camGame', '000000', 0.001, true, true)
end

