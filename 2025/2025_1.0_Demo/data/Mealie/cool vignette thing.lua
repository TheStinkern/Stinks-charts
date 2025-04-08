function onCreatePost()
	makeLuaSprite('vignette', 'vignette', 0, 0)
	setObjectCamera('vignette', 'camHud')
	addLuaSprite('vignette', true)
	setObjectOrder('vignette', 3)
	setProperty('vignette.alpha', 0)
end

function onMoveCamera(focus)
	if focus == 'boyfriend' and curBeat >= 232 and curBeat < 328 then
		doTweenAlpha('hello vignette', 'vignette', 0.6, 0.2, 'linear')
	elseif focus == 'dad' then
		doTweenAlpha('bye bye vignette, again', 'vignette', 0, 0.2, 'linear')
	end
end

		