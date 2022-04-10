- [Markdown Preview Enhance](#markdown-preview-enhance)
- [Markdown All in One](#markdown-all-in-one)
  - [feature](#feature)
    - [List editing](#list-editing)
  - [常用快捷键(我修改过的)](#常用快捷键我修改过的)
  - [自动为这篇 markdown 生成目录](#自动为这篇-markdown-生成目录)
- [Paste Image](#paste-image)
  - [设置](#设置)

用 vscode 写 markdown 需要下面三个插件:

- [Markdown Preview Enhance](https://github.com/shd101wyy/vscode-markdown-preview-enhanced)
- [Markdown All in One](https://github.com/yzhang-gh/vscode-markdown#keyboard-shortcuts)
- [Paste Image](https://github.com/mushanshitiancai/vscode-paste-image)

## Markdown Preview Enhance

这个是拿来预览 markdown 的,内置多种预览主题:
**我比较喜欢的用 ★ 标出**

- atom-dark
- atom-light
- atom-material
- github-dark ★
- github-light ★
- gothic
- medium
- monokai
- newsprint
- night
- none
- one-dark ★
- one-light
- solarized-dark
- solarized-light
- vue

我现在就是把这个插件当作预览，它可以导出 pdf 出来，也可以导出 html。

## Markdown All in One

### feature

#### List editing

<p><img src="https://github.com/yzhang-gh/vscode-markdown/raw/master/images/gifs/on-enter-key.gif" alt="on enter key" width="214px"></p>

<p><img src="https://github.com/yzhang-gh/vscode-markdown/raw/master/images/gifs/tab-backspace.gif" alt="on tab/backspace key" width="214px"></p>

<p><img src="https://github.com/yzhang-gh/vscode-markdown/raw/master/images/gifs/fix-marker.gif" alt="fix ordered list markers" width="214px"></p>

**_Note_**: By default, this extension tries to determine indentation size for different lists according to [CommonMark Spec](https://spec.commonmark.org/0.29/#list-items). If you prefer to use a fixed tab size, please change the `list.indentationSize` setting.

### 常用快捷键(我修改过的)

安装了这个插件它就会给我们带来几个好用的快捷键按键。我目前发现和 vscode vim 插件有冲突,需要自己自定义来修改。

| key                | Command                      |
| ------------------ | ---------------------------- |
| `ctrl`+`B`         | Toggle bold                  |
| `ctrl`+`I`         | Toggle italic                |
| `alt`+`S`          | Toggle strikethrough         |
| `ctrl`+`shift`+`]` | Toggle heading (uplevel)     |
| `ctrl`+`shift`+`[` | Toggle heading (downlevel)   |
| `ctrl`+`M`         | Toggle math environment      |
| `ctrl`+`enter`     | Check/Uncheck task list item |
| `ctrl`+`shift`+`v` | Toggle preview in new tab    |
| `ctrl`+`alt`+`v`   | Paste img (paste img plugin) |

### 自动为这篇 markdown 生成目录

我自己修改了快捷键用 whichkey 来给标题添加数字,`space` + `m` +`a`

- Easily add/update/remove **section numbering**

  <img src="https://github.com/yzhang-gh/vscode-markdown/raw/master/images/gifs/section-numbers.gif" alt="section numbers" width="768px">

- _In case you are seeing **unexpected TOC recognition**, you can add a `<!-- no toc -->` comment above the list_.

## Paste Image

### 设置

如果想要在不同的项目达到不同的效果，就在.vscode/setting.json 里面配置不同的路径

```json
  "pasteImage.path": "${projectRoot}/img",
  "pasteImage.basePath": "${currentFileDir}",
  "pasteImage.forceUnixStyleSeparator": true,
  "pasteImage.prefix": "/",
```
