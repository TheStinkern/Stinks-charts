function onEvent(name,value1,value2)
	if name == 'ShowHealth' then 

		setProperty('healthBar.visible', true);
		setProperty('healthBarBG.visible', true);
		setProperty('iconP1.visible', true);
		setProperty('iconP2.visible', true);
	end
end