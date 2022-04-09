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

## vscodevim

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
