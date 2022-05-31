#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;=====================================================================o
;                    I dont need it any more
;---------------------------------------------------------------------o
; Windows 11
; #l:: ; 锁定windows窗口,我基本不用容易误触,取消掉比较好
#h:: ; 听写，几乎没有麦克风
  ; #c:: ; Cortana，人工智障
#p:: ; 投影屏幕，没有别的屏幕，单机版
#s:: ; 搜索，# 本身已经自带了
#f:: ; 反馈中心，几十年没反馈过问题
#u:: ; 轻松设置中心，一年不用一次
#Pause:: ; 关于本机，一年不用一次
#b:: ; 显示隐藏托盘，用手点击或者win召唤即可，为idea让步
^#f:: ; 搜索本地电脑，没有局域网
return
;=====================================================================o
;                         修改windows原生按键                         ;|
;----------------------------------o----------------------------------o
; 实现类似于 macos cmd+q(win+q) 退出当前应用
#q:: send !{f4}
; 实现类似于 macos alt+m(win+m) 隐藏当前窗口
!m:: WinMinimize,A
; 选中当前单词
!w:: send ^{Left}+^{Right}
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

  WinRestore, A
  WinGetPos,,, Width, Height, ahk_id %winHandle%
  winX := A_Left + (A_Right - A_Left - Width) / 2
  winY := A_Top + (A_Bottom - A_Top - Height) / 2

  WinMove, A,, winX, winY
}
;-----------------------------------------------------------------------o
; 在windows 资源管理器用 ctrl alt c 复制文件路径到剪贴板 
^!c::
  send ^c
  sleep,200
  clipboard=%clipboard% 
  tooltip,%clipboard%
  sleep,500
  tooltip,
return
;-----------------------------------------------------------------------o
; 使用 alt t 窗口置顶                                                    
!t:: Winset, AlwaysOnTop, , A 
;-----------------------------------------------------------------------o

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
;=====================================================================o
;                    Recycle
;---------------------------------------------------------------------o
; #IfWinActive, ahk_exe idea64.exe
; ; Leetcode in diea
; #s:: send, ^#!s{Enter} ; submit
; #t:: send, ^#!t{Enter} ; test
; #p:: send, ^#!p        ; position
; #0:: send, ^#!0        ; colapse
; #b:: send, ^!b         ; jump to implement
;---------------------------------------------------------------------o
;----------------------------------------------------------------------o
#Enter::
  IfWinNotExist ahk_exe alacritty.exe
  {
    run C:\Users\9\scoop\apps\alacritty\0.10.1\alacritty.exe
  }
  Else IfWinNotActive ahk_exe alacritty.exe
  { 
    SetTitleMatchMode RegEx
    ALACRITTY_ID := WinExist("Alacritty-neovim")
    #WinActivateForce
    WinActivate ahk_id %ALACRITTY_ID%
  } 
  Else
  {
    WinMinimize
  }
Return
;----------------------------------------------------------------------o
^PgUp:: send,^{Home}
^PgDn:: send,^{End}
+PgUp:: send,+{Home}
+PgDn:: send,+{End}

; 解决ctrl+space不切换中英文输入法，在ide中进行补全
^Space::ControlSend, , ^{Space},A

!f::
  WinGet, OutputVar, MinMax, A
  If (OutputVar)
    WinRestore, A
  Else
    WinMaximize, A
Return
