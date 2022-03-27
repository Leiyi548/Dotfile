# windows 系统下环境变量 PATH 和 CLASSPATH 的意思

## PATH

对于没有包含路径的命令，WINDOWS 系统会默认去 Windows 目录(C:\windows)和系统目录(C:\windows\system32)查找，如果没有找到，就去 PATH 变量内包含的路径查找

## CLASSPATH

在 JAVA 的配置中有 dt.jar，tools.jar 这两个路径的，其中 rt.jar 是 JAVA 基础类库，dt.jar 是关于运行环境的类库，tools.jar 是工具类库，用来当 JAVA 源代码中 import 一些类是，查找这些类，

## Powershell 操作环境变量

### Powershell 设置环境变量(临时)

**查看环境变量:**
PowerShell 把所有环境变量的记录保存在 env: 虚拟驱动中，`ls env:` 命令可以列出所有环境变量。根据环境变量的名称就可以使用 `$env:name` 访问。

```sh
❯ ls env:

Name                           Value
----                           -----
ALLUSERSPROFILE                C:\ProgramData
ANDROID_SDK_HOME               C:\Android
APPDATA                        C:\Users\9\AppData\Roaming
bin                            C:\MinGW\bin
CATALINA_BASE                  D:\Tomcat\apache-tomcat-9.0.60-windows-x64\apac…
CATALINA_HOME                  D:\Tomcat\apache-tomcat-9.0.60-windows-x64\apac…
CLASSPATH                      .;C:\Program Files\Java\jdk-12.0.2\lib;D:\Tomca…
CommonProgramFiles             C:\Program Files\Common Files
CommonProgramFiles(x86)        C:\Program Files (x86)\Common Files
CommonProgramW6432             C:\Program Files\Common Files
COMPUTERNAME                   LAPTOP-KR4S9FRM
ComSpec                        C:\WINDOWS\system32\cmd.exe
CONDA_PROMPT_MODIFIER          False
DriverData                     C:\Windows\System32\Drivers\DriverData
FZF_DEFAULT_OPTS               --border
GoLand                         D:\GoLand\GoLand 2021.3.4\bin;
GOPATH                         C:\Users\9\go
HOMEDRIVE                      C:
HOMEPATH                       \Users\9
include                        C:\MinGW\include
IntelliJ IDEA                  D:\idea2021\IntelliJ IDEA 2021.3.1\bin;
JAVA_HOME                      C:\Program Files\Java\jdk-12.0.2
lib                            C:\MinGW\lib
LOCALAPPDATA                   C:\Users\9\AppData\Local
LOGONSERVER                    \\LAPTOP-KR4S9FRM
MAVEN_HOME                     D:\Maven\apache-maven-3.8.4-bin\apache-maven-3.…
NUMBER_OF_PROCESSORS           8
NVIDIAWHITELISTED              0x01
NVM_HOME                       C:\Users\9\scoop\apps\nvm\current
NVM_SYMLINK                    C:\Users\9\scoop\persist\nvm\nodejs\nodejs
OneDrive                       C:\Users\9\OneDrive
OneDriveConsumer               C:\Users\9\OneDrive
OS                             Windows_NT
Path                           C:\Users\9\AppData\Local\oh-my-posh;C:\Program …
PATHEXT                        .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WS…
POSH_GIT_ENABLED               False
POSH_PATH                      C:\Users\9\AppData\Local\oh-my-posh
POSH_THEME                     C:\Users\9\AppData\Local\oh-my-posh\themes\powe…
POSH_THEMES_PATH               C:\Users\9\AppData\Local\oh-my-posh\themes
POWERLINE_COMMAND              oh-my-posh
POWERSHELL_DISTRIBUTION_CHANN… MSI:Windows 10 Home China
PROCESSOR_ARCHITECTURE         AMD64
PROCESSOR_IDENTIFIER           Intel64 Family 6 Model 142 Stepping 12, Genuine…
PROCESSOR_LEVEL                6
PROCESSOR_REVISION             8e0c
ProgramData                    C:\ProgramData
ProgramFiles                   C:\Program Files
ProgramFiles(x86)              C:\Program Files (x86)
ProgramW6432                   C:\Program Files
PSModulePath                   C:\Users\9\Documents\PowerShell\Modules;C:\Prog…
PUBLIC                         C:\Users\Public
PyCharm                        D:\Pycharm\PyCharm 2021.3.2\bin;
PYTHON_HOME                    D:\dev\env\python
SHIM_MCCOMPAT                  0x810000001
SystemDrive                    C:
SystemRoot                     C:\WINDOWS
TEMP                           C:\Users\9\AppData\Local\Temp
TMP                            C:\Users\9\AppData\Local\Temp
USERDOMAIN                     LAPTOP-KR4S9FRM
USERDOMAIN_ROAMINGPROFILE      LAPTOP-KR4S9FRM
USERNAME                       Windows
USERPROFILE                    C:\Users\9
windir                         C:\WINDOWS
WSLENV                         WT_SESSION::WT_PROFILE_ID
WT_PROFILE_ID                  {574e775e-4f2a-5b96-ac1e-a2962a402336}
WT_SESSION                     0b4ac096-3962-4556-ace6-771df08bd686
ZES_ENABLE_SYSMAN              1
```

可以参考 CMD 中的变量，将 CMD 中的 %变量名% 替换为 PowerShell 的格式 $env:变量名。
比如 CMD 中的 %windir% 替换成 PowerShell 就是 $env:windir：

```sh
❯ $env:windir
C:\WINDOWS
```

### 创建或者更新环境变量

语法：$env:变量名称=”变量值”
**如果原有变量名称已经存在则覆盖**

```sh
❯ $env:Test1="This is a test"
❯ $env:Test2="This is a test2"
❯ ls env:Test*

Name                           Value
----                           -----
Test1                          This is a test
Test2                          This is a test2:
```

### 删除环境变量

语法：del env:变量名称。例如要删除环境变量中的 windir：

```sh
❯ del env:Test1
❯ ls env:Test*

Name                           Value
----                           -----
Test2                          This is a test2
```

**不用担心，这里跟 set 操作环境变量一样，只对当前会话有效。**

### 追加环境变量

$env:变量名称=”$env:变量名称;变量值”

```sh
❯ $env:Test1="This is a test1"
❯ $env:Test1="$env:Test1;append"
❯ ls env:Test1

Name                           Value
----                           -----
Test1                          This is a test1;append
```

### PowerShell 持久化操作环境变量

上述对于环境变量的操作只会影响当前 PowerShell 会话，并没有更新在系统上，所以这里也没有区分”用户变量”和”系统变量”，操作的是两者的合集。

要写入环境变量到系统中，需要使用 .NET 方法 [[environment]::SetEnvironmentvariable](https://docs.microsoft.com/zh-cn/dotnet/api/system.environment.setenvironmentvariable?view=net-5.0) 操作环境变量。

首先我们看看如何分别查看”用户变量”和”系统变量”中的 “PATH”。

```sh
# 用户变量
❯ [environment]::GetEnvironmentVariable("Path","User")
C:\Users\9\scoop\apps\mingw\current\bin;C:\Users\9\scoop\apps\nvm\current\nodejs\nodejs;
C:\Users\9\scoop\apps\oh-my-posh\current\bin;C:\Users\9\scoop\shims;C:\Users\9\AppData\Local\Microsoft\WindowsApps;
D:\Bandizip\;D:\PyCharm 2019.3.3\bin;D:\idea2021\IntelliJ IDEA 2021.3.1\bin;C:\Users\9\.dotnet\tools;
C:\Users\9\AppData\Roaming\npm;D:\vscode\Microsoft VS Code\bin;C:\Users\9\AppData\Local\Microsoft\WindowsApps;
D:\GoLand\GoLand 2021.3.4\bin;;C:\Users\9\go\bin

#系统变量

❯ [environment]::GetEnvironmentvariable("Path", "Machine")
D:\VM\bin\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;
C:\Windows\System32\OpenSSH\;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;
C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\Program
Files\Java\jdk-12.0.2\bin;C:\MinGW\bin;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;
C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Program Files\MySQL\MySQL Server 5.5\bin;
C:\Program Files\dotnet\;C:\Program Files\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL
Server\110\Tools\Binn\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL
Server\110\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft Visual Studio 10.
0\Common7\IDE\PrivateAssemblies\;C:\Program Files (x86)\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files\Java\jdk-12.0.
2\jre\bin;C:\Program Files\nodejs;D:\BaiduNetdiskDownload\Git\bin;D:\BaiduNetdiskDownload\Git\mingw64\bin;
D:\BaiduNetdiskDownload\Git\mingw64\libexec\git-core;D:\Maven\apache-maven-3.8.4-bin\apache-maven-3.8.4\bin;C:\Program
Files\PowerShell\7\;D:\vscode\Microsoft VS Code\bin;C:\Program Files (x86)\dotnet\;C:\Program Files\Go\bin;
D:\Tomcat\apache-tomcat-9.0.60-windows-x64\apache-tomcat-9.0.60\lib;D:\Tomcat\apache-tomcat-9.0.
60-windows-x64\apache-tomcat-9.0.60\bin;D:\dev\env\python;D:\dev\env\python\Scripts;
```

好在写入环境变量的时候，两个分号也没有问题，所以在追加环境变量的时候原有变量值以分号分割，结尾不用分号为妥。
**写入环境变量**

```sh
# 用户变量
[environment]::SetEnvironmentvariable("变量名称", "变量值", "User")

# 系统变量
[environment]::SetEnvironmentvariable("变量名称", "变量值", "Machine")
```

**示例：新建和追加环境变量：**

这里以 fzf 配置为例:
图形界面（Windows 11）：设置 -> 搜索环境变量 -> 环境变量…

```sh
[environment]::SetEnvironmentvariable("FZF_DEFAULT_OPTS", "$env:--border", "User")

```

## 参考文章

[Windows 10 环境变量：通过 CMD 和 PowerShell 写入环境变量](https://sysin.org/blog/windows-env/)
