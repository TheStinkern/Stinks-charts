function onCreatePost()
	debugMode = false
	defaultSpeed = getProperty('cameraSpeed')

	if debugMode == true then
		debugPrint(defaultSpeed)
		runTimer('yeah', 0.01)
	end
end

function onEvent(name, value1, value2)
	if name == 'instant cam pan' then
		curZoom = getProperty('camGame.zoom')
		camZoomer = (curZoom + 0.1)
		setProperty('cameraSpeed', 100)
		runTimer('waiiit', 0.05)
		if debugMode == true then
			debugPrint(name .. ' event has been called')
		end
	end
end

function onTimerCompleted(tag)
	if tag == 'waiiit' or tag == 'yeah' then
		setProperty('cameraSpeed', defaultSpeed)
	end

end