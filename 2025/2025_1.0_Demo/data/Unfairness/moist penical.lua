
function onCreate()
	makeLuaSprite('i fucking hate', image, -500, -500)
	makeGraphic('i fucking hate', 3000, 3000, '000000')
	setProperty('i fucking hate.alpha', 1)
	addLuaSprite('i fucking hate', true)
	setObjectCamera('i fucking hate', 'camGame')
	makeLuaSprite('i fucking hate-bg', image, -500, -500)
	makeGraphic('i fucking hate-bg', 3000, 3000, '000000')
	setProperty('i fucking hate-bg.alpha', 0)
	addLuaSprite('i fucking hate-bg', false)
	setObjectCamera('i fucking hate-bg', 'camGame')
end

function onStepHit()
	if curStep == 1632 then
		doTweenAlpha('fade', 'i fucking hate-bg', 1, 4.84, 'linear')
		doTweenAlpha('fadeBF', 'boyfriend', 0, 4.84, 'linear')
		doTweenAlpha('fadeGF', 'gf', 0, 4.84, 'linear')
		doTweenZoom('camGame', 'camGame', 1.3, 4.84, 'linear')
	end
	if curStep == 1728 then
		doTweenAlpha('fade2', 'i fucking hate-bg', 0, 1, 'expoOut')
		doTweenColor('woahhh2', 'boyfriend', '878787', 1, 'expoOut')
		doTweenColor('woahhh3', 'gf', '878787', 1, 'expoOut')

	end
end 