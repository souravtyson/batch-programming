Set WshShell = WScript.CreateObject("WScript.Shell") 
WshShell.AppActivate("Firefox")
WshShell.SendKeys "{F5}"
WshShell.AppActivate("TextPad")