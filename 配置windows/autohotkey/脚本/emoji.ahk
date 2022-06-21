#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Hotstring EndChars :
#Hotstring O

; usage :{key_name}: = emoji
;=====================================================================o
;                   		emoji.ahk                                 | 
;                      CapsLock Enhancement                           |
;---------------------------------------------------------------------o
;Description:                                                         |
;    这个脚本用来快速输入表情，提高平时编码效率							  |
; 	 参考资源：     													  |
; 	   https://github.com/alexmick/emoji-to-ahk/blob/master/emoji.ahk |
;o----------------------o---------------------------------------------o

;=====================================================================o
;                      数字表情（number）                             ;|
;---------------------------------------------------------------------o
:::zero::0️⃣                                                           ;|
:::one::1️⃣                                                            ;|
:::two::2️⃣                                                            ;|
:::three::3️⃣                                                          ;|
:::four::4️⃣                                                           ;|
:::five::5️⃣                                                           ;|
:::six::6️⃣                                                            ;|
:::seven::7️⃣                                                          ;|
:::eight::8️⃣                                                          ;|
:::nine::9️⃣                                                           ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                         手（pointer）                               ;|
;---------------------------------------------------------------------o
:::point_up::👆                                                      ;|
:::point_down::👇                                                    ;|
:::point_left::👈                                                    ;|
:::point_right::👉                                                   ;|
:::point_ok::👌                                                      ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                         动物（animal）                              ;|
;---------------------------------------------------------------------o
:::mouse::🐭                                                         ;|
:::cow::🐮                                                           ;|
:::tiger::🐯                                                         ;|
:::rabbit::🐰                                                        ;|
:::cat::🐱                                                           ;|
:::whale::🐳                                                         ;|
:::horse::🐴                                                         ;|
:::monkey_face::🐵                                                   ;|
:::pig::🐷                                                         	 ;|
:::dog::🐶                                                           ;|
:::smile_cat::😸                                                     ;|
:::joy_cat::😹                                                       ;|
:::smiley_cat::😺                                                    ;|
:::heart_eyes_cat::😻                                                ;|
:::smirk_cat::😼                                                     ;|
:::kissing_cat::😽                                                   ;|
:::pouting_cat::😾                                                   ;|
:::crying_cat_face::😿                                               ;|
:::scream_cat::🙀                                                    ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                         星星（star）                                ;|
;---------------------------------------------------------------------o
:::1star::⭐                                                         ;|
:::2star::⭐⭐                                                        ;|
:::3star::⭐⭐⭐                                                      ;|
:::4star::⭐⭐⭐⭐                                                     ;|
:::5star::⭐⭐⭐⭐⭐                                                   ;|
;---------------------------------------------------------------------o


:::eyes::👀	
:::label::🏷️
:::100::💯
:::file_folder::📁
:::dagger_knife::🗡️
:::knife::🔪
:::right::✅
:::check::✅
:::error::❎
:::heavy_check_mark::✔️
:::heart::❤️
:::poop::💩
:::shit::💩
:::ghost::👻
:::angel::👼
:::alien::👽
:::rainbow::🌈
:::beer::🍺
:::broken_heart::💔
:::bulb::💡
:::muscle::💪
:::pushpin::📌
:::fire::🔥