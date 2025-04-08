function onEvent(n, v1, v2, sT) { 
    if (n == 'Alt Idle Animation') { 
        final curChar = getVar(v1);
        if (curChar != null) { 
            curChar.idleSuffix = v2;
            curChar.recalculateDanceIdle();
        }
    }
}