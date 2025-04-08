function onCreatePost()
	makeAnimatedLuaSprite('bgThing', 'checkersAnimated')
	addAnimationByPrefix('bgThing', 'penis', 'checkersAnimated idle')
	addLuaSprite('bgThing', true)
	setObjectCamera('bgThing', 'other')
	setProperty('bgThing.alpha', 0)
end
--[[
function onPause()
	setProperty('bgThing.alpha', 0.35)
	playAnim('bgThing', 'penis', true)
end

function onResume()
	doTweenAlpha('bgThing', 'bgThing', 0, 0.5)
end]]