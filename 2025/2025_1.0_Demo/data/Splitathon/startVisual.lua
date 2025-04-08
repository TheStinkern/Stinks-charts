
function onCreatePost()
	makeLuaSprite('fadebg', image, -500, -500)
	makeGraphic('fadebg', 30000, 30000, '000000')
	setProperty('fadebg.alpha', 1)
	addLuaSprite('fadebg', false)
	doTweenAlpha('bf', 'boyfriend', 0, 0.01)
	doTweenAlpha('gf', 'gf', 0, 0.01)
	doTweenAlpha('daddfgsgdfsdfgs', 'dad', 0, 0.01)
	doTweenZoom('camZoom', 'camGame', 1, 0.01)
	doTweenAlpha('bambi', 'bambi1', 0, 0.01)
	setObjectOrder('fadebg', 14)	
end

function onSongStart()
	doTweenAlpha('fadebg', 'fadebg', 0.8, 14.76)
	doTweenColor('bf', 'boyfriend', '878787', 14.76)
	doTweenColor('dad', 'dad', '878787', 14.76)
	doTweenColor('gf', 'fakeGF', '878787', 14.76)
	doTweenColor('bammnbbs', 'bambi', '878787', 14.76, 'linear')
	doTweenZoom('camZoom', 'camGame', 0.8, 14.76)
end
function onStepHit()
	if curStep == 128 then
		doTweenAlpha('fadebg', 'fadebg', 0, 0.01)
	end
end
