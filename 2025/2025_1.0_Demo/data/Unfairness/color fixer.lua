function onEvent(name, value1, value2)
	if name == 'Change Character' then
		if value1 == 'gf' then
			setProperty('gf.color', getColorFromHex('878787'))
		elseif value1 == 'bf' then
			setProperty('boyfriend.color', getColorFromHex('878787'))
		elseif value1 == 'dad' then
			setProperty('dad.color', getColorFromHex('878787'))
		end
	end
end