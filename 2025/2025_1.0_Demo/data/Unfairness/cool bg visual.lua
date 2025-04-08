-- https://github.com/ShadowMario/FNF-PsychEngine/issues/15679
--[[
luaDebugMode = false
number = 0
function onCreate()
end
function onUpdate()
wave()
for i = 0, number do
if luaSpriteExists('wave'..i) and getProperty('wave'..i..'.x') < -80 then
removeLuaSprite('wave'..number, true)
--debugPrint('It was removed'..'wave'..number)
end
end
end
function wave()
makeLuaSprite('wave'..number, '', screenWidth + 10, 500)
makeGraphic('wave'..number, 2, 1, 'FF7777')
setProperty('wave'..number..'.scale.y', getRandomInt(1, 600))
setObjectCamera('wave'..number, 'camGame')
addLuaSprite('wave'..number)
doTweenX('wave'..number, 'wave'..number, -20, 5)
number = number + 1
setProperty('camGame.visible', true)
end
function onTweenCompleted(tag)
if tag == 'wave'..number then

end
end
]]-- this lags the game, cool script though