# wsl&&vim

## wsl 支持 vim 剪贴板

```text
1.确保 Vim 有剪贴板的支持。终端运行 vim --version |grep clipboard ，结果应该是 +clipboard ，如而不是 -clipboard。或者在 vim 编辑器中运行命令 :echo has("clipboard") ，若结果是 0 ，表示 vim 没有剪贴板的支持。
2.如果没有剪贴版支持，你需要安装剪贴板支持，在终端运行 sudo apt install vim-gtk
现在你就可以使用 *p、*y 命令进入 Windows 系统的剪贴板了。或者通过添加 set clipboard=unnamed 到 ~/.vimrc 文件中，设置为默认。
```
