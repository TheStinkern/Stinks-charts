--noteTweenAlpha(tag:String, note:Int, value:Dynamic, duration:Float, ease:String) - Alpha
--above is just notes
--also, if you want to use this script im fine with it

function onCreate()
	makeLuaSprite('fade', image, -700, -500)
	makeGraphic('fade', 3000, 3000, '000000')
	setProperty('fade.alpha', 0)
	addLuaSprite('fade', true)
	setObjectCamera('fade', 'camGame')
	makeLuaSprite('whitefade', image, -700, -500)
	makeGraphic('whitefade', 3000, 3000, 'FFFFFF')
	setProperty('whitefade.alpha', 0)
	addLuaSprite('whitefade', true)
	setObjectCamera('whitefade', 'camHud')
	makeLuaSprite('startfade', image, -700, -500)
	makeGraphic('startfade', 3000, 3000, '000000')
	setProperty('startfade.alpha', 1)
	addLuaSprite('startfade', true)
	setObjectCamera('startfade', 'camHud')
	--setProperty('Tristan.alpha', 0)
	setProperty('Tristan2.alpha', 0)
	doTweenZoom('yeah', 'camGame', 0.75, 0.01, 'linear')
end

function onSongStart()
	doTweenAlpha('startfade', 'startfade', 0.3, 17.29, 'linear')
	--addBloomEffect('camGame',1,1)
	doTweenZoom('yeah', 'camGame', 0.82, 16.89, 'linear')
		noteTweenAlpha('dadStrum', 0, 0, 12.89, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 12.89, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 12.89, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 12.89, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 12.89, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 12.89, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 12.89, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 12.89, 'linear')
end





function onStepHit()
	if curStep == 124 then
		doTweenAlpha('whitefade', 'whitefade', 0.8, 0.53, 'linear')
	end
	
	if curStep == 128 then
		--clearEffects('camGame')
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 2.5, 'linear')
		noteTweenAlpha('dadStrum', 0, 1, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 1.5, 'linear')
		noteTweenAlpha('dadStrum2', 2, 1, 2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 2.5, 'linear')
		doTweenAlpha('whitefade', 'whitefade', 0, 1, 'linear')
		doTweenAlpha('startfade', 'startfade', 0, 0.01, 'linear')
	end
	
	if curStep == 896 or curStep == 384 then
		setProperty('Tristan.alpha', 1)
		doTweenAlpha('fade', 'fade', 0.5, 0.5, 'linear')
	end
	
	if curStep == 1023 then
		noteTweenAlpha('dadStrum', 0, 0, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 1.5, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 2.5, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 2.5, 'linear')
		doTweenAlpha('fade', 'fade', 0.3, 0.5, 'linear')
	end

	
	if curStep == 1135 then
		noteTweenAlpha('bfStrum', 4, 0.3, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0.3, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0.3, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0.3, 2.5, 'linear')
	end
	
	if curStep == 1400 then
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 2, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 2.5, 'linear')
		noteTweenAlpha('dadStrum', 0, 1, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 1.5, 'linear')
		noteTweenAlpha('dadStrum2', 2, 1, 2, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 2.5, 'linear')
		doTweenAlpha('fade', 'fade', 0, 0.5, 'linear')
	end
	
	if curStep == 1664 then

		--addBloomEffect('camGame',1,1)
		setProperty('Tristan.alpha', 0)
		setProperty('Tristan2.alpha', 1)
		doTweenAlpha('fade', 'fade', 0, 21.62, 'linear')
	end
	
	if curStep == 512 then

		doTweenAlpha('fade', 'fade', 0, 0.5, 'linear')
	end
	
	if curStep == 1824 then
		doTweenAlpha('fade', 'fade', 1, 0.01, 'linear')
		--clearEffects('camGame')
	end
	if curStep == 1825 then
		doTweenAlpha('fade', 'fade', 0.5, 2.60, 'linear')
	end
end

