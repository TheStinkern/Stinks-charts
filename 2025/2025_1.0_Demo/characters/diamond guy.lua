
function onCreatePost()

	for i=0,4,1 do
		setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets_3D_Gapple')
        end
        
        for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D_Gapple'); --Change texture 
        end
end
end

function opponentNoteHit(id,data,type,sus)
	triggerEvent('Screen Shake','0.1, 0.004','0.01, 0.004')
end