function onEvent(name,value1,value2)
	if name == 'HideHealth' then 
		setProperty('healthBar.visible', false);
		setProperty('healthBarBG.visible', false);
		setProperty('iconP1.visible', false);
		setProperty('iconP2.visible', false);
	end
end