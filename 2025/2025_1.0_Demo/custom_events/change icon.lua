function onEvent(name, value1, value2)
	if name == 'change icon' then
		if value2 == 'bf' then
			runHaxeCode([[game.iconP1.changeIcon(value1)]]);
		elseif value2 == 'dad' or value2 == '' then
			runHaxeCode([[game.iconP2.changeIcon(value1)]]);
		end
	end
end