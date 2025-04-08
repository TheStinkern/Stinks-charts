function onUpdatePost(elapsed)
    if curStep == 128 then
        doTweenAlpha('ofabdfsu', 'sky2', 1, 106.4, 'linear')
        doTweenAlpha('ertwyryet', 'sky', 0, 106.4, 'linear')
        doTweenColor('tween1', 'dad', 'FF8FB2', 106.4)
        doTweenColor('tween2', 'boyfriend', 'FF8FB2', 106.4)
        doTweenColor('tween3', 'penis', 'FF8FB2', 106.4)
        doTweenColor('tween4', 'cornbag', 'FF8FB2', 106.4)
        doTweenColor('tween5', 'flatgrass', 'FF8FB2', 106.4)
        doTweenColor('tween6', 'grassland', 'FF8FB2', 106.4)
        doTweenColor('tween7', 'farmhouse', 'FF8FB2', 106.4)
        doTweenColor('tween8', 'cornFence', 'FF8FB2', 106.4)
        doTweenColor('tween9', 'cornFence2', 'FF8FB2', 106.4)
        doTweenColor('tween10', 'sign', 'FF8FB2', 106.4)
        doTweenColor('tween11', 'hills', 'FF8FB2', 106.4)
        
	end
    if curStep == 1441 then
        doTweenColor('tween13', 'gf', 'FF8FB2',  0.001)
        doTweenAlpha('ofabdfsu', 'sky3', 1, 36.4, 'linear')
		doTweenAlpha('ertwyryetadsf', 'sky2', 0, 36.4, 'linear')
		doTweenColor('tween1', 'dad', 'FFFFFF', 36.4)
		doTweenColor('tween2', 'boyfriend', 'FFFFFF', 36.4)
		doTweenColor('tween3', 'penis', 'FFFFFF', 36.4)
		doTweenColor('tween4', 'cornbag', 'FFFFFF', 36.4)
		doTweenColor('tween5', 'flatgrass', 'FFFFFF', 36.4)
		doTweenColor('tween6', 'grassland', 'FFFFFF', 36.4)
		doTweenColor('tween7', 'farmhouse', 'FFFFFF', 36.4)
		doTweenColor('tween8', 'cornFence', 'FFFFFF', 36.4)
		doTweenColor('tween9', 'cornFence2', 'FFFFFF', 36.4)
		doTweenColor('tween10', 'sign', 'FFFFFF', 36.4)
		doTweenColor('tween11', 'hills', 'FFFFFF', 36.4)	

	end
end

function onTweenCompleted(tag) 
    if tag == 'tween13' then
        doTweenColor('tween12', 'gf', 'FFFFFF', 36.4)
    end
end