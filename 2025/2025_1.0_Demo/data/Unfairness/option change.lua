function onCreate()
	midScrollOption = getPropertyClass('ClientPrefs', 'middleScroll')

	setPropertyFromClass('ClientPrefs', 'ghostTapping', false)
end

function onCreatePost()
	if midScrollOption == true then
		setPropertyFromClass('ClientPrefs', 'middleScroll', false)		
	end
end

function onDestroy()
	setPropertyFromClass('ClientPrefs', 'ghostTapping', true)
	setPropertyFromClass('ClientPrefs', 'middleScroll', midScrollOption)		
end
