#SingleInstance, Force


!f::
  WinGet, OutputVar, MinMax, A
  If (OutputVar)
    WinRestore, A
  Else
    WinMaximize, A
Return
;=====================================================================o
;                         添加一些实用小功能                            ;|
;----------------------------------o----------------------------------o
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
;-----------------------------------------------------------------------
; 窗口居中 (文森特脚本)
#c::CenterActiveWindow()
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

  WinRestore, A
  WinGetPos,,, Width, Height, ahk_id %winHandle%
  winX := A_Left + (A_Right - A_Left - Width) / 2
  winY := A_Top + (A_Bottom - A_Top - Height) / 2

  WinMove, A,, winX, winY
}

;-----------------------------------------------------------------------o
; 在windows 资源管理器用 ctrl alt c 复制文件路径到剪贴板 
;^!c::
  ;send ^c
  ;sleep,200
  ;clipboard=%clipboard% 
  ;tooltip,%clipboard%
  ;sleep,500
  ;tooltip,
;return
;-----------------------------------------------------------------------o
;                           快速启动应用                                 ;
;-----------------------------------------------------------------------o
#y::
    IfWinNotExist ahk_class YodaoMainWndClass
    {                                                                   
        run D:\有道词典\Dict\YoudaoDict.ahk_exe
    }                                                                   
    Else IfWinNotActive ahk_class YodaoMainWndClass                     
    {
        #WinActivateForce
        WinActivate
    }
    Else
    {
        WinMinimize
    }
Return
;-----------------------------------------------------------------------o
; use ctrl + alt + g to toggle chrome(google) windows
^!g:: 
    IfWinNotExist ahk_exe chrome.exe 
    { 
        Run C:\Program Files\Google\Chrome\Application\chrome.exe 
    } 
    Else IfWinNotActive ahk_exe chrome.exe 
    { 
        SetTitleMatchMode RegEx
        ; 哔哩哔哩 (゜-゜)つロ 干杯~-bilibili - Google Chrome
        ; CapSlock.ahk - dotfile - Visual Studio Code
        Chrome_ID := WinExist(".- Google Chrome")
        #WinActivateForce
        WinActivate ahk_id %Chrome_ID%
    } 
    Else 
    {
        WinMinimize
    } 
return 
;-----------------------------------------------------------------------o
#n::
    IfWinNotExist ahk_exe Obsidian.exe
    {
        run C:\Users\9\AppData\Local\Obsidian\Obsidian.exe
    }
    Else IfWinNotActive ahk_exe Obsidian.exe
    { 
        SetTitleMatchMode RegEx
        Obsidian_ID := WinExist(".- Obsidian")
        #WinActivateForce
        WinActivate ahk_id %Obsidian_ID%
    } ;|
    Else ;|
    {
        WinMinimize
    }
Return

; use ctrl + alt + o to toggle obsidian windows
^!o::
    IfWinNotExist ahk_exe Obsidian.exe
    {
        run C:\Users\9\AppData\Local\Obsidian\Obsidian.exe
    }
    Else IfWinNotActive ahk_exe Obsidian.exe
    { 
        SetTitleMatchMode RegEx
        Obsidian_ID := WinExist(".- Obsidian")
        #WinActivateForce
        WinActivate ahk_id %Obsidian_ID%
    } ;|
    Else ;|
    {
        WinMinimize
    }
Return

;----------------------------------------------------------------------o
; use ctrl + alt + c to toggle code window
^!c::
    IfWinNotExist ahk_exe Code.exe
    { 
        run D:\vscode\Microsoft VS Code\Code.exe
    } 
    Else IfWinNotActive ahk_exe Code.exe
    {
        SetTitleMatchMode RegEx
        VS_CODE_ID := WinExist(".- Visual Studio Code")
        #WinActivateForce
        WinActivate ahk_id %VS_CODE_ID%
    }
    Else
    {
        WinMinimize
    }
Return
;----------------------------------------------------------------------o
^!i:: 
    IfWinNotExist ahk_exe idea64.exe 
    { 
        run D:\idea2021\IntelliJ IDEA 2021.3.1\bin\idea64.exe
    }
    Else IfWinNotActive ahk_class SunAwtFrame
    { 
        #WinActivateForce 
        WinActivate 
    } 
    Else 
    { 
        WinMinimize 
    } 
Return 
;----------------------------------------------------------------------o

;=====================================================================o
;alt + 数字  -->  切换桌面
; alt + Shift + 数字  -->  把当前窗口带到某桌面
; [Switch to desktop] OR [Move the current window to the X-th desktop]
;=====================================================================o
; !1::
;   SwitchToDesktop(1)
; return
; !2::
;   SwitchToDesktop(2)
; return
; !3::
;   SwitchToDesktop(3)
; return
; !4::
;   SwitchToDesktop(4)
; return

SwitchToDesktop(idx){
  SwitchToDesktopByHotkey(idx)
}
SwitchToDesktopByHotkey(idx){
  SendInput ^#{Left 10}
  idx -= 1
  loop %idx% {
    SendInput ^#{Right}
  }
}
;---------------------------------------------------------------------o
;#Enter::
  ;IfWinNotExist ahk_exe alacritty.exe
  ;{
    ;run C:\Users\9\scoop\apps\alacritty\0.10.1\alacritty.exe
  ;}
  ;Else IfWinNotActive ahk_exe alacritty.exe
  ;{ 
    ;SetTitleMatchMode RegEx
    ;ALACRITTY_ID := WinExist("Alacritty-neovim")
    ;#WinActivateForce
    ;WinActivate ahk_id %ALACRITTY_ID%
  ;} 
  ;Else
  ;{
    ;WinMinimize
  ;}
;Return
;----------------------------------------------------------------------o
#Enter::
  IfWinNotExist ahk_exe WindowsTerminal.exe
  {
    run C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.13.11432.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe
  }
  Else IfWinNotActive ahk_exe WindowsTerminal.exe
  { 
    SetTitleMatchMode RegEx
    ALACRITTY_ID := WinExist("PowerShell")
    #WinActivateForce
    WinActivate ahk_id %ALACRITTY_ID%
  } 
  Else
  {
    WinMinimize
  }
Return
