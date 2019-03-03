function buf=readserial(h,n)
// 12/1/2009: corrected version after report of bug 3829  
   if ~exists("n","local") then
     N=serialstatus(h); n=N(1)
   end
   TCL_EvalStr("set ttybuf [read " + h + " " + string(n) + "]")
   buf = TCL_GetVar("ttybuf");
endfunction

