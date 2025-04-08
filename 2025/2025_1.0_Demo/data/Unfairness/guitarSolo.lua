function onStepHit()
	if curStep == 3151 then
		doTweenZoom('cam','camGame',0.65 ,3.5,'expoInOut')
		doTweenAlpha('bfBye','boyfriend', 0, 3)
		doTweenAlpha('gfBye','gf', 0, 3)
	end
end