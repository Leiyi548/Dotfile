# windows-cmd 取别名

## 前言

当我在使用 windows powershell7 我那个时候觉得蛮好，不过有个非常严重的缺点，我根本接受不了就是启动速度实在是太慢了，启动一个 powershell7 在 vscode 中，居然需要 **4s**时间，这个让我平时的工作流就会突然被打断。

于是，我就转回了 windows 的 cmd，虽然牺牲了很多功能和 ui，但是**启动速度实在是飞快**！

## 新键文件 cmd_auto.bat 文件

将这个文件建立到任意的位置。
然后将下面内容复制到文件内

```bat
doskey ls=dir /b $*
doskey ll=dir /od/p/q/tw
doskey cl=cls
doskey clear=cls
doskey mv=rename $*
doskey cp=copy $*
doskey rm=del $*

doskey vim=nvim $*
doskey lg=lazygit
doskey gs=git status -s
doskey ga=git add $*
doskey gcz=git cz
doskey gmc=gitmoji -c
doskey gcm=git commit -m $*
doskey gb=git branch $*
doskey gco=git checkout $*
doskey weather=curl -H "Accept-Language: zh" wttr.in/nanchang
doskey open=explorer.exe $*

cls
@echo --- The command initialization is complete ---
```

当我们这里取好别名在这个里面的话，我们想每次打开一个 cmd 都自动运行这个脚本的话，那么我们就需要在注册表中进行操作

我们首先使用 `win+r` 输入 register 打开 windows 注册表
然后我们在路径 `计算机\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor`

![cmd-alias](..%5C..%5Cimg%5C2022-06-01-21-10-12.png)
新建一个 字符串值，名字叫 AutoRun，值是上面文件的绝对路径，就此完成，开始在 windows 的 cmd 里体验 linux 命令敲打的快感吧
