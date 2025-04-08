function onCreate()
	makeLuaSprite('bedroom/sky','bedroom/sky',-285, 318)
	makeLuaSprite('bedroom/bg','bedroom/bg',-687, 0)
	makeLuaSprite('bedroom/bed','bedroom/bed',788, 788)
	makeLuaSprite('bedroom/tv','bedroom/tv',-697, 955)
--------------------------------------------------------
	makeAnimatedLuaSprite('Tristan', 'bedroom/TristanSitting', 888, 688); 
	addAnimationByPrefix('Tristan', 'daytime', 'daytime', 24, true);
	makeAnimatedLuaSprite('Tristan2', 'bedroom/TristanSitting', 888, 688); 
	addAnimationByPrefix('Tristan2', 'nighttime', 'nighttime', 24, true);
--------------------------------------------------------	
	addLuaSprite('bedroom/sky',false)
	addLuaSprite('bedroom/bg',false)
	addLuaSprite('bedroom/bed',false)
	addLuaSprite('bedroom/tv',true)
	addLuaSprite('Tristan',false)
	addLuaSprite('Tristan2',false)
	setProperty('Tristan.alpha', 1)
	setProperty('Tristan2.alpha', 0)
	setProperty('gf.alpha', 0)
--------------------------------------------------------
	setScrollFactor('bedroom/sky', '0.8', "0.8");
	setScrollFactor('bedroom/bg', '1','1');
	setScrollFactor('bedroom/bed', '1','1')
	setScrollFactor('bedroom/tv', '1.2','1.2');
	setScrollFactor('Tristan', '1','1');
	setScrollFactor('Tristan2', '1','1');
	scaleObject('Tristan', '0.8','0.8');
	scaleObject('Tristan2', '0.8','0.8');
end

-- i just do random orders, dont know why
-- from stinko