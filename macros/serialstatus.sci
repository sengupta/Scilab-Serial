function [queue,status]=serialstatus(h)
   TCL_EvalStr("set ttyq [fconfigure "+h+" -queue]")
   queue=evstr(TCL_GetVar("ttyq"));
   TCL_EvalStr("set ttys [fconfigure "+h+" -ttystatus]")
   status=TCL_GetVar("ttys");
endfunction
