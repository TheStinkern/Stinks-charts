--[[function onCreatePost()
	notifTitle = 'Jordan Santiago'
	notifMessage = 'Nope! Fuck you!'
	-- change the notifTitle and notifMessage if you want to, it has to be in a string format, or it will not work.
	runTimer('check thingy', 0.05)
end

function onResume()
	runTimer('check thingy', 0.05)
end

function onTimerCompleted(tag)
	if tag == 'check thingy' then
		 if botPlay then
			  triggerEvent('Windows notification', notifTitle, notifMessage);
			  setProperty('botplay', false)
		 end  
	end
end]]