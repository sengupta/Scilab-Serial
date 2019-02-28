function result=closeserial(h)
  TCL_EvalStr("set closeresult [catch {close "+string(h)+"}]"); 
  result=-evstr(TCL_GetVar("closeresult"));
endfunction
