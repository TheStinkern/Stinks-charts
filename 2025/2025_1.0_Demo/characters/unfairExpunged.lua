

function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/500)*(bpm/80)

    doTweenY(dadTweenY, 'dad', 140-20*math.sin((currentBeat*0.1)*math.pi),0.001)
	
  end
end
