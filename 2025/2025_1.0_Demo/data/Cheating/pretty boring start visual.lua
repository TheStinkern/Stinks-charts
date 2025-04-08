
function onCreatePost()
	doTweenZoom('fgdfgsdsdfg', 'camGame', 0.6, 0.01)
	doTweenZoom('fgdfgsdsdfg', 'camGame', 0.6, 0.01)
	setProperty('cameraSpeed', 0)
	cameraFade('game', '000000', 0.01, true, false) -- fade in
	fuck = getProperty('dad.x');
	moist_critical = getRandomInt(1,100000);
	if moist_critical == 2 then
		triggerEvent('Change Character', 'dad', 'fake-3d-bambi')
		setProperty('dad.visible', false)
		fuck = -300;
	end
		setProperty('dad.x',-900)
end
function onSongStart()
	doTweenZoom('fgdfgsdsdfg', 'camGame', 1, 10.65)
	cameraFade('game', '000000', 10.65, true, true) -- fade in

end
function onUpdate()
	if curStep == 128 then
		setProperty('cameraSpeed', 1)
	end
	if curStep == 118 then
		doTweenX('dadX', 'dad', fuck, 4, 'quartOut')
		if moist_critical == 2 then
			setProperty('dad.visible', true)
		end
	end
end