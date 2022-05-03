;=====================================================================o
;                   Feng Ruohang's AHK Script                         | 
;                      CapsLock Enhancement                           |
;---------------------------------------------------------------------o
;Description:                                                         |
;    This Script is wrote by Feng Ruohang via AutoHotKey Script. It   |
; Provieds an enhancement towards the "Useless Key" CapsLock, and     |
; turns CapsLock into an useful function Key just like Ctrl and Alt   |
; by combining CapsLock with almost all other keys in the keyboard.   |
;                                                                     |
;Summary:                                                             |
;o----------------------o---------------------------------------------o
;|CapsLock;             | {ESC}  Especially Convient for vim user     |
;|CaspLock + `          | {CapsLock}CapsLock Switcher as a Substituent|
;|CapsLock + hjklwb     | Vim-Style Cursor Mover                      |
;|CaspLock + uiod       | Convient Home/End PageUp/PageDn             |
;|CaspLock + nm,.       | Convient Delete Controller                  |
;|CapsLock + zxcvay     | Windows-Style Editor                        |
;|CapsLock + Direction  | Mouse Move                                  |
;|CapsLock + Enter      | Mouse Click                                 |
;|CaspLock + {F1}~{F6}  | Media Volume Controller                     |
;|CapsLock + qs         | Windows & Tags Control                      |
;|CapsLock + ;'[]       | Convient Key Mapping                        |
;|CaspLock + dfert      | Frequently Used Programs (Self Defined)     |
;|CaspLock + 123456     | Dev-Hotkey for Visual Studio (Self Defined) |
;|CapsLock + 67890-=    | Shifter as Shift                            |
;-----------------------o---------------------------------------------o
;|Use it whatever and wherever you like. Hope it help                 |
;=====================================================================o

;=====================================================================o
;                       CapsLock Initializer                         ;|
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff                                          ;|
; 开启可以跨窗口搜索
DetectHiddenWindows, on
;---------------------------------------------------------------------o

;=====================================================================o
;                       CapsLock Switcher:                           ;|
;---------------------------------o-----------------------------------o
;                    CapsLock + ` | {CapsLock}                       ;|
;---------------------------------o-----------------------------------o
CapsLock & `::                                                       ;|
    GetKeyState, CapsLockState, CapsLock, T                          ;|
    if CapsLockState = D                                             ;|
        SetCapsLockState, AlwaysOff                                  ;|
    else                                                             ;|
        SetCapsLockState, AlwaysOn                                   ;|
    KeyWait, ``                                                      ;|
return                                                               ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                         CapsLock Escaper:                          ;|
;----------------------------------o----------------------------------o
;                        CapsLock  |  {ESC}                          ;|
;----------------------------------o----------------------------------o
CapsLock::Send, {ESC}                                                ;|        
;---------------------------------------------------------------------o

;=====================================================================o
;                    CapsLock Direction Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + h |  Left                          ;|
;                      CapsLock + j |  Down                          ;|
;                      CapsLock + k |  Up                            ;|
;                      CapsLock + l |  Right                         ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & h::                                                       ;|
    if GetKeyState("control") = 0                                    ;|
    {                                                                ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, {Left}                                             ;|
        else                                                         ;|
            Send, +{Left}                                            ;|
        return                                                       ;|
    }                                                                ;|
    else {                                                           ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, ^{Left}                                            ;|
        else                                                         ;|
            Send, +^{Left}                                           ;|
        return                                                       ;|
    }                                                                ;|
return                                                               ;|
;-----------------------------------o---------------------------------o
CapsLock & j::                                                       ;|
    if GetKeyState("control") = 0                                    ;|
    {                                                                ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, {Down}                                             ;|
        else                                                         ;|
            Send, +{Down}                                            ;|
        return                                                       ;|
    }                                                                ;|
    else {                                                           ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, ^{Down}                                            ;|
        else                                                         ;|
            Send, +^{Down}                                           ;|
        return                                                       ;|
    }                                                                ;|
return                                                               ;|
;-----------------------------------o---------------------------------o
CapsLock & k::                                                       ;|
    if GetKeyState("control") = 0                                    ;|
    {                                                                ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, {Up}                                               ;|
        else                                                         ;|
            Send, +{Up}                                              ;|
        return                                                       ;|
    }                                                                ;|
    else {                                                           ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, ^{Up}                                              ;|
        else                                                         ;|
            Send, +^{Up}                                             ;|
        return                                                       ;|
    }                                                                ;|
return                                                               ;|
;-----------------------------------o---------------------------------o
CapsLock & l::                                                       ;|
    if GetKeyState("control") = 0                                    ;|
    {                                                                ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, {Right}                                            ;|
        else                                                         ;|
            Send, +{Right}                                           ;|
        return                                                       ;|
    }                                                                ;|
    else {                                                           ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, ^{Right}                                           ;|
        else                                                         ;|
            Send, +^{Right}                                          ;|
        return                                                       ;|
    }                                                                ;|
return                                                               ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                     CapsLock Home/End Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + i |  Home                          ;|
;                      CapsLock + o |  End                           ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & i::                                                       ;|
    if GetKeyState("control") = 0                                    ;|
    {                                                                ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, {Home}                                             ;|
        else                                                         ;|
            Send, +{Home}                                            ;|
        return                                                       ;|
    }                                                                ;|
    else {                                                           ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, ^{Home}                                            ;|
        else                                                         ;|
            Send, +^{Home}                                           ;|
        return                                                       ;|
    }                                                                ;|
return                                                               ;|
;-----------------------------------o---------------------------------o
CapsLock & o::                                                       ;|
    if GetKeyState("control") = 0                                    ;|
    {                                                                ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, {End}                                              ;|
        else                                                         ;|
            Send, +{End}                                             ;|
        return                                                       ;|
    }                                                                ;|
    else {                                                           ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, ^{End}                                             ;|
        else                                                         ;|
            Send, +^{End}                                            ;|
        return                                                       ;|
    }                                                                ;|
return                                                               ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                      CapsLock Page Navigator                       ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + u |  PageUp                        ;|
;                      CapsLock + d |  PageDown                      ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & u::                                                       ;|
    if GetKeyState("control") = 0                                    ;|
    {                                                                ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, {PgUp}                                             ;|
        else                                                         ;|
            Send, +{PgUp}                                            ;|
        return                                                       ;|
    }                                                                ;|
    else {                                                           ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, ^{PgUp}                                            ;|
        else                                                         ;|
            Send, +^{PgUp}                                           ;|
        return                                                       ;|
    }                                                                ;|
return                                                               ;|
;-----------------------------------o---------------------------------o
CapsLock & d::                                                       ;|
    if GetKeyState("control") = 0                                    ;|
    {                                                                ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, {PgDn}                                             ;|
        else                                                         ;|
            Send, +{PgDn}                                            ;|
        return                                                       ;|
    }                                                                ;|
    else {                                                           ;|
        if GetKeyState("alt") = 0                                    ;|
            Send, ^{PgDn}                                            ;|
        else                                                         ;|
            Send, +^{PgDn}                                           ;|
        return                                                       ;|
    }                                                                ;|
return                                                               ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                     CapsLock Mouse Controller                      ;|
;-----------------------------------o---------------------------------o
;                   CapsLock + Up   |  Mouse Up                      ;|
;                   CapsLock + Down |  Mouse Down                    ;|
;                   CapsLock + Left |  Mouse Left                    ;|
;                  CapsLock + Right |  Mouse Right                   ;|
;    CapsLock + Enter(Push Release) |  Mouse Left Push(Release)      ;|
;-----------------------------------o---------------------------------o
CapsLock & Up:: MouseMove, 0, -10, 0, R                              ;|
CapsLock & Down:: MouseMove, 0, 10, 0, R                             ;|
CapsLock & Left:: MouseMove, -10, 0, 0, R                            ;|
CapsLock & Right:: MouseMove, 10, 0, 0, R                            ;|
;-----------------------------------o---------------------------------o
CapsLock & Enter::                                                   ;|
    SendEvent {Blind}{LButton down}                                  ;|
    KeyWait Enter                                                    ;|
    SendEvent {Blind}{LButton up}                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                           CapsLock Deletor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + ,  |  delete word ahead             ;|
;                     CapsLock + .  |  delete word after             ;|
;                     CapsLock + BackSpace  | Delete a line          ;|
;                     CapsLock + [  | Delete line begin              ;|
;                     CapsLock + ]  | Delete line end                ;|
;                     CapsLock + PageUp  | Delete page to begin      ;|
;                     CapsLock + PageDown  | Delete page to end      ;|
;-----------------------------------o---------------------------------o
CapsLock & ,:: Send, ^{BS}                                           ;|
CapsLock & .:: Send, ^{Del}                                          ;|
CapsLock & BackSpace:: Send {Home}{ShiftDown}{End}{Right}{ShiftUp}{Del}
CapsLock & [:: Send +{Home}{Del}
CapsLock & ]:: Send +{End}{Del}
CapsLock & PgUp:: Send +^{Home}{bs}
CapsLock & PgDn:: Send +^{End}{bs}
;CapsLock & ,:: Send, {Del}                                          ;|
; CapsLock & m:: Send, {BS}                                          ;|
; CapsLock & n:: Send, ^{BS}                                         ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                            CapsLock Editor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + z  |  Ctrl + z (Cancel)             ;|
;                     CapsLock + r  |  Ctrl + r ( null )             ;|
;                     CapsLock + x  |  Ctrl + x (Cut)                ;|
;                     CapsLock + c  |  Ctrl + c (Copy)               ;|
;                     CapsLock + v  |  Ctrl + z (Paste)              ;|
;                     CapsLock + a  |  Ctrl + a (Select All)         ;|
;                     CapsLock + y  |  Ctrl + z (Yeild)              ;|
;                     CapsLock + w  |  Ctrl + Right(Move as [vim: w]);|
;                     CapsLock + b  |  Ctrl + Left (Move as [vim: b]);|
;-----------------------------------o---------------------------------o
CapsLock & z:: Send, ^z                                              ;|
CapsLock & r:: Send, ^r                                              ;|
CapsLock & x:: Send, ^x                                              ;|
CapsLock & c:: Send  {CtrlDown}{Insert}{CtrlUp}                      ;|
CapsLock & v:: Send  {ShiftDown}{Insert}{ShiftUp}                    ;|
CapsLock & a:: Send, ^a                                              ;|
CapsLock & y:: Send, ^y                                              ;|
CapsLock & w:: Send, ^{Right}                                        ;|
CapsLock & b:: Send, ^{Left}                                         ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                      CapsLock Window Controller                    ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + s  |  Ctrl + Tab (Swith previous Tag);|
;                     CapsLock + q  |  Ctrl + W   (Close Tag)        ;|
;   (Disabled)  Alt + CapsLock + s  |  AltTab     (Switch Windows)   ;|
;               Alt + CapsLock + q  |  Ctrl + Tab (Close Windows)    ;|
;                     CapsLock + g  |  AppsKey    (Menu Key)         ;|
;-----------------------------------o---------------------------------o
CapsLock & s::Send, ^{Tab}                                           ;|
;-----------------------------------o--------------------------------;|
CapsLock & q::                                                       ;|
    if GetKeyState("alt") = 0                                        ;|
    {                                                                ;|
        Send, ^w                                                     ;|
    }                                                                ;|
    else {                                                           ;|
        Send, !{F4}                                                  ;|
        return                                                       ;|
    }                                                                ;|
return                                                               ;|
;-----------------------------------o--------------------------------;|
CapsLock & g:: Send, {AppsKey}                                       ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                        CapsLock Self Defined Area                  ;|
;                        Custom area                                 ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + u  |  ctrl + u                      ;|
;                     CapsLock + e  |  ctrl + e                      ;|
;                     CapsLock + t  |   ctrl + t                     ;|
;                     CapsLock + p  |   previous window              ;|
;                     CapsLock + n  |   next window                  ;|
;-----------------------------------o---------------------------------o
CapsLock & t::Send, ^t                                               ;|
CapsLock & f::Send, ^f                                               ;|
CapsLock & e::Send, ^e                                               ;|
;CapsLock & p::^#Left                                                 ;|
;CapsLock & n::^#Right                                                ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                       CapsLock Media Controller                    ;|
;-----------------------------------o---------------------------------o
;                    CapsLock + F1  |  Volume_Mute                   ;|
;                    CapsLock + F2  |  Volume_Down                   ;|
;                    CapsLock + F3  |  Volume_Up                     ;|
;                    CapsLock + F3  |  Media_Play_Pause              ;|
;                    CapsLock + F5  |  Media_Next                    ;|
;                    CapsLock + F6  |  Media_Stop                    ;|
;-----------------------------------o---------------------------------o
CapsLock & F1:: Send, {Volume_Mute}                                  ;|
CapsLock & F2:: Send, {Volume_Down}                                  ;|
CapsLock & F3:: Send, {Volume_Up}                                    ;|
CapsLock & F4:: Send, {Media_Play_Pause}                             ;|
CapsLock & F5:: Send, {Media_Next}                                   ;|
CapsLock & F6:: Send, {Media_Stop}                                   ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                        CapsLock lanuch application                  ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + 1  |  Open Wechat                    ;|
;                     CapsLock + 2  |  Open DocBox                    ;|
;                     CapsLock + 3  |  Open Obsidian                  ;|
;                     CapsLock + 4  |  Open youdao                    ;|
;                     CapsLock + 6  |  Open VsCode                    ;|
;                     CapsLock + 8  |  Open jetbarin idea             ;|
;                     CapsLock + 9  |  Open Chrome                    ;|
;-----------------------------------o---------------------------------o
; 1 - 窗口标题必须以指定的 winTitle开头才能匹配
; 2 - 窗口标题任意位置包含 winTitle才能匹配
; 3 - 窗口标题必须和winTitle完全一致才能匹配
SetTitleMatchMode, 2
CapsLock & 1::
    IfWinNotExist ahk_class WeChatMainWndForPC
    {
        Run E:\WeChat\WeChat.exe
    }
    Else IfWinNotActive ahk_class WeChatMainWndForPC
    {
        #WinActivateForce
        WinActivate
    }
    Else
    {
        WinMinimize
    }
return
;----------------------------------------------------------------------o
CapsLock & 2::
    IfWinNotExist ahk_class DOCBOX_PDF_FRAME
    {
        run D:\稻壳阅读器\DocBox\DocBox.exe
    }
    Else IfWinNotActive ahk_class DOCBOX_PDF_FRAME
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
CapsLock & 3::
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
CapsLock & 4::
    IfWinNotExist ahk_class YodaoMainWndClass
    {
        run D:\有道词典\Dict\YoudaoDict.exe
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
;----------------------------------------------------------------------o
;----------------------------------------------------------------------o
CapsLock & 6::
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
CapsLock & 8:: 
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
CapsLock & 9:: 
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
;----------------------------------------------------------------------o
