function valuesplit(input, sep) --thanks SilverSnow
	if sep == nil then
		sep = '%s'
	end
	local t={}
	for str in string.gmatch(input,"([^"..sep.."]+)") do
		table.insert(t,str)
	end
	return t
end

local camera = 'camGame'
local zoom = 0.9
local duration = 0.5

function onEvent(name,v1,v2)
	if name == "Bitto's zoom event" then
		local table=valuesplit(v1,",")
		
		camera = table[1]
		zoom = table[2]
		duration = table[3]
		doTweenZoom('BittoZoom', camera, zoom, duration, v2)
	end
end

function onTweenCompleted(name)
	if name == 'BittoZoom' then
		setProperty("defaultCamZoom",getProperty('camGame.zoom'))
	end
end