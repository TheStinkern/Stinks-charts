function onEvent(n, v1, v2, sT) { 
    if (n == 'Alt Idle Animation') { 
        final curChar = getVar(v2);
        if (curChar != null) { 
            curChar.playAnim(value1, true);
            curChar.specialAnim = true;
        }
    }
}