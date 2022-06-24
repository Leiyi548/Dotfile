;#SingleInstance, Force
#MaxHotkeysPerInterval,50000
SendMode Input
SetWorkingDir, %A_ScriptDir%
; 开启可以跨窗口搜索
DetectHiddenWindows, on

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
; win + q ： 强制退出当前窗口
#q:: send !{f4}
; alt + m ： 隐藏当前窗口 (win+alt+m实在是太难按了，要人命)
!m:: WinMinimize,A
; win + t ：窗口置顶                                                    
#SingleInstance, Force

; win + t 置顶当前窗口
#t:: Winset, AlwaysOnTop, , A 
; alt + d ：选中当前单词
!d:: send ^{Left}+^{Right}
;---------------------------------------------------------------------o
; 被其他热键取代让它回到原本位置
;^PgUp:: send,^{Home}
;^PgDn:: send,^{End}
;+PgUp:: send,+{Home}
;+PgDn:: send,+{End}
; 切换窗口 ;RAlt & w::AltTab
;RAlt & s::ShiftAltTab
;---------------------------------------------------------------------o
; 解决ctrl+space不切换中英文输入法，在ide中进行补全
^Space::ControlSend, , ^{Space},A

; 在idea中alt+enter=alt+insert
#IfWinActive ahk_class SunAwtFrame
    !Enter:: send,!{insert}
Return