# CapsLock 与 Esc 对调

有时候需要频繁使用`Esc`键，但`Esc`键在键盘中位置较远，操作不便。相对而言，`CapsLock`键使用频率较低，但位于更方便的位置，这时可以考虑将两键的位置对调。以下是具体操作方法：

一、新建.txt 文件，将下列代码复制粘贴到该文件中，并重命名为.reg 格式文件。

```reg
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
"Scancode Map"=hex:00,00,00,00,00,00,00,00,03,00,00,00,3a,00,01,00,01,00,3a,00,00,00,00,00
```

二、双击确定，然后重启电脑即可。

三、想要恢复默认设置时，可按如下操作：

> 1.win+R 2.输入 regedit，回车 3.打开路径：
> HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout
>
> 4.找到映射文件：`Scancode Map`，其之后跟着的一长串数字，即为当初修改按键映射的数字串。 5.删除该映射文件，再重启电脑，键盘就可以恢复按键原本的位置了。
