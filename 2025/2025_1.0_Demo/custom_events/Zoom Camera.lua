function onEvent(e, v1, v2)
    if e == 'Zoom Camera' then
        if string.lower(v1) == 'default' then
            setProperty('defaultCamZoom', v2)
        elseif string.lower(v1) == 'forced' then
            setProperty('defaultCamZoom', v2)
            setProperty('camGame.zoom', v2)
        end
    end
end