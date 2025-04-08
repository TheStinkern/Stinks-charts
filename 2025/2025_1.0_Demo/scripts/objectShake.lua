--[[
Hello, EG is here! So, I made a code for shaking the object! Here small tutorial how to it's work! 
First add all of script in the end of your script and then check everything below

If in your file exist function onUpdate then you need to add line "onUpdateAgain()" in begining of it.
If not then make smth like this:

function onUpdate()
	onUpdateAgain()
end

Do same with onTimerCompleted.
After that just run it with "objectShake(object tag, intensity, duration)"

Thats it! If don't understand smth check example file in same folder

How to contact me:
Discord: @EG100 or @EG100#0571
GB link: https://gamebanana.com/members/1958066

Link to GB of this script: https://gamebanana.com/tools/15324
]]--

--Code stuff--
object = {}
objectX = {}
objectY = {}
intens = {}
runThis = {}
debugInfo = false
function objectShake(obj, int, dur)
	if debugInfo then debugPrint(obj, int, dur) end
	if obj ~= '' or obj ~= nil then
		if debugInfo then debugPrint('running') end
		if int == nil then
			int = 10
		end
		if dur == nil then
			dur = 1
		end
		for i = 1, #object do
			if object[i] == obj then
				cancelTimer('shake'..i)
			end
		end
		object[#object + 1] = obj
		runThis[#object] = true
		intens[#intens + 1] = int
		objectX[#objectX + 1] = getProperty(obj..'.x')
		objectY[#objectY + 1] = getProperty(obj..'.y')
		runTimer('shake'..#object, dur)
		if debugInfo then debugPrint(object[#object]..' '..intens[#intens]..' '..objectX[#objectX]..' '..objectY[#objectY], runThis[#runThis]) end 
	end

end
function onUpdateAgain()
	for i = 1, #object do
		if runThis[i] == true then
			if debugInfo then debugPrint('running shake for '..object[i]..'!') end
			setProperty(object[i]..'.x', objectX[i] + getRandomInt(-intens[i], intens[i]))
			if debugInfo then debugPrint('Cur pos is '..getProperty(object[i]..'.x')..' '..getProperty(object[i]..'.y')) end
			setProperty(object[i]..'.y', objectY[i] + getRandomInt(-intens[i], intens[i]))
		end
	end
end
function onTimerCompletedAgain(t)
	for i = 1, #object do
		if t == 'shake'..i then
			runThis[i] = false
			setProperty(object[i]..'.x', objectX[i])
			setProperty(object[i]..'.y', objectY[i])
			if debugInfo then debugPrint('object '..object[i]..' is done with shake! Cur pos is '..getProperty(object[i]..'.x')..' '..getProperty(object[i]..'.y')) end
		end
	end
end