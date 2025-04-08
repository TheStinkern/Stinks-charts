debugMode = false

-- see that thing right there above this text? if you set the true function to false, the script will (technicaly) ignore everything except that.
function onCreatePost()
	font = 'vcr.ttf'
	bounce_intensity = 1.3 -- set the value to 1 to make it not bounce
	showcaseMode = getPropertyFromClass('ClientPrefs', 'showcaseMode')
	if showcaseMode == false then
		if debugMode == true then
			addLuaText('watermark');
			luaDebugMode = true;
			----------------------------------------------
			makeLuaText('curBeat', "cur beat: NULL", 0, 423.5, -40);
			addLuaText('curBeat')
			----------------------------------------------
			makeLuaText('curStep', "cur step: NULL", 0, 823.5, -40);
			addLuaText('curStep')
			----------------------------------------------
			makeLuaText('botplayTxt', "Botplay: disabled", 0, 0, -40);
			addLuaText('botplayTxt')
		end
	
-----------------------settings-----------------------

		if botPlay then
			setTextString('botplayTxt', 'Botplay: enabled')			
		end
	
		screenCenter('botplayTxt', 'x')
		setTextFont('curBeat', font)
		setTextFont('botplayTxt', font)
		setObjectCamera('curBeat', 'camOther')
		setObjectCamera('curStep', 'camOther')
		setObjectCamera('botplayTxt', 'camOther')
		setTextFont('curStep', font)
		setTextAlignment('curBeat', 'right')
		setTextFont('botplayTxt', font)
		setTextAlignment('botplayTxt', 'center')	
	end
end

function onSongStart()
	if showcaseMode == false then
		if debugMode == true then -- failsafe, don't delete
			doTweenY('hello1', 'curBeat', 0, 1, 'backOut')
			doTweenY('hello2', 'curStep', 0, 1.3, 'backOut')
			doTweenY('hello3', 'botplayTxt', 0, 1.6, 'backOut')
		end
	end
end
function onBeatHit()
	setTextString('curBeat', 'cur beat: ' .. curBeat)
	setTextAlignment('curBeat', 'right')
	doTweenX('bounceA1', 'curBeat.scale', bounce_intensity, 0.001)
end

function onStepHit()
	setTextString('curStep', 'cur step: ' .. curStep)
	if curStep %2 == 0 then
		doTweenX('bounceB1', 'curStep.scale', (bounce_intensity - 0.05), 0.001) -- preventing te text from having a fucking seizure
	end
end

function onTweenCompleted(tag)
	if tag == 'bounceA1' then
		doTweenX('bounceA2', 'curBeat.scale', 1, 1, 'expoOut')
	end
	
	if tag == 'bounceB1' then
		doTweenX('bounceB2', 'curStep.scale', 1, 1, 'expoOut')
	end

end

function onResume()
	if showcaseMode == false then
		if botPlay then
			setTextString('botplayTxt', 'Botplay: enabled')			
		else
			setTextString('botplayTxt', 'Botplay: disabled')		
		end
	end
end

-- did this because of js engine not working correctly for me
function onUpdatePost(elapsed)
	if debugMode == true then
	
		if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.TWO') then
		--[[
			if getPropertyFromClass('flixel.FlxG', 'mouse.visible') == false then
			]]
				setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
			--[[	
			elseif getPropertyFromClass('flixel.FlxG', 'mouse.visible') == true then
			
				setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)
				
			end]]
			
		end
		
	end
	
end