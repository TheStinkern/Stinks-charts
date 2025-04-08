--[[function onCreatePost()
	noteTweenScaleX('penis1', 0, -0.7, 1, 'expoInOut')
	noteTweenScaleX('penis2', 1, -0.7, 1, 'expoInOut')
	noteTweenScaleX('penis3', 2, -0.7, 1, 'expoInOut')
	noteTweenScaleX('penis4', 3, -0.7, 1, 'expoInOut')
	noteTweenScaleX('penis5', 4, -0.7, 1, 'expoInOut')
	noteTweenScaleX('penis6', 5, -0.7, 1, 'expoInOut')
	noteTweenScaleX('penis7', 6, -0.7, 1, 'expoInOut')
	noteTweenScaleX('penis8', 7, -0.7, 1, 'expoInOut')
	noteTweenScaleY('peniss1', 0, -0.7, 0.01, 'expoInOut')
	noteTweenScaleY('peniss2', 1, -0.7, 0.01, 'expoInOut')
	noteTweenScaleY('peniss3', 2, -0.7, 0.01, 'expoInOut')
	noteTweenScaleY('peniss4', 3, -0.7, 0.01, 'expoInOut')
	noteTweenScaleY('peniss5', 4, -0.7, 0.01, 'expoInOut')
	noteTweenScaleY('peniss6', 5, -0.7, 0.01, 'expoInOut')
	noteTweenScaleY('peniss7', 6, -0.7, 0.01, 'expoInOut')
	noteTweenScaleY('peniss8', 7, -0.7, 0.01, 'expoInOut')

end

function onTweenCompleted(tag)
	if tag == 'penis1' then
		noteTweenScaleX('penis11', 0, 0.7, 1, 'expoInOut')
		noteTweenScaleX('penis2', 1, 0.7, 1, 'expoInOut')
		noteTweenScaleX('penis3', 2, 0.7, 1, 'expoInOut')
		noteTweenScaleX('penis4', 3, 0.7, 1, 'expoInOut')
		noteTweenScaleX('penis5', 4, 0.7, 1, 'expoInOut')
		noteTweenScaleX('penis6', 5, 0.7, 1, 'expoInOut')
		noteTweenScaleX('penis7', 6, 0.7, 1, 'expoInOut')
		noteTweenScaleX('penis8', 7, 0.7, 1, 'expoInOut')
	end
	if tag == 'penis11' then
		noteTweenScaleX('penis1', 0, -0.7, 1, 'expoInOut')
		noteTweenScaleX('penis2', 1, -0.7, 1, 'expoInOut')
		noteTweenScaleX('penis3', 2, -0.7, 1, 'expoInOut')
		noteTweenScaleX('penis4', 3, -0.7, 1, 'expoInOut')
		noteTweenScaleX('penis5', 4, -0.7, 1, 'expoInOut')
		noteTweenScaleX('penis6', 5, -0.7, 1, 'expoInOut')
		noteTweenScaleX('penis7', 6, -0.7, 1, 'expoInOut')
		noteTweenScaleX('penis8', 7, -0.7, 1, 'expoInOut')
	end
end
]]

-- i was fucking around with a couple functions