function buf = readserialline(h)
    tmpbuf = emptystr();
    while tmpbuf == emptystr()
        TCL_EvalStr("gets " + h + " ttybuf");
        tmpbuf = part(TCL_GetVar("ttybuf"), 1:$-1);
    end
    buf = tmpbuf;
endfunction
