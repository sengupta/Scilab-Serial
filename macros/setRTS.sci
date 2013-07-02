function result=setRTS(h,rts)
// ------------------------------------------------------
// Function to set the RTS-flag
// h - handle of serial port
// rts - 0 (off), 1 (on)
//---------------------------------------------------------------//
   TCL_EvalStr("fconfigure "+h+" -ttycontrol  [list  RTS "+rts+"]")
   result=1;
endfunction
