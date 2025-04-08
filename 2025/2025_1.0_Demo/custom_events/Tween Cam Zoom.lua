function string:split( inSplitPattern, outResults )
    if not outResults then
      outResults = { }
    end
    local theStart = 1
    local theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
    while theSplitStart do
      table.insert( outResults, string.sub( self, theStart, theSplitStart-1 ) )
      theStart = theSplitEnd + 1
      theSplitStart, theSplitEnd = string.find( self, inSplitPattern, theStart )
    end
    table.insert( outResults, string.sub( self, theStart ) )
    return outResults
end

function onEvent(e, v1, v2)
    if e == 'Tween Cam Zoom' then
        local myString = v1
        local myTable = myString:split(", ")
        setProperty('defaultCamZoom', myTable[1])
        doTweenZoom('TweenCamEvent', 'camGame', myTable[1], myTable[2], v2)
    end
end