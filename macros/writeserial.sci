function result=writeserial(h,buf)
//  12/1/2009: corrected version after report of bug 3829  
   if ~exists("buf","local") then 
      TCL_EvalStr("set writeresult [catch {flush "+h+"}]")
   else
      TCL_EvalStr("set writeresult [catch {puts -nonewline "+h+..
                  " [binary format c* {"+msprintf(" %d",ascii(buf(:))')+..
                  "}]; flush "+h+"}]")
   end
   result=-eval(TCL_GetVar("writeresult"));
endfunction


