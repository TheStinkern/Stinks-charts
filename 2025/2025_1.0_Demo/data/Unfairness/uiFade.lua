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
end
function onSongStart()
		setProperty('i fucking hate.alpha', 0)
end
function onCreatePost()
	doTweenAlpha('fadeUi', 'healthBar', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi2', 'healthBarBG', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi3', 'iconP1', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi4', 'iconP2', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi5', 'scoreTxt', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi8', 'energyBarBG', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi9', 'energyBar', 0, 0.01, 'linear')	
	doTweenAlpha('fadeUi10', 'energyTxt', 0, 0.01, 'linear')		
	doTweenAlpha('fadeUi10', 'timeTxt', 0, 0.01, 'linear')	
end
function onStepHit()
	if curStep == 1 then -- notes fade out
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end

	if curStep == 256 then -- notes fade out
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 1, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 1, 'linear')
		doTweenAlpha('fadeUi', 'healthBar', 1, 1, 'linear')
		doTweenAlpha('fadeUi2', 'healthBarBG', 1, 1, 'linear')
		doTweenAlpha('fadeUi3', 'iconP1', 1, 1, 'linear')
		doTweenAlpha('fadeUi4', 'iconP2', 1, 1, 'linear')
		doTweenAlpha('fadeUi5', 'scoreTxt', 1, 1, 'linear')
		doTweenAlpha('fadeUi6', 'timeBarBG', 1, 1, 'linear')	
		doTweenAlpha('fadeUi7', 'timeBar', 1, 1, 'linear')
		doTweenAlpha('fadeUi8', 'energyBarBG', 1, 1, 'linear')
		doTweenAlpha('fadeUi9', 'energyBar', 1, 1, 'linear')	
		doTweenAlpha('fadeUi10', 'energyTxt', 1, 1, 'linear')		
		doTweenAlpha('fadeUi10', 'timeTxt', 1, 1, 'linear')	
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end

	if curStep == 1472 then -- notes fade out
		noteTweenAlpha('bfStrum', 4, 0, 6, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 6, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 6, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 6, 'linear')
		noteTweenAlpha('dadStrum', 0, 0, 4, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 4, 'linear')
		noteTweenAlpha('dadStrum2',2, 0, 4, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 4, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 1728 then -- notes fade in
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
		noteTweenAlpha('dadStrum', 0, 1, 0.5, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 0.5, 'linear')
		noteTweenAlpha('dadStrum2',2, 1, 0.5, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 0.5, 'linear')
		noteTweenAlpha('bfStrum', 4, 1, 0.5, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 0.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 0.5, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 0.5, 'linear')
	end

	if curStep == 1024 then
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 1, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 1, 'linear')
	end
	
	if curStep == 2239 then
		noteTweenAlpha('bfStrum', 4, 0, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 1, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0,1, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 1, 'linear')
		noteTweenAlpha('dadStrum', 0, 0, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0,1, 'linear')
		noteTweenAlpha('dadStrum2',2, 0, 1, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 1, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end

	if curStep == 2367 then
		doTweenAlpha('fade', 'i fucking hate', 0, 0.5, 'linear')
	end
	
	if curStep == 2367 then
		noteTweenAlpha('bfStrum', 4, 1, 1, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 1, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 1, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 1, 'linear')
		noteTweenAlpha('dadStrum', 0, 1, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 1, 'linear')
		noteTweenAlpha('dadStrum2',2, 1, 1, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 1, 'linear')
	end
	
	if curStep == 2879 then
		noteTweenAlpha('bfStrum', 4, 0, 5.33, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 5.33, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 5.33, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 5.33, 'linear')
		noteTweenAlpha('dadStrum', 0, 0, 1, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 1, 'linear')
		noteTweenAlpha('dadStrum2',2, 0, 1, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 1, 'linear')
		doTweenAlpha('fade', 'i fucking hate', 0.3, 0.5, 'linear')
	end
	
	if curStep == 3008 then
		doTweenAlpha('fade', 'i fucking hate-bg', 1, 9.14, 'linear')
	end
end 