function onCreatePost()
	TextFont = 'comic.ttf';
	fuckYou = false
		force_fps = 'hello'
		force_mem = ''
		force_mem_powerfull = 'RVhQVU5H\nRUQgV0lMT'

	if songName == 'Unfairness' or songName == 'Cheating' or songName == 'Bot_Trot' or songName == 'Recursed' or songName == 'Mealie' or songName == 'Splitathon' then
		DaveEngine = true
		gappleHud = false
	elseif songName == songName == 'Wireframe' or songName == 'Algebra_Diamond_man_Section' then
		gappleHud = true
		DaveEngine = false
	end

	
	if DaveEngine == true and gappleHud == false then
		makeLuaText('fpsTxt', 'NULL', 85, 0, 0)
		setObjectCamera('fpsTxt', 'other')
		runHaxeCode "game.getLuaObject('fpsTxt').setBorderStyle(Type.resolveEnum('flixel.text.FlxTextBorderStyle').NONE);"
		setProperty('fpsTxt.x', 1)
		setProperty('fpsTxt.size', 13)
		addLuaText 'fpsTxt'
		setTextAlignment('fpsTxt', 'left')	
	    for i,lib in pairs{'ClientPrefs', 'Conductor', 'Math', 'Highscore', 'Type', 'Main', 'Note'} do
			addHaxeLibrary(lib)
		end
		addHaxeLibrary('FPS', 'openfl.display')
		addHaxeLibrary('Memory', 'debug')
		addHaxeLibrary('FlxStringUtil', 'flixel.util');
		setTextFont('fpsTxt', TextFont)
	elseif gappleHud == true and DaveEngine == false then
		makeLuaText 'fpsTxt'
		setObjectCamera('fpsTxt', 'other')
		runHaxeCode "game.getLuaObject('fpsTxt').setBorderStyle(Type.resolveEnum('flixel.text.FlxTextBorderStyle').NONE);"
		setProperty('fpsTxt.x', 10)
		setProperty('fpsTxt.y', 3)
		setProperty('fpsTxt.size', 20)
		setTextAlignment('fpsTxt', 'left')
		addLuaText 'fpsTxt'	
	
	    for i,lib in pairs{'ClientPrefs', 'Conductor', 'Math', 'Highscore', 'Type', 'Main', 'Note'} do
			addHaxeLibrary(lib)
		end
		addHaxeLibrary('FPS', 'openfl.display')
		setTextFont('fpsTxt', TextFont)
	end
	if DaveEngine == true or gappleHud == true then
		runHaxeCode 'Main.fpsVar.visible = false;'
	end
	--setProperty('fpsTxt.visible', false);
end
function onUpdatePost()
    local fps = runHaxeCode 'return Main.fpsVar.currentFPS;'
	local mem = runHaxeCode 'FlxStringUtil.formatBytes(Memory.gay());'	
	if fuckYou == true then
		setProperty('fpsTxt.text', 'FPS: -' .. (fps * 100000) .. '\n' .. force_mem_powerfull .. force_mem)
	else
		if DaveEngine == true and gappleHud == false then
			setProperty('fpsTxt.text', 'FPS: '..tostring(fps) .. '\nMemory: '..tostring(mem))
		elseif gappleHud == true and DaveEngine == false then
			setProperty('fpsTxt.text', 'FPS: '..tostring(fps))
		end
	end
end
function onDestroy()
	if DaveEngine == true and gappleHud == false then
		runHaxeCode 'Main.fpsVar.visible = true;'
	elseif gappleHud == true and DaveEngine == false then
		runHaxeCode 'Main.fpsVar.visible = true;'
	end
end
