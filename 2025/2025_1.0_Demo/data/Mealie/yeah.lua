luaDebugMode = true;

function onCreatePost()
	calcXPos = (getProperty('dad.x') - 325)
	
	makeAnimatedLuaSprite('penis', 'characters/GF_assets', 428, 100);
	addAnimationByIndices('penis', 'danceLeft', 'GF Dancing Beat', '30,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14', 24, false);
    addAnimationByIndices('penis', 'danceRight', 'GF Dancing Beat', '15,16,17,18,19,20,21,22,23,24,25,26,27,28,29', 24, false);
	
	--setProperty('gf.x', 00)
	setProperty('gf.y', 340)
	setProperty('gf.x', calcXPos)
	
	setProperty('gf.alpha', 0)
	setObjectOrder('penis', 13)
	doTweenColor('darken12', 'penis', '878787', 0.01)

end
function onBeatHit()
	if curBeat %1 == 0 then
		objectPlayAnimation('penis', 'danceLeft')
	end
	if curBeat %2 == 0 then
		objectPlayAnimation('penis', 'danceRight')
	end
	if curBeat == 360 then
		setObjectOrder('gf', 20)
		setProperty('gf.alpha', 1)
	end
	if curBeat == 353 then
		doTweenColor('darken12', 'dad', 'FF8FB2', 0.00001)
	end

end
