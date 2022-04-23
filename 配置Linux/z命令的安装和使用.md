# z 命令的安装和使用

## Install

`oh-my-zsh` 自带 `z` 命令插件所以我们安装了 oh-my-zsh，然后在 oh-my-zsh 启用这个插件就可以直接使用`z`命令了

```sh
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  z
)
```

## Usage

**技巧**：`z` 命令可以使用 `tab` 来进行补齐，以提高切换效率。

```sh
# 查看帮助
$ man z
或
$ tldr z

# 显示记录的路径
$ z

# 切换到一个名字带有 "foo" 的路径
$ z foo

# 切换到一个名字带有 "foo" 并且后面带有 "bar" 的路径（例：fooesbar):
$ z foo bar

# 切换到名字带有 "foo" 并且拥有最高访问次数的路径
$ z -r foo

# 切换到最近使用的名字带有 "foo" 的路径
$ z -t foo

# 列出在 z 的数据库中名字带有 "foo" 的路径
$ z -l foo

# 将当前路径从 z 的数据库中移除
$ z -x .
```
