# git 使用手册

##

## git commit 规范

### 规范介绍

这次主要介绍 AngularJS 的规范，它是由 Google 推出的一套提交消息规范标准，也是目前使  
用范围最广的规范。有一套合理的[手册](https://docs.google.com/document/d/1QrDFcIiPjSLDn3EL15IJygNPiHORgU1_OOAqWjiDU5Y/edit)也较为[系统化](https://github.com/angular/angular.js/blob/master/CONTRIBUTING.md#toc10)；并且还有配套的工具可以供我们使用。

说白了，规范就是用工具进行强约束。单看规范比较简单，所以先让大家先看看面，知道他的  
大体规则后，在来讲细节。

规范执行方案如下：
![](https://img2018.cnblogs.com/blog/328599/201901/328599-20190123104101160-845368160.png)

既然有了方案，就会按照某些规则执行，以下是 Google AnguarJS 规范的要求：

**规范目标**

- 允许通过脚本生成 CHANGELOG.md
- 可以通过范围的关键词，快速的搜索到指定版本

> #在 packge.json 文件里新增新特性
> git log HEAD --grep feat(package.json)

**格式要求**

```
# 标题行：50个字符以内，描述主要变更内容
#
# 主体内容：更详细的说明文本，建议72个字符以内。 需要描述的信息包括:
#
# * 为什么这个变更是必须的? 它可能是用来修复一个bug，增加一个feature，提升性能、可靠性、稳定性等等
# * 他如何解决这个问题? 具体描述解决问题的步骤
# * 是否存在副作用、风险?
#
# 尾部：如果需要的化可以添加一个链接到issue地址或者其它文档，或者关闭某个issue。
```

**Git commit 日志基本规范**

```
<type>(<scope>): <subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

**\<type\>**
代表某次提交的类型，比如是修复一个 bug 或是增加一个 feature，类型如下：

- feat：新增功能
- fix：bug 修复
- docs：文档更新
- style：不影响程序逻辑的代码修改(修改空白字符，格式缩进，补全缺失的分号等，没有改变代码逻辑)
- refactor：重构代码(既没有新增功能，也没有修复 bug)
- perf：性能, 体验优化
- test：新增测试用例或是更新现有测试
- build：主要目的是修改项目构建系统(例如 glup，webpack，rollup 的配置等)的提交
- ci：主要目的是修改项目继续集成流程(例如 Travis，Jenkins，GitLab CI，Circle 等)的提交
- chore：不属于以上类型的其他类，比如构建流程, 依赖管理
- revert：回滚某个更早之前的提交

如果`type`为`feat`和`fix`，则该 commit 将肯定出现在 Change log 之中。其他情况（`docs`、`chore`、`style`、`refactor`、`test`）由你决定，要不要放入 Change log，建议是不要。如果`type`为`feat`和`fix`，则该 commit 将肯定出现在 Change log 之中。其他情况（`docs`、`chore`、`style`、`refactor`、`test`）由你决定，要不要放入 Change log，建议是不要。

**\<scope\>**
范围可以是指定提交更改位置的任何内容，如：

- 对 package.json 文件新增依赖库，chore(package.json): 新增依赖库
- 或对代码进行重构，refacto(weChat.vue): 重构微信进件

**\<subject\>**
如果没有更合适的范围，可以直接写提交内容
`subject`是 commit 目的的简短描述，

- 以动词开头，使用第一人称现在时，比如`change`，而不是`changed`或`changes`
- 第一个字母小写
- 结尾不加句号（`.`）

#### commit 实战

提交一条依赖库变更，type 为 chore（增加依赖库）；等提交完成后，使用 Git 工具进行搜索。
此时搜索类型是 chore(package.json)，所以就能知道 package.json 文件所有的历史变更。

```sh
# 新增一条 Commit 记录
git commit -m 'chore(package.json): 新增 AngularJS 规范，Commit 时会自动调用钩子（GitHook）来判断 Message 是否有效'

# 搜索跟 package.json 文件相关的历史记录
git log HEAD --grep chore(package.json)
```

### Git 分支与版本发布规范

- 基本原则：master 为保护分支，不直接在 master 上进行代码修改和提交。
- 开发日常需求或者项目时，从 master 分支上 checkout 一个 feature 分支进行开发或者 bugfix 分支进行 bug 修复，功能测试完毕并且项目发布上线后，`将feature分支合并到主干master，并且打Tag发布，最后删除开发分支`。分支命名规范：
  - 分支版本命名规则：分支类型 \_ 分支发布时间 \_ 分支功能。比如：feat_20170401_fairy_flower
  - 分支类型包括：feat、 fix、refactor 三种类型，即新功能开发、bug 修复和代码重构
  - 时间使用年月日进行命名，不足 2 位补 0
  - 分支功能命名使用 snake case 命名法，即下划线命名。
- Tag 包括 3 位版本，前缀使用 v。比如 v1.2.31。Tag 命名规范：
  - 新功能开发使用第 2 位版本号，bug 修复使用第 3 位版本号
  - 核心基础库或者 Node 中间价可以在大版本发布请使用灰度版本号，在版本后面加上后缀，用中划线分隔。alpha 或者 belta 后面加上次数，即第几次 alpha：
    - v2.0.0-alpha.1
    - v2.0.0-belta.1
- 版本正式发布前需要生成 changelog 文档，然后再发布上线。

### git 相关工具介绍

#### commitizen 的安装

**windows**

```sh
# Node Version Manager（Node版本管理器），用它可以方便的在机器上安装并维护多个Node的版本
scoop install nvm
npm install -g commitizen
npm install -g conventional-changelog-cli
npm install -g cz-conventional-changelog
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

**macos**

```sh
# Node Version Manager（Node版本管理器），用它可以方便的在机器上安装并维护多个Node的版本
brew install nvm
npm install -g commitizen
npm install -g conventional-changelog-cli
npm install -g cz-conventional-changelog
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```
#### 相关链接

- [commitizen/cz-cli](https://github.com/commitizen/cz-cli)
- [zuoxiaobai/commitizen-practice-demo](https://github.com/zuoxiaobai/commitizen-practice-demo)
- [git commit 中文规范](https://github.com/feflow/git-commit-style-guide)
- [如何规范 git commit](https://www.cnblogs.com/jiaoshou/p/11190619.html)
- [[完全版] Windows 安装与配置 Git cz (commitizen)](https://blog.csdn.net/weixin_43128203/article/details/118194415)
