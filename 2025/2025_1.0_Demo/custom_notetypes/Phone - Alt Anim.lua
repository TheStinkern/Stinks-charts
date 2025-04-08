function onCreatePost()
	local noteOption2 = getPropertyFromClass('ClientPrefs', 'noteSkin')
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Phone - Alt Anim' then
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
			if noteOption == 'Classic' then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_phone_uncolored');
			else
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_phone');			
			end
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    if noteType == 'Phone - Alt Anim' then
        if direction == 0 then
			triggerEvent('Play Animation', 'phone', 'Dad')
		end
		if direction == 3 then
			triggerEvent('Play Animation', 'shit', 'Dad')
		end
		
    end
end