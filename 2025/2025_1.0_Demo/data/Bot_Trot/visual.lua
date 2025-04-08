function onStepHit()
	if curStep == 1843 then

		doTweenAlpha('bye gf', 'gf', 0, 43.24, 'linear')
		doTweenAlpha('bye opponent', 'dad', 0, 43.24, 'linear')
		doTweenAlpha('bye bg4', 'bedroom/tv', 0, 43.24, 'linear')
		doTweenAlpha('bye bg3', 'bedroom/bed', 0, 43.24, 'linear')
		doTweenAlpha('bye bg2', 'bedroom/bg', 0, 43.24, 'linear')
		doTweenAlpha('bye bg', 'bedroom/sky', 0, 43.24, 'linear')
		--doTweenZoom('thingythingthing', 'camHUD', 1.1, 43.26, 'linear')
	end

	if curStep == 1844 then
		setProperty('Tristan2.alpha', 1)
		setProperty('Tristan.alpha', 0)
		doTweenAlpha('bye tristan', 'Tristan2', 0, 43.24, 'linear')
	end

end

function onCreatePost()
	makeLuaSprite("glitchLens")
  makeGraphic("glitchLens", screenWidth, screenHeight)
	initLuaShader("chromlensthing")
    
  setSpriteShader("glitchLens", "chromlensthing")
end

function onUpdatePost(elapsed)
	if curBeat == 416 or curBeat == 461 then
		runHaxeCode([[
			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("glitchLens").shader)]);
			game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("glitchLens").shader)]);
		]])
	end

	if curBeat == 456 or curBeat == 581 then
		clearEffects('camHud')
		clearEffects('camGame')
	end
end