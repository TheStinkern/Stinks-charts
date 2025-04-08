function onCreatePost()
	luaDebugMode = true;
end
function onUpdate(elapsed)

songPos = getSongPosition()

    local currentBeat = (songPos/1000)*(curBpm/24)
    local currentBeat1 = (songPos/3000)*(curBpm/24)
	
	if curStep >= 0 and curStep < 2432 then
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes',i,'x',-75+(6*110)+math.sin((currentBeat+i*10)*math.pi/8)*300)
		end
				
		for i = 4,7 do
			setPropertyFromGroup('strumLineNotes',i,'x',-75+(6*110)+math.sin((currentBeat+i*10)*math.pi/8)*300)
		end
	end
	
	if curStep == 2446 or curStep == 3232 then
		noteTweenX('bfStrumX', 4, 415, 0.001, 'quartInOut')
		noteTweenX('bfStrumX1', 5, 525, 0.001, 'quartInOut')
		noteTweenX('bfStrumX2', 6, 635, 0.001, 'quartInOut')
		noteTweenX('bfStrumX3', 7, 745, 0.001, 'quartInOut')
		
		noteTweenAlpha('yeah9', 0, 0, 0.0001, 'linear')
		noteTweenAlpha('yeah10', 1, 0, 0.0001, 'linear')
		noteTweenAlpha('yeah11', 2, 0, 0.0001, 'linear')
		noteTweenAlpha('yeah12', 3, 0, 0.0001, 'linear')
	end
	if curStep == 2720 then
		noteTweenAlpha('yeah9', 0, 0.45, 0.2, 'linear')
		noteTweenAlpha('yeah10', 1, 0.45, 0.2, 'linear')
		noteTweenAlpha('yeah11', 2, 0.45, 0.2, 'linear')
		noteTweenAlpha('yeah12', 3, 0.45, 0.2, 'linear')
		noteTweenAlpha('yeah13', 4, 1, 0.2, 'linear')
		noteTweenAlpha('yeah14', 5, 1, 0.2, 'linear')
		noteTweenAlpha('yeah15', 6, 1, 0.2, 'linear')
		noteTweenAlpha('yeah16', 7, 1, 0.2, 'linear')
	end
	if curStep >= 2720 and curStep < 3232 then

			for i = 0,3 do
                    setPropertyFromGroup('strumLineNotes',i,'x',-75+(6*110)+math.sin((currentBeat+i*2)*math.pi/8)*300)
                    setPropertyFromGroup('strumLineNotes',i,'y',500+math.cos((currentBeat+i*2)*math.pi/5)*100)
            end
               
            for i = 4,7 do
                    setPropertyFromGroup('strumLineNotes',i,'x',-75+(6*110)+math.sin((currentBeat+i*2)*math.pi/8)*-300)
                    setPropertyFromGroup('strumLineNotes',i,'y',500+math.cos((currentBeat+i*2)*math.pi/5)*-100)
            end

			for i = 4,7 do
				--setPropertyFromGroup('strumLineNotes',i,'y',-75+(6*110)+math.sin((currentBeat+i*10)*math.pi/8)*100)
			end

	end
	if curStep == 3232 then
		for i = 0,7 do
			setPropertyFromGroup('strumLineNotes',i,'y', defaultPlayerStrumY1)
		end
	end
end

