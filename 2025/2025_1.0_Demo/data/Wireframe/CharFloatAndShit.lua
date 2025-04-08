
function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeatB = (songPos/2000)*(bpm/80)
    local currentBeatB2 = (songPos/500)*(bpm/90)
    local currentBeatB3 = (songPos/900)*(bpm/90)
    local currentBeatD = (songPos/500)*(bpm/80)
    local currentBeatD2 = (songPos/305)*(bpm/80)
    local currentBeatD3 = (songPos/800)*(bpm/80)

	

    doTweenX('dadTweenX', 'dad', -400-20*math.sin((currentBeatD*0.1)*math.pi),0.001)	
    doTweenY('dadTweenY', 'dad', 100-100*math.sin((currentBeatD2*0.1)*math.pi),0.001)
    doTweenAngle('dadTweenAngle', 'dad', 3-4*math.sin((currentBeatD3*0.1)*math.pi),0.001)
    doTweenX('bfTweenX', 'boyfriend', 700-120*math.sin((currentBeatB*0.1)*math.pi),0.001)
    doTweenY('bfTweenY', 'boyfriend', 0-130*math.sin((currentBeatB2*0.1)*math.pi),0.001)
    doTweenAngle('bfTweenAngle', 'boyfriend', 3-3*math.sin((currentBeatB3*0.1)*math.pi),0.001)

  end

end
