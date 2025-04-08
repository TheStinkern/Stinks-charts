function onCreate()
    luaDebugMode = true;
    setProperty('skipArrowStartTween', true)
    
    if songName == 'Mealie' then
        skipStrumIntro = true;
    end
    if songName == 'Disability' then
        skipStrumAngleTweens = true;
    end
end

function onCreatePost()
    applyDefVals()
end

function onSongStart()
    if skipStrumIntro == false or skipStrumIntro == null then
        startNoteAnim()
    end
end

function applyDefVals()
    if downscroll then
        calcDefValY = (defaultOpponentStrumY0 + 200)
        
    else
        calcDefValY = (defaultOpponentStrumY0 - 200)
    end
    noteTweenAngle('defAngle0', 0, -45, 0.01, 'cubeOut')
    noteTweenAngle('defAngle1', 1, -45, 0.01, 'cubeOut')
    noteTweenAngle('defAngle2', 2, -45, 0.01, 'cubeOut')
    noteTweenAngle('defAngle3', 3, -45, 0.01, 'cubeOut')
    noteTweenAlpha('defAlpha0', 0, 0, 0.01, 'cubeOut')
    noteTweenAlpha('defAlpha1', 1, 0, 0.01, 'cubeOut')
    noteTweenAlpha('defAlpha2', 2, 0, 0.01, 'cubeOut')
    noteTweenAlpha('defAlpha3', 3, 0, 0.01, 'cubeOut')  
    noteTweenAlpha('defAlpha4', 4, 0, 0.01, 'cubeOut')
    noteTweenAlpha('defAlpha5', 5, 0, 0.01, 'cubeOut')
    noteTweenAlpha('defAlpha6', 6, 0, 0.01, 'cubeOut')
    noteTweenAlpha('defAlpha7', 7, 0, 0.01, 'cubeOut')  

    if skipStrumAngleTweens ~= true then
        noteTweenAngle('defAngle4', 4, 45, 0.01, 'cubeOut')
        noteTweenAngle('defAngle5', 5, 45, 0.01, 'cubeOut')
        noteTweenAngle('defAngle6', 6, 45, 0.01, 'cubeOut')
        noteTweenAngle('defAngle7', 7, 45, 0.01, 'cubeOut')
    end
    
    noteTweenY('defY0', 0, calcDefValY, 0.01, 'cubeOut')
    noteTweenY('defY1', 1, calcDefValY, 0.01, 'cubeOut')
    noteTweenY('defY2', 2, calcDefValY, 0.01, 'cubeOut')
    noteTweenY('defY3', 3, calcDefValY, 0.01, 'cubeOut')
    noteTweenY('defY4', 4, calcDefValY, 0.01, 'cubeOut')
    noteTweenY('defY5', 5, calcDefValY, 0.01, 'cubeOut')
    noteTweenY('defY6', 6, calcDefValY, 0.01, 'cubeOut')
    noteTweenY('defY7', 7, calcDefValY, 0.01, 'cubeOut')
end

function startNoteAnim()
    noteTweenAlpha('alphaAnim0', 0, 1, 8, 'cubeOut')
    noteTweenAlpha('alphaAnim1', 1, 1, 6, 'cubeOut')
    noteTweenAlpha('alphaAnim2', 2, 1, 4, 'cubeOut')
    noteTweenAlpha('alphaAnim3', 3, 1, 2, 'cubeOut')  

    if skipStrumAngleTweens ~= true then
        noteTweenAngle('angleAnim0', 0, 0, 8, 'cubeOut')
        noteTweenAngle('angleAnim1', 1, 0, 6, 'cubeOut')
        noteTweenAngle('angleAnim2', 2, 0, 4, 'cubeOut')
        noteTweenAngle('angleAnim3', 3, 0, 2, 'cubeOut')
    end

    noteTweenAlpha('alphaAnim4', 4, 1, 2, 'cubeOut')
    noteTweenAlpha('alphaAnim5', 5, 1, 4, 'cubeOut')
    noteTweenAlpha('alphaAnim6', 6, 1, 6, 'cubeOut')
    noteTweenAlpha('alphaAnim7', 7, 1, 8, 'cubeOut')   

    if skipStrumAngleTweens ~= true then
        noteTweenAngle('angleAnim4', 4, 0, 2, 'cubeOut')
        noteTweenAngle('angleAnim5', 5, 0, 4, 'cubeOut')
        noteTweenAngle('angleAnim6', 6, 0, 6, 'cubeOut')
        noteTweenAngle('angleAnim7', 7, 0, 8, 'cubeOut')
    end

    noteTweenY('tweenY0', 0, defaultOpponentStrumY0, 8, 'backOut')
    noteTweenY('tweenY1', 1, defaultOpponentStrumY0, 6, 'backOut')
    noteTweenY('tweenY2', 2, defaultOpponentStrumY0, 4, 'backOut')
    noteTweenY('tweenY3', 3, defaultOpponentStrumY0, 2, 'backOut')
    noteTweenY('tweenY4', 4, defaultOpponentStrumY0, 2, 'backOut')
    noteTweenY('tweenY5', 5, defaultOpponentStrumY0, 4, 'backOut')
    noteTweenY('tweenY6', 6, defaultOpponentStrumY0, 6, 'backOut')
    noteTweenY('tweenY7', 7, defaultOpponentStrumY0, 8, 'backOut')
end