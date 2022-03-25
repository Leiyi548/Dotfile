#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Use alt g to open Chrome
!g::
  WinActivate ahk_exe C:\Program Files\Google\Chrome\Application\chrome.exe
return

; Use alt i to open jetbrain idea
!i::
  WinActivate ahk_exe D:\idea2021\IntelliJ IDEA 2021.3.1\bin\idea64.exe
return

; Use Alt n to open Obsidian to write notes
!n::
  WinActivate ahk_exe C:\Users\9\AppData\Local\Obsidian\Obsidian.exe
return
/*
===
=== 修改 windows 原生按键
===
*/
; 实现类似于 macos cmd+q(win+q) 退出当前应用
#q:: send !{f4}

; 实现类似于 macos cmd+m(win+m) 隐藏当前窗口
#m:: WinMinimize,A

; 类似于 yabairc 使用 alt f 最大化窗口
!f:: WinMaximize,A

/*
===
=== 添加一些实用小功能
===
*/

; 鼠标放在任务栏，滚动滚轮实现音量的加减
~WheelUp:: 
  if (existclass("ahk_class Shell_TrayWnd")=1) 
    Send,{Volume_Up} 
Return 
~WheelDown:: 
  if (existclass("ahk_class Shell_TrayWnd")=1) 
    Send,{Volume_Down} 
Return 

Existclass(class) 
{ 
  MouseGetPos,,,win 
  WinGet,winid,id,%class% 
  if win = %winid% 
    Return,1 
  Else 
    Return,0 
}

; 窗口居中 (文森特脚本)
#c::CenterActiveWindow() ; Win+C
CenterActiveWindow()
{
  winHandle := WinExist("A")

  VarSetCapacity(monitorInfo, 40)
  NumPut(40, monitorInfo)

  monitorHandle := DllCall("MonitorFromWindow", "uint", winHandle, "uint", 0x2)
  DllCall("GetMonitorInfo", "uint", monitorHandle, "uint", &monitorInfo) 

  A_Left := NumGet(monitorInfo, 20, "Int")
  A_Top := NumGet(monitorInfo, 24, "Int")
  A_Right := NumGet(monitorInfo, 28, "Int")
  A_Bottom := NumGet(monitorInfo, 32, "Int")

  WinGetPos,,, Width, Height, ahk_id %winHandle%
  winX := A_Left + (A_Right - A_Left - Width) / 2
  winY := A_Top + (A_Bottom - A_Top - Height) / 2

  WinMove, A,, winX, winY
}

; 在windows 资源管理器用 ctrl alt c 复制文件路径到剪贴板 
^!c::
  send ^c
  sleep,200
  clipboard=%clipboard% ; 把格式文本转换为纯文本
  tooltip,%clipboard%
  sleep,500
  tooltip,
return

; 使用 alt t 窗口置顶 
!t:: Winset, AlwaysOnTop, , A 
/*
===
=== 缩写
===
*/