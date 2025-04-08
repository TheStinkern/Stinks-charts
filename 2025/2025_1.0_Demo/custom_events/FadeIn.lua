function onCreate()
    makeLuaSprite('fadeimg', 'fadeimg')
    addLuaSprite('fadeimg', true);
    doTweenAlpha('fadeimg', 'fadeimg', '0', '0.0001', 'quartIn')
    setObjectCamera('fadeimg', 'camHud')
end

function onEvent(name,value1,value2)	
    if name == 'FadeIn' then
        doTweenAlpha('fadeimg', 'fadeimg', '1', '1', 'quartIn')
    end
end

-- curBeat Support


-- function onBeatHit()
--      if curBeat == 5 then
--          doTweenAlpha('fadeimg', 'fadeimg', '1', '1', 'quartIn')
--      end

--      if curBeat == 10 then
--          doTweenAlpha('fadeimg', 'fadeimg', '0', '1', 'quartIn')
--     end
-- end 