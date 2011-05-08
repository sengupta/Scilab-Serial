function result=closeserial(h)
  TCL_EvalStr("set closeresult [catch {close "+string(h)+"}]"); 
  result=-eval(TCL_GetVar("closeresult"));
endfunction
