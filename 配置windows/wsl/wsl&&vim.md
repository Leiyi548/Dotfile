# wsl&&vim

## wsl 安装

具体看这篇博客
[ubuntu20.4 wsl 安装](https://www.cnblogs.com/guojikun/p/15092696.html)

## wsl 支持 vim 剪贴板

```text
1.确保 Vim 有剪贴板的支持。终端运行 vim --version |grep clipboard ，结果应该是 +clipboard ，如而不是 -clipboard。或者在 vim 编辑器中运行命令 :echo has("clipboard") ，若结果是 0 ，表示 vim 没有剪贴板的支持。
2.如果没有剪贴版支持，你需要安装剪贴板支持，在终端运行 sudo apt install vim-gtk
现在你就可以使用 *p、*y 命令进入 Windows 系统的剪贴板了。或者通过添加 set clipboard=unnamed 到 ~/.vimrc 文件中，设置为默认。
```

## wsl 支持 neovim 剪贴板

1. 我们需要安装 [win32.yank.exe](https://github.com/equalsraf/win32yank) 这个文件 下载 win32yank-x64.zip

2. 解压这个 zip 文件获得里面的 win32.yank.exe 文件,然后我们就把它放入/usr/bin/文件夹下面

3. 给这个文件提供权限 `sudo chmod 777 win32.yank.exe`

4. 在 neovim\_ 添加如下代码

```lua
-- wsl yanking to windows clipboard from nvim
vim.g.clipboard = {
  name = "win32yank-wsl",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf"
  },
  paste = {
    ["+"] = "win32yank.exe -o --crlf",
    ["*"] = "win32yank.exe -o --crlf"
  },
  cache_enable = 0
}
```

现在就能愉快的进行 neovim 的复制粘贴,而且对 neovim 启动速度没有什么影响哦
