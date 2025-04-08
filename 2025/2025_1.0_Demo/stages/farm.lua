function onCreate()

	-- background shit
	makeLuaSprite('sky', 'sky_night', -600, -200);
	setScrollFactor('sky', 0.6, 0.6);
	
	makeLuaSprite('sky2', 'sky_sunrise', -600, -200);
	setScrollFactor('sky2', 0.6, 0.6);
	setProperty('sky2.alpha', 0)
	
	makeLuaSprite('sky3', 'sky', -600, -200);
	setScrollFactor('sky3', 0.6, 0.6);
	setProperty('sky3.alpha', 0)

	makeLuaSprite('flatgrass', 'farm/gm_flatgrass', 350, 75);
	setScrollFactor('flatgrass', 0.65, 0.65);
	scaleObject('flatgrass', 0.34, 0.34);

	makeLuaSprite('hills', 'farm/orangey hills', -173, 100);
	setScrollFactor('hills', 0.65, 0.65);

	makeLuaSprite('farmhouse', 'farm/funfarmhouse', 100, 125);
	setScrollFactor('farmhouse', 0.7, 0.7);
	scaleObject('farmhouse', 0.9, 0.9);

	makeLuaSprite('grassland', 'farm/grass lands', -600, 500);

	makeLuaSprite('cornFence', 'farm/cornFence', -400, 200);

	makeLuaSprite('cornFence2', 'farm/cornFence2', 1100, 200);

	makeLuaSprite('cornbag', 'farm/cornbag', 1200, 550);

	makeLuaSprite('sign', 'farm/sign', 0, 350);

	addLuaSprite('sky', false);
	addLuaSprite('sky2', false);
	addLuaSprite('sky3', false);
	addLuaSprite('flatgrass', false);
	addLuaSprite('hills', false);
	addLuaSprite('farmhouse', false);
	addLuaSprite('grassland', false);
	addLuaSprite('cornFence', false);
	addLuaSprite('cornFence2', false);
	addLuaSprite('cornbag', false);
	addLuaSprite('sign', false);
	



	if songName == 'Mealie' then
		-- filler
	else
		doTweenColor('darken1', 'dad', '878787', 0.01)
		doTweenColor('darken2', 'boyfriend', '878787', 0.01)	
		doTweenColor('darken3', 'gf', '878787', 0.01)
	end
	doTweenColor('darken4', 'cornbag', '878787', 0.01)
	doTweenColor('darken5', 'flatgrass', '878787', 0.01)
	doTweenColor('darken6', 'grassland', '878787', 0.01)
	doTweenColor('darken7', 'farmhouse', '878787', 0.01)
	doTweenColor('darken8', 'cornFence', '878787', 0.01)
	doTweenColor('darken9', 'cornFence2', '878787', 0.01)
	doTweenColor('darken10', 'sign', '878787', 0.01)
	doTweenColor('darken11', 'hills', '878787', 0.01)

end
