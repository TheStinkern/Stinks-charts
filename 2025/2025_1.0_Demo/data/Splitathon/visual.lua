function onStepHit()
	if curStep == 2976 then
		cameraFlash('camGame', 'FFFFFF', 1)
	end
end

function onBeatHit()
	if curBeat == 772 then
		cameraFade('game', 'FFFFFF', 1.04, true)
	end
	if curBeat == 776 then
		cameraFade('game', 'FFFFFF',1, true, true)
	end
end