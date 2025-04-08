function onCreatePost()
	doTweenAlpha('fadeUi', 'healthBar', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi2', 'healthBarBG', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi3', 'iconP1', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi4', 'iconP2', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi5', 'scoreTxt', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi8', 'energyBarBG', 0, 0.01, 'linear')
	doTweenAlpha('fadeUi9', 'energyBar', 0, 0.01, 'linear')	
	doTweenAlpha('fadeUi10', 'energyTxt', 0, 0.01, 'linear')		
	doTweenAlpha('fadeUi10', 'timeTxt', 0, 0.01, 'linear')	
end
function onUpdate()
	if curStep == 64 then -- notes fade out
		doTweenAlpha('fadeUi', 'healthBar', 1, 1, 'linear')
		doTweenAlpha('fadeUi2', 'healthBarBG', 1, 1, 'linear')
		doTweenAlpha('fadeUi3', 'iconP1', 1, 1, 'linear')
		doTweenAlpha('fadeUi4', 'iconP2', 1, 1, 'linear')
		doTweenAlpha('fadeUi5', 'scoreTxt', 1, 1, 'linear')
		doTweenAlpha('fadeUi6', 'timeBarBG', 1, 1, 'linear')	
		doTweenAlpha('fadeUi7', 'timeBar', 1, 1, 'linear')
		doTweenAlpha('fadeUi8', 'energyBarBG', 1, 1, 'linear')
		doTweenAlpha('fadeUi9', 'energyBar', 1, 1, 'linear')	
		doTweenAlpha('fadeUi10', 'energyTxt', 1, 1, 'linear')		
		doTweenAlpha('fadeUi10', 'timeTxt', 1, 1, 'linear')	
	end
	if curStep == 2672 then
		doTweenAlpha('fadeUi', 'healthBar', 0, 10.43, 'linear')
		doTweenAlpha('fadeUi2', 'healthBarBG',01, 10.43, 'linear')
		doTweenAlpha('fadeUi3', 'iconP1', 0, 10.43, 'linear')
		doTweenAlpha('fadeUi4', 'iconP2', 0, 10.43, 'linear')
		doTweenAlpha('fadeUi5', 'scoreTxt', 0, 10.43, 'linear')
		doTweenAlpha('fadeUi6', 'timeBarBG', 0, 10.43, 'linear')	
		doTweenAlpha('fadeUi7', 'timeBar', 0, 10.43, 'linear')
		doTweenAlpha('fadeUi8', 'energyBarBG', 0, 10.43, 'linear')
		doTweenAlpha('fadeUi9', 'energyBar', 0, 10.43, 'linear')	
		doTweenAlpha('fadeUi10', 'energyTxt', 0, 10.43, 'linear')		
		doTweenAlpha('fadeUi10', 'timeTxt', 0, 10.43, 'linear')	
	end
	if curStep == 2800 then
		noteTweenAlpha('dadStrum', 0, 0, 1)
		noteTweenAlpha('dadStrum1', 1, 0, 1)
		noteTweenAlpha('dadStrum2', 2, 0, 1)
		noteTweenAlpha('dadStrum3', 3, 0, 1)
		noteTweenAlpha('bfStrum', 4, 0, 1)
		noteTweenAlpha('bfStrum1', 5, 0, 1)
		noteTweenAlpha('bfStrum2', 6, 0, 1)
		noteTweenAlpha('bfStrum3', 7, 0, 1)
	end
	if curStep == 2144 then
		noteTweenAlpha('dadStrum', 0, 0, 1, 'quartOut')
		noteTweenAlpha('dadStrum1', 1, 0, 1, 'quartOut')
		noteTweenAlpha('dadStrum2', 2, 0, 1, 'quartOut')
		noteTweenAlpha('dadStrum3', 3, 0, 1, 'quartOut')
		noteTweenAlpha('bfStrum', 4, 0, 1, 'quartOut')
		noteTweenAlpha('bfStrum1', 5, 0, 1, 'quartOut')
		noteTweenAlpha('bfStrum2', 6, 0, 1, 'quartOut')
		noteTweenAlpha('bfStrum3', 7, 0, 1, 'quartOut')
	end
	if curStep == 2287 then
		noteTweenAlpha('dadStrum', 0, 1, 1, 'quartOut')
		noteTweenAlpha('dadStrum1', 1, 1, 1, 'quartOut')
		noteTweenAlpha('dadStrum2', 2, 1, 1, 'quartOut')
		noteTweenAlpha('dadStrum3', 3, 1, 1, 'quartOut')
		noteTweenAlpha('bfStrum', 4, 1, 1, 'quartOut')
		noteTweenAlpha('bfStrum1', 5, 1, 1, 'quartOut')
		noteTweenAlpha('bfStrum2', 6, 1, 1, 'quartOut')
		noteTweenAlpha('bfStrum3', 7, 1, 1, 'quartOut')
	end
	if curStep == 1185 then
		noteTweenAlpha('dadStrum1', 0, 0, 0.01)
		noteTweenAlpha('dadStrum2', 1, 0, 0.01)
		noteTweenAlpha('dadStrum3', 2, 0, 0.01)
		noteTweenAlpha('dadStrum4', 3, 0, 0.01)
		noteTweenY('dadSstrum1', 0, -800, 0.01)
		noteTweenY('dadStsrum2', 1, -800, 0.01)
		noteTweenY('dadStrsum3', 2, -800, 0.01)
		noteTweenY('dadStsrum4', 3, -800, 0.01)
	end
	if curStep == 1214 then
		noteTweenY('dadStrum1', 0, 800, 0.01)
		noteTweenY('dadStrum2', 1, 800, 0.01)
		noteTweenY('dadStrum3', 2, 800, 0.01)
		noteTweenY('dadStrum4', 3, 800, 0.01)
	end
	if curStep == 1216 then
		noteTweenAlpha('dadStrum1rtrrtey', 0, 1, 1)
		noteTweenAlpha('dadStrerrytrtyeum2', 1, 1, 1)
		noteTweenAlpha('dadStrurtyeyertm3', 2, 1, 1)
		noteTweenAlpha('dadStrrtyrtyeum4', 3, 1, 1)
		noteTweenY('dadSertyertytrum1', 0, defaultOpponentStrumY0, 5, 'quartOut')
		noteTweenY('dadStrertyrteyum2', 1, defaultOpponentStrumY1, 6, 'quartOut')
		noteTweenY('dadStryrteertyum3', 2, defaultOpponentStrumY2, 7, 'quartOut')
		noteTweenY('dadStrurteyertym4', 3, defaultOpponentStrumY3, 8, 'quartOut')
	end	
	if curStep == 2160 then
		noteTweenY('dadSstrum1', 0, -800, 0.01)
		noteTweenY('dadStsrum2', 1, -800, 0.01)
		noteTweenY('dadStrsum3', 2, -800, 0.01)
		noteTweenY('dadStsrum4', 3, -800, 0.01)
	end
	if curStep == 2287 then
		noteTweenY('dadSertyertytrum1', 0, defaultOpponentStrumY0, 0.01, 'quartOut')
		noteTweenY('dadStrertyrteyum2', 1, defaultOpponentStrumY1, 0.01, 'quartOut')
		noteTweenY('dadStryrteertyum3', 2, defaultOpponentStrumY2, 0.01, 'quartOut')
		noteTweenY('dadStrurteyertym4', 3, defaultOpponentStrumY3, 0.01, 'quartOut')
	end

end 