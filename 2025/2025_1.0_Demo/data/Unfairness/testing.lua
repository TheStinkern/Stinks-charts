--[[

local allowCountdown = false

function onCreatePost()
	funnyNumber = getRandomInt(0, 100)
end
function onStartCountdown()
	if not allowCountdown and not seenCutscene and funnyNumber <= 100 then --Block the first countdown
		startVideo('Cutscene2');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
]]