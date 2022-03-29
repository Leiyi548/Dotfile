# scoop安装和使用

## Install

### 步骤一: 在 PowerShell 中打开远程权限

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser;
```

### 步骤二: 自定义安装目录

```powershell
$env:SCOOP='Your_Scoop_Path'
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
```

> 如果跳过该步骤， Scoop 将默认把所有用户安装的 App 和 Scoop 本身置于 C:\Users\user_name\scoop

### 步骤三: 下载安装 scoop

```powershell
$ Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
# 或者使用下面这条命令
$ iwr -useb get.scoop.sh | iex
```

### 添加国内镜像 gitee

```powershell
iwr -useb https://gitee.com/glsnames/scoop-installer/raw/master/bin/install.ps1 | iex
scoop config SCOOP_REPO 'https://gitee.com/glsnames/Scoop-Core'
scoop update
```

## Usage

如果问题就去看官方README.md或者使用 `scoop --help` 看看。

## 参考资料

- [scoop 官方介绍](https://scoop.sh/)
- [scoop 知乎文章](https://zhuanlan.zhihu.com/p/128955118)
- [scoop github](https://github.com/ScoopInstaller/Scoop)
