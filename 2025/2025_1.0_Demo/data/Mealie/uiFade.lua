function onCreatePost()
	makeLuaSprite('fadeThing', image, -5000, -5000)
	makeGraphic('fadeThing', 300000, 300000, '000000')
	setProperty('fadeThing.alpha', 0)
	addLuaSprite('fadeThing', true)
	setObjectCamera('fadeThing', 'camGame')
	luaDebugMode = true;
	skipStrumIntro = true;
end
function onStepHit()
	if curStep == 128 then
		startNoteAnim();
		setProperty('camHUD.alpha',1)	
	end
	if curStep == 896 then -- notes fade out
		noteTweenAlpha('dadStrum', 0, 0, 0.5, 'linear')
		noteTweenAlpha('dadStrum1', 1, 0, 0.5, 'linear')
		noteTweenAlpha('dadStrum2', 2, 0, 0.5, 'linear')
		noteTweenAlpha('dadStrum3', 3, 0, 0.5, 'linear')
		noteTweenAlpha('bfStrum', 4, 0, 0.5, 'linear')
		noteTweenAlpha('bfStrum1', 5, 0, 0.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 0, 0.5, 'linear')
		noteTweenAlpha('bfStrum3', 7, 0, 0.5, 'linear')
		doTweenAlpha('fade', 'fadeThing', 0.3, 0.5, 'linear')
	end
	
	if curStep == 128 or curStep == 924 then -- notes fade in
		noteTweenAlpha('dadStrum', 0, 1, 0.5, 'linear')
		noteTweenAlpha('dadStrum1', 1, 1, 0.5, 'linear')
		noteTweenAlpha('dadStrum2', 2, 1, 0.5, 'linear')
		noteTweenAlpha('dadStrum3', 3, 1, 0.5, 'linear')
		noteTweenAlpha('bfStrum', 4, 1,0.5, 'linear')
		noteTweenAlpha('bfStrum1', 5, 1, 0.5, 'linear')
		noteTweenAlpha('bfStrum2', 6, 1, 0.5, 'linear')
		noteTweenAlpha('bfStrum3', 7, 1, 0.5, 'linear')
		doTweenAlpha('fade', 'fadeThing', 0, 0.5, 'linear')
	end
	if curStep == 898 then
		doTweenAlpha('EEEEEE', 'camGame', 0.8, 0.2, 'quartOut')
	end
	if curStep == 900 then
		doTweenAlpha('EEEEEE', 'camGame', 0.4, 0.2, 'quartOut')
	end
	if curStep == 902 then
		doTweenAlpha('EEEEEE', 'camGame', 0.2, 0.2, 'quartOut')
	end
	if curStep == 904 then
		doTweenAlpha('EEEEEE', 'camGame', 0, 0.2, 'quartOut')
	end
	if curStep == 923 then
		doTweenAlpha('EEEEEE', 'camGame', 0.5, 0.53, 'linear')
	end
	if curStep == 928 then
		doTweenAlpha('EEEEEE', 'camGame', 1, 0.01, 'linear')
	end
end


function startNoteAnim()
	noteTweenAlpha('alphaAnim0', 0, 1, 8, 'cubeOut')
	noteTweenAlpha('alphaAnim1', 1, 1, 6, 'cubeOut')
	noteTweenAlpha('alphaAnim2', 2, 1, 4, 'cubeOut')
	noteTweenAlpha('alphaAnim3', 3, 1, 2, 'cubeOut')     
	noteTweenAngle('angleAnim0', 0, 0, 8, 'cubeOut')
	noteTweenAngle('angleAnim1', 1, 0, 6, 'cubeOut')
	noteTweenAngle('angleAnim2', 2, 0, 4, 'cubeOut')
	noteTweenAngle('angleAnim3', 3, 0, 2, 'cubeOut')

	noteTweenAlpha('alphaAnim4', 4, 1, 2, 'cubeOut')
	noteTweenAlpha('alphaAnim5', 5, 1, 4, 'cubeOut')
	noteTweenAlpha('alphaAnim6', 6, 1, 6, 'cubeOut')
	noteTweenAlpha('alphaAnim7', 7, 1, 8, 'cubeOut')     
	noteTweenAngle('angleAnim4', 4, 0, 2, 'cubeOut')
	noteTweenAngle('angleAnim5', 5, 0, 4, 'cubeOut')
	noteTweenAngle('angleAnim6', 6, 0, 6, 'cubeOut')
	noteTweenAngle('angleAnim7', 7, 0, 8, 'cubeOut')

	noteTweenY('tweenY0', 0, defaultOpponentStrumY0, 8, 'backOut')
	noteTweenY('tweenY1', 1, defaultOpponentStrumY0, 6, 'backOut')
	noteTweenY('tweenY2', 2, defaultOpponentStrumY0, 4, 'backOut')
	noteTweenY('tweenY3', 3, defaultOpponentStrumY0, 2, 'backOut')
	noteTweenY('tweenY4', 4, defaultOpponentStrumY0, 2, 'backOut')
	noteTweenY('tweenY5', 5, defaultOpponentStrumY0, 4, 'backOut')
	noteTweenY('tweenY6', 6, defaultOpponentStrumY0, 6, 'backOut')
	noteTweenY('tweenY7', 7, defaultOpponentStrumY0, 8, 'backOut')
end