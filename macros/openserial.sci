function h=openserial(p,smode,translation,handshake,xchar,timeout)
//port name
  if ~exists("p","local") then p=1; end
  if type(p)==1 | type(p)==8 then
    if p<=0 then error("port number must be greater than zero"); end
    if getos() == "Windows" then
      port = "\\\\.\\com" + string(p)
    else
      port="/dev/ttyS"+string(p-1)
    end
  elseif type(p)==10
     port=p
  else
     error("port to open must be either a number or a string")
  end

  TCL_EvalStr("set porthandle [open "+port+" r+]"); 
  h=TCL_GetVar("porthandle");
    
// parsing communication modes: via fconfigure: -translation
// -mode,-handshake, -xchar, -timeout, -blocking
//   translation=["auto","binary","cr","crlf","lf"]
//   handshake=["none","rtscts","xonxoff","dtrdsr"]
//   xchar=[,]

  if exists("smode","local") then
    TCL_EvalStr("fconfigure "+h+" -mode "+smode)
  end
  
//defalut translation is binary to avoid input character count skew  
  if ~exists("translation","local") then
     translation="binary"
  end
  
  TCL_EvalStr("fconfigure "+h+" -translation "+translation)  
//does nonblocking work the way I'd expect?
  if ~exists("blocking","local") then
     blocking=%f
  end
  
  TCL_EvalStr("fconfigure "+h+" -blocking "+string(bool2s(blocking))) 

  if exists("handshake","local") then
    TCL_EvalStr("fconfigure "+h+" -handshake "+handshake)
  end   
  
  if exists("xchar","local") then
    TCL_EvalStr("fconfigure "+h+" -xchar {"+string(xchar)+"}")
  end
  
  if exists("timeout","local") then
    TCL_EvalStr("fconfigure "+h+" -timeout {"+string(timeout)+"}")
  end   
endfunction
