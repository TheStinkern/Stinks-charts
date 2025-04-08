function onCreatePost()
	healthBarYpos = getProperty('healthBar.y')
	penis = getPropertyFromClass('ClientPrefs', 'watermarkStyle')
	if penis == 'Dave Engine' or penis == 'Kade Engine' then
		setProperty('EngineWatermark.y', (healthBarYpos + 50))
		if songName == 'Bot_Trot' then
			setProperty('EngineWatermark.text', 'Bot Trot')
		elseif songName == 'Algebra_Diamond_man_Section' then
			setProperty('EngineWatermark.text', 'Algebra Diamond man Section')
		end
	end
end
