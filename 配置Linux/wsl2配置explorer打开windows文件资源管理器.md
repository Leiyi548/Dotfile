# wsl2 配置 explorer 打开 windows 文件资源管理器

## 前言

我在使用 wsl2 的过程中,我发现当我将 wsl2 这个终端当作我的主流终端来使用,我发现一些问题.
当我在 MacOS 的终端中,我切换到一些目录,这个时候,我想要用系统自带的文件管理器来查看,我只需要使用 `open .`就能打开 MacOS 自带的资源管理器

而我在 wsl2 中发现不行,没有这个命令,那么我们要怎么实现呢?

## windows powershell 打开 windows 文件资源管理器

windows 在 powershell 里面 `explorer .`就能实现和 MacOS 一样的功能
那么我们只需要把 explorer.exe 这个命令移动到 wsl2 的 ubuntu 系统内,就能调用这个命令来打开 windows 的文件资源管理器

## 移动 explorer.exe 到 ubuntu

`explorer.exe`这个在`C:username/Windows`这个文件夹

- username 是你电脑的用户名

在上面那个目录打开 ubuntu 终端

```sh
sudo cp explorer.exe /usr/bin/
```

现在我们就能直接在 ubuntu 中使用 explorer.exe 这个命令来打开文件资源管理器

## 设置别名 open 打开文件资源管理器

- zsh
  `vim ~/.zshrc`
- bash
  `vim ~/.bashrc`

```sh
alias open="explorer.exe"
# 退出vim :q

source ~/.zshrc
```

现在我们就能够通过 `open` 这个命令快乐的玩耍
