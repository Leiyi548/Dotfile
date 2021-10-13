# NeovimConfig
My Neovim configure in Macos

Thank you! you watching my config of neovim, I'm so happy, you can watch my neovimconfig to be well!

I use packer.nvim to manage my plug-ins. This plug-in is very good and can be lazy to load plug-ins

I switch vimscript to lua,So I don't use vimplug to manage my plugins,But it's a good plug-in manager.

## Screen shot
+ dashboard
![photo](https://gitee.com/gu-shenwei666/blogimg/raw/master/image/20211010005801.png)
+ markdown
![photo](https://gitee.com/gu-shenwei666/blogimg/raw/master/image/20211010005849.png)
+ rnvimr
![photo](https://gitee.com/gu-shenwei666/blogimg/raw/master/image/20211010010544.png)
+ Vista and nvimtree
![photo](https://gitee.com/gu-shenwei666/blogimg/raw/master/image/20211010010752.png)

![startuptime](https://gitee.com/gu-shenwei666/blogimg/raw/master/image/20211013201426.png)

```
I use packer.nvim to lazy load plugins 
lazy load 80% plugins 
```

<++>
## colorscheme
I use vscode.nvim 

##UPDATE Diary
+ 10.10

update **markdown** 

| markdown | operation     |
|----------|---------------|
| ,b       | boldfont      |
| ,c       | add codeblock |
| ,p       | photolink     |
| ,d       | highlight     |
| ,1       | h1            |
| ,2       | h2            |
| ,3       | h3            |
| ,4       | h4            |
| ,l       | line between  |


+ 10.9
```
update rnvimr plugins
This is an amazing plugin that you can use to open Ranger and open the file of your choice in a new tab
update vista
This is an amazing plugin that you can use to open sidebar to managed file type
update markdownprew.neovim
you can use  :markdownprew  to watch markdown in your favourite browser!

```


+ 10.3
update asyncrun 

```
 terminal run  <leader>lr
 floaterm run <leader>r
 use X to forcely delete buffer or <leader>bd
 <leader>bf go to first buffer
 <leader>bl go to last buffer

```

### 快捷键 visual-multi-mode

| 按键         | 模式                  | 描述                                                                                                                                          | 提供者               |
|--------------|-----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|----------------------|
| tab          | vsiual-multi-mode     | 光标和扩展模式直接切换                                                                                                                        | vim-visual-multi     |
| shift-左右键 | normal                | 选中区域并进入vim-visual-multi-mode                                                                                                           | vim-visual-multi     |
| ctrl-c       | noraml                | 在当前位置插入一个光标(然后使用上下左右键移动到指定位置添加下一个光标,hjkl键会移动添加的光标)                                                 | vim-visual-multi     |
| ctrl-down/up | noraml                | 垂直方向插入光标                                                                                                                              | vim-visual-multi     |
| ctrl-s       | normal/visual         | 1.选中当前光标下的所有单词 2.visual模式下选中所有的当前选中的内容                                                                             | vim-visual-multi     |
| ctrl-n/N     | normal                | 在visul模式选中内容之后, 按下ctrl-n会在下一处与当前行选中内一样的地方插入光标.非visual模式下,与ctrl-s表现差不多,不过是依次选择当前光标下的单词 | vim-vim-visual-multi |
| q            | vim-visual-multi-mode | 取消当前光标或者选中的区域                                                                                                                    | vim-visual-multi     |
| ]/[          | vim-visual-multi-mode | 跳到下一个/上一个匹配的模式,可以代替]/[进行使用                                                                                               | vim-visual-multi     |
| S            | vim-visual-multi      | 在多光标模式下,将多个选中的内容以某种符号进行包围                                                                                             | vim-vim-visual-multi |

