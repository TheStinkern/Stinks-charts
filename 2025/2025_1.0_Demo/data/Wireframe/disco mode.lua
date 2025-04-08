function onBeatHit()
	if curBeat == 408 then
		doTweenColor('redTunnel5', 'redTunnel', 'FF0000', 0.5)
		doTweenColor('tweenDad', 'dad', 'FF0000', 0.5)
		doTweenColor('tweenBF', 'boyfriend', 'FF0000', 0.5)
	end
	if curBeat == 536 then
		cancelTween('redTunnel1')
		cancelTween('redTunnel2')
		cancelTween('redTunnel3')
		cancelTween('redTunnel4')
		cancelTween('redTunnel5')
		cancelTween('tweenBF')
		cancelTween('tweenDad')
		doTweenColor('gobacktocolor', 'redTunnel', 'FFFFFF', 0.5)
		doTweenColor('gobacktocolor2', 'dad', 'FFFFFF', 0.5)
		doTweenColor('gobacktocolor3', 'boyfriend', 'FFFFFF', 0.5)
	end
end

function onTweenCompleted(tag)
	if tag == 'redTunnel5' then
		doTweenColor('redTunnel2', 'redTunnel', '00FF00', 0.5)
		doTweenColor('tweenDad', 'dad', '00FF00', 0.5)
		doTweenColor('tweenBF', 'boyfriend', '00FF00', 0.5)
	end
	if tag == 'redTunnel2' then
		doTweenColor('redTunnel3', 'redTunnel', '0000FF', 0.5)
		doTweenColor('tweenDad', 'dad', '0000FF', 0.5)
		doTweenColor('tweenBF', 'boyfriend', '0000FF', 0.5)
	end
	if tag == 'redTunnel3' then
		doTweenColor('redTunnel4', 'redTunnel', '00FF00', 0.5)
		doTweenColor('tweenDad', 'dad', '00FF00', 0.5)
		doTweenColor('tweenBF', 'boyfriend', '00FF00', 0.5)
	end
	if tag == 'redTunnel4' then
		doTweenColor('redTunnel5', 'redTunnel', 'FF0000', 0.5)
		doTweenColor('tweenDad', 'dad', 'FF0000', 0.5)
		doTweenColor('tweenBF', 'boyfriend', 'FF0000', 0.5)
	end
end