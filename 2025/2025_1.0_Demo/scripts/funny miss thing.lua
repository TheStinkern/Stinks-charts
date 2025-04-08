function onCreatePost()
makeLuaSprite('vignette1','vignette',0, 0)
addLuaSprite('vignette1',true)
setObjectCamera('vignette1', 'camHud')
setProperty('vignette1.alpha', 0)

makeLuaSprite('vignette2','vignetteRed',0, 0)
addLuaSprite('vignette2',true)
setObjectCamera('vignette2', 'camHud')
setProperty('vignette2.alpha', 0)

makeLuaSprite('miss image','miss image',0, 0)
addLuaSprite('miss image',true)
setObjectCamera('miss image', 'camHud')
setProperty('miss image.alpha', 0)
end

function noteMissPress(direction)
	cool()
end
function noteMiss(id, noteData, noteType, isSustainNote)
	cool()
end


function cool()
	setProperty('vignette1.alpha', 0.7)
	doTweenAlpha('bye bye vignette', 'vignette1', 0, 3,'quartOut')
	runTimer('MissTimer', 0.02, 1)
	setProperty('miss image.alpha', 0.34)
	doTweenAlpha('bye bye image', 'miss image', 0, 1,'quartOut')
	playSound('vine boom')
end