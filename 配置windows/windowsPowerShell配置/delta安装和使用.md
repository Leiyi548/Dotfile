# delta 安装和使用

## Install

```powershell
scoop install delta
```

## Usage

git 的全局配置在 `~/.gitconfig` 里
这个是官网的基础配置

```gitconfig
[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true  # use n and N to move between diff sections

[merge]
    conflictstyle = diff3

[diff]
    colorMoved = default
```

### Advanced Usage

```gitconfig
[delta]
    navigate = true  # use n and N to move between diff sections
    line-numbers = true

```

### Supported Command

- git diff
- git show
- git log -p
- git stash show -p
- git reflog -p
- git add -p

## Feature

- 语言语法高亮显示，具有与 bat 相同的语法高亮显示主题
- 使用 Levenshtein 编辑推理算法的字级差异高亮显示
- 使用换行的并排视图
- 编号行
- n 和 n 个键绑定，用于在大差异的文件之间移动，以及在 log - p 视图的差异之间移动(——navigation)
- 改进的合并冲突显示
- 改进了 git 错误显示(语法高亮显示;——超链接格式提交到 GitHub/GitLab/Bitbucket 等)
- 语法高亮显示 rg, git grep, grep 等的 grep 输出
- 支持 Git 的颜色移动特性。

## 参考资料

- [delta github](https://github.com/dandavison/delta)
- [delta 官方文档](https://dandavison.github.io/delta/introduction.html)
