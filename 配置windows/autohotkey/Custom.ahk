#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;=====================================================================o
;                    I dont need it any more
;---------------------------------------------------------------------o
; Windows 11
#h:: ; 听写，几乎没有麦克风
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
CapsLock::Send, {ESC} ;|        
; 实现类似于 macos cmd+q(win+q) 退出当前应用
#q:: send !{f4}
; 实现类似于 macos cmd+m(win+m) 隐藏当前窗口
#m:: WinMinimize,A
; 类似于 yabairc 使用 alt f 最大化窗口
!f:: WinMaximize,A
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
  clipboard=%clipboard% ; 把格式文本转换为纯文本
  tooltip,%clipboard%
  sleep,500
  tooltip,
return
;-----------------------------------------------------------------------o
; 使用 alt t 窗口置顶                                                    
!t:: Winset, AlwaysOnTop, , A ;|
;-----------------------------------------------------------------------o

;=====================================================================o
;  鼠标右键切换桌面                
;---------------------------------------------------------------------o
RButton::
  MIN_DIS := 60
  MouseGetPos, x_s,y_s
  KeyWait,RButton,U
  MouseGetPos,x_e
  if(x_s - x_e>MIN_DIS){
    Send ^#{Right}
  }else if(x_e - x_s > MIN_DIS){
    Send ^#{Left}
  }else{
    SendInput,{RButton}
  }

  ;---------------------------------------------------------------------o

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
