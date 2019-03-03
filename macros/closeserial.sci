function result=closeserial(h)
  TCL_EvalStr("set closeresult [catch {close " + h + "}]"); 
  result = -evstr(TCL_GetVar("closeresult"));
endfunction
