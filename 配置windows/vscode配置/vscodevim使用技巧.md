# vscodevim 使用技巧

ideavim 和 vscodevim 十分相像所以 vscodevim 可以用,ideavim 基本也能使用

## vscodevim 快捷键

vscodevim 这个插件能够让你在 vscode 中实现 vim，这是我最喜欢的插件。

## autohotkey 改建

下面是我自己定义的键位图

![img](../../img/keyboard-layout.png)

### 定义键位图网站

[keyboard-layout](http://www.keyboard-layout-editor.com/#/gists/64d34ea30c1220a7c7aec8517bc05200)

## vscode vim 精确搜索

### Test area

```text
helloworld hello
cursor in here
hello
```

1、如果你输入 `/hello` 你就可以从当前光标往后进行搜索包括 hello 的句子和单词

2、如果你输入 `?hello` 你就可以从当前光标往前进行搜索包括 hello 的句子和单词

3、如果你要精确匹配 hello 而不包括 helloworld
`/\<hello`代表搜索以 hello 开头的句子和单词
`/hello\>`代表搜索以 hello 结尾句子和单词
那么就需要输入 `/\<hello\>` 就精确匹配 hello 这个单词

## vscodevim 基本建

### g 在 vim 中的作用

#### 普通使用

- `ge` : 移动到上一个单词的结尾
- `gd` : 去函数定义(vscode 自定义快捷键)
- `g*` : 搜索单词在光标下(和`*`相似但是 `g\*`在 hello 它会搜索 helloworld) (向后)
- `g#` : 和 g\*作用相同不过是相反方向 (向前)
- `gf` : 跳转到光标下的文件
- `g]` : 跳转到标记定义(标记可以是函数或变量或更多)。

#### 命令行使用

vscodevim 还没有实现

## vscodevim 标记(mark)

vim 中可以给文档打 mark，然后根据 mark 名称做快速跳转。mark 名称只有一个字符：`a-zA-Z`，

### 创建标记

`m label` label 为标记名

### 列出标记

`:marks` 列出所有标记

系统内置特殊标记(special mark):

- . 最近编辑的位置
- 0~9 最近使用的文件
- ^ 最近插入的位置
- ' 上一次跳转前的位置
- " 上一次退出文件时的位置
- [ 上一次修改的开始处
- ] 上一次修改的结尾处

### 跳转

- `' label` 跳转到标记行第一个非空字符
- `` ` label`` 跳转到标记的位置
- `` g`label `` 或者` g`` ` 等，添加`g`，可以在不修改 jumplist 下跳转

### 清除标记

清除所有标记(mark)
`:delmarks!`

清除多个标记
`:delmarks abc`将删除 a b c 标记

### 命令总结

- m ——创建标记
- ' ——移动到标记的文本行首
- ` ——移动到标记的光标位置
- :marks ——列示所有标记
- :delmarks ——删除指定标记
- :delmarks! ——删除所有标记

## vscodevim 跳转

### jumplist

Vim 可以记录我们最近访问的位置（location）。
每个位置（position）（position 包括了文件名，列号，行号）会被一个 jump list （跳转表）中，每个窗口（window）都有一个单独的 jump list，它可以记录**最近 100 个访问的位置。**

像搜索（search）, 替换（substitue）和标记（mark）的命令都被认为是一个“jump”(跳转)，但是在一个文件中进行滚动并不是一个 jump. 详见 :h jump-motions.

> A "jump" is one of the following commands: "'"', "`", "G", "/", "?", "n",
> "N", "%", "(", ")", "[[", "]]", "{", "}", ":s", ":tag", "L", "M", "H" and
> the commands that start editing a new file.

- `ctrl` + `o` 用于在跳转列表中移动光标做旧条目。
- `ctrl` + `i` 用于将光标移动到跳转列表中较新的条目。

### 使用

显示跳列表
`:jumps`

#### 什么样的操作会被记录进 jumplist 呢?

- marks 跳转
- G 和 (count)G 跳转
- gg 和 (count)gg 跳转
- 搜索与搜索跳转
- 窗口中跳转
  - H 窗口顶
  - M 窗口中间
  - L 窗口底部

### 参考资料

- [:h jump-motions](http://vimdoc.sourceforge.net/htmldoc/motion.html#jump-motions)
