function buf = readserialline(h)
    tmpbuf = emptystr();
    while tmpbuf == emptystr()
        TCL_EvalStr("gets " + h + " ttybuf");
        tmpbuf = TCL_GetVar("ttybuf");
    end
    buf = tmpbuf;
endfunction
