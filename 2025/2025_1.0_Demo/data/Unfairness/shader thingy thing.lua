function onUpdatePost(elapsed)
	setShaderFloat('temporaryShader', 'iTime', getSongPosition()/40000)
end

function onCreatePost()
    --luaDebugMode = true;
	makeLuaSprite("temporaryShader")
    makeGraphic("temporaryShader", screenWidth, screenHeight)

    
    setSpriteShader("temporaryShader", "glither")

-- jordan santiago made this part of code


end

function onBeatHit()
	if curBeat == 128 then
		runHaxeCode([[
			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
			game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
		]])	
	end
	if curBeat == 144 then
		clearEffects('camGame')
		clearEffects('camHUD')
	end
end