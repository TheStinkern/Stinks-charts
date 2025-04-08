
function onCreatePost()
	luaDebugMode = true;
	defaultOppStrumX = getProperty('opponentStrums.X')
	defaultOppStrumX = getProperty('opponentStrums.y')
	defaultBFStrumX = getProperty('playerStrums.X')
	defaultBFStrumX = getProperty('playerStrums.y')
end

function onTweenCompleted(tag)
	-- X Value
	--[[
	if tag == 'Move1a' then
		doTweenX('strum1Move', opponentStrums, 
	end
	
	if tag == 'Move1b' then
		
	end
	]]
	-- y Value
end