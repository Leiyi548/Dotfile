#SingleInstance, Force
#MaxHotkeysPerInterval,50000
SendMode Input
SetWorkingDir, %A_ScriptDir%

;=====================================================================o
;                   禁用windows 自带快捷键
;---------------------------------------------------------------------o
; Windows 11
;#l:: ; （锁定windows窗口,我基本不用容易误触,直接禁用）无法实现禁用 win + l
#h:: ; （听写，语音输入，准确率不高，没这需求，直接禁用）
;#c:: ; Cortana，人工智障 （现在已经被文森特脚本代替）
#s:: ; (卡的要死，搜索，# 本身已经自带了，直接禁用 )
#f:: ; (反馈中心，几十年没反馈过问题,直接禁用)
#p:: ; （投影屏幕，没有别的屏幕，单机版，直接禁用）
#u:: ; (轻松设置中心，一年不用一次 ，win + i也能打开，直接禁用)
#k:: ; 打开投放功能，我根本没有显示器不需要这个功能 （直接禁用）
#b:: ; 聚焦通知局域，（根本没啥用，直接禁用）
#`;:: ;（移除windows表情有时候很烦弹出来容易出错）
#Pause:: ; 关于本机，一年不用一次我电脑就没有这个键，先放着吧
return
;=====================================================================o
;                         修改windows原生按键                         ;|
;----------------------------------o----------------------------------o
; win + q ： 退出当前窗口
#q:: send !{f4}
; alt + m ： 隐藏当前窗口 (win+alt+m实在是太难按了，要人命)
!m:: WinMinimize,A
; win + t ：窗口置顶                                                    
#t:: Winset, AlwaysOnTop, , A 
; alt + w ：选中当前单词
!w:: send ^{Left}+^{Right}
;---------------------------------------------------------------------o
^PgUp:: send,^{Home}
^PgDn:: send,^{End}
+PgUp:: send,+{Home}
+PgDn:: send,+{End}
;---------------------------------------------------------------------o
; 解决ctrl+space不切换中英文输入法，在ide中进行补全
^Space::ControlSend, , ^{Space},A

!f::
  WinGet, OutputVar, MinMax, A
  If (OutputVar)
    WinRestore, A
  Else
    WinMaximize, A
Return
;---------------------------------------------------------------------o

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