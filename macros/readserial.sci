function buf=readserial(h,n)
// 12/1/2009: corrected version after report of bug 3829  
   if ~exists("n","local") then
     N=serialstatus(h); n=N(1)
   end
   TCL_EvalStr("binary scan [read "+h+" "+string(n)+"] cu* ttybuf")
   buf=ascii(evstr(TCL_GetVar("ttybuf")));
endfunction

