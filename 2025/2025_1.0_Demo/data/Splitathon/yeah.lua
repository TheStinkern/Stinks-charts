function onCreatePost()	
	--luaDebugMode = true;
	makeAnimatedLuaSprite('fakeGF', 'characters/GF_assets', 428, 100);
	addAnimationByIndices('fakeGF', 'danceLeft', 'GF Dancing Beat', '30,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14', 24, false);
  addAnimationByIndices('fakeGF', 'danceRight', 'GF Dancing Beat', '15,16,17,18,19,20,21,22,23,24,25,26,27,28,29', 24, false);
	
	setProperty('gf.alpha', 0)
	setObjectOrder('fakeGF', 13)
	doTweenColor('darken12', 'fakeGF', '878787', 0.01)

end
function onBeatHit()
	if curBeat %1 == 0 then
		objectPlayAnimation('fakeGF', 'danceLeft')
	end
	if curBeat %2 == 0 then
		objectPlayAnimation('fakeGF', 'danceRight')
	end
end

function onUpdate()
	if curBeat == 1732 then
		setObjectOrder('gf', 20)
		setProperty('gf.visible', true)
		setProperty('gf.y', 600)
		setProperty('gf.x', 100)
	end
end
