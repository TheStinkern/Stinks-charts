--noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String)
--above is just notes
--also, if you want to use this script im fine with it

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
	setProperty('camHUD.visible', false)
end
function onSongStart()
	setProperty('i fucking hate.alpha', 0)
end
function onStepHit()
	if curStep == 128 then
		cameraFlash('camHUD', 'FFFFFF', 1)
		setProperty('camHUD.visible', true)
	end
	if curStep == 3744 then
		noteTweenAlpha('dadStrum', 0, 0, 2, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0,2, 'linear')
		noteTweenAlpha('dadStrum2',2, 0, 2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 2, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 5, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 5, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 5, 'linear')
	end
	if curStep == 4000 then
		cameraFade('game', '000000', 0.01, true)
	end
	if curStep == 4032 then
		cameraFade('game', '000000', 4, true, true)
	end
	if curStep == 4096 then
		noteTweenAlpha('dadStrum', 0, 1, 0.7, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 0.7, 'linear')
		noteTweenAlpha('dadStrum2',2, 1, 0.7, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 0.7, 'linear')
		noteTweenAlpha('bfStrum', 4, 1, 0.7, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 0.7, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 0.7, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 0.7, 'linear')
	end
end 