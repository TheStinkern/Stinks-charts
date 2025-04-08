function onEvent(n, v1, v2, sT) { 
    if (n == 'Change Extra Character') { 
        v1 = StringTools.trim(v1);
        v2 = StringTools.trim(v2).split(',');
        v2[1] = StringTools.trim(v2[1]);

        var curChar = getVar(v1);
        if (curChar == null) return;
        var curGroup = (v2[1] == 'boyfriendGroup' ? game.boyfriendGroup : (v2[1] == 'gfGroup' ? game.gfGroup : game.dadGroup));
        var newChar = null;
        if (curChar.curCharacter != v2[0]) { 
            if (!game.variables.exists(v2[0])) { 
                setVar(v2[0], new Character(0, 0, v2[0], true));
                newChar = getVar(v2[0]);
                if (newChar == null) return;
                curGroup.add(newChar);
                if (v2[1] == 'gfGroup') { 
                    newChar.setPosition(game.GF_X, game.GF_Y);
                    newChar.scrollFactor.set(0.95, 0.95);
                    newChar.danceEveryNumBeats = 2;
                }
                newChar.x += newChar.positionArray[0];
                newChar.y += newChar.positionArray[1];
                newChar.alpha = 0.00001;
            }
            removeVar(v1);
            final lastAlpha = curChar.alpha;
            curChar.alpha = 0.00001;
            curChar = newChar;
            setVar(v1, newChar);
            curChar.alpha = lastAlpha;
        }
    }
}