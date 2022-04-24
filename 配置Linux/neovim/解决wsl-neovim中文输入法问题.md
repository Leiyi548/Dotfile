# 解决 wsl 中 neovim 中文输入法问题

## 前言

我以前是一名 MacOS 用户，现在切换到 windows 一开始觉得自己以后都用不到 neovim，后面了解到 wsl2。
发现在 wsl2 上面运行 neovim 感觉也不错。

不过随着使用，发现了蛋疼的问题，后面知道 wsl2 可以直接运行 windows 上的程序调用，然后就可以通过这个来调节输入法。

## 安装 im-select

[直接下载 exe 文件](https://github.com/daipeihust/im-select/raw/master/im-select-win/out/x86/im-select.exe)

下载安装好,记得他的路径。我这里演示为 download 文件夹

## 切换到 wsl2

将目录切换到你 `im-select.exe` 下载的目录

```sh
sudo cp im-select.exe /usr/bin/
```

这样我们就能够在 wsl2 的终端内调用 `im-select`这个命令

### 了解 im-select 基本用法

`im-select`
输出当前输入法所代表的码
默认 windows 英文输入法的码是 1033

`im-select 1033`
直接切换到英文输入法
如果修改码,就能实现不同输入法的切换

## 下载 vim 插件

使用你最喜欢的插件管理器,这里用 packer.nvim 或者 vim-plug 示例

- packer.nvim

```lua
use{"Leiyi548/vim-im-select"}
```

- vim-plug

```vimL
plug "Leiyi548/vim-im-select"
```

## 注意

如果你按照前面的步骤的话,那么你就可以不用配置了。安装下载插件就能够直接实现这个功能。
如果运行这个插件报错的话,那么清检查你前面的步骤,是否出错了.
