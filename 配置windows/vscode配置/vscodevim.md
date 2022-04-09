# vscodevim

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
