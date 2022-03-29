# idea UI 配置

俗话说的好,颜值就是生产力,如果让我们天天面对一群丑东西的话,那么我们打代码,也会没有动力的。
那么我们需要将我们的编译器换上一个皮肤

## idea 推荐主题

以下都为 idea 的插件主题，可以在 idea 的插件市场搜索下载:

- Visual Studio Code Dark Plus Theme 推荐指数:★★★★★
- Monokai Pro Theme 推荐指数:★★★★★
- GitHub Theme 推荐指数:★★★★★
- One Dark theme 推荐指数:★★★★☆
- MyGruvBox Theme 推荐指数:★★★★☆
- GruvBox Theme 推荐指数:★★★★☆

### 主题配置

#### Monokai Pro theme

- comment italic
- keyword italic
- Function declaration italic
- 改变编辑区背景颜
  > (原本 #2D2A2E)改为 #1e2122(黑色) general text default text background 修改
- 改变行的颜色
  > 在 General editor 里面 gutters background 为#1e2122
  > 在 General 里的 linenumber 和 line number on caret row 修改
- 改变搜索颜色
  > 在 general Editor Selection background 中改变 background 为#198483

#### Visual Studio Code Theme

- comment italic
- keyword italic
- Function declaration italic

## 字体

有了皮肤当然也要有相对应的字体啦。
我现在觉得最好用的两款字体：

1. FiraCode
2. OperatorMono

这两款字体我 fork 了别人的仓库。
可以直接在我的仓库下载

```sh
# 使用fastgit加速下载
git clone https://hub.fastgit.xyz/Leiyi548/dev-fonts.git

git clone https://github.com/Leiyi548/dev-fonts.git
```

### 问题

idea 无法识别 OperatorMono 这个字体，通过我的 google 大法，我在[这一篇文章](https://youtrack.jetbrains.com/issue/IDEA-180897#focus=streamItem-27-3474742.0-0)这里找到了解决方法。

> 解决的方法就是我们手动的把字体复制到我们 idea 安装目录的 fonts 文件夹内,我们就能在 idea 中识别这个字体使用。
