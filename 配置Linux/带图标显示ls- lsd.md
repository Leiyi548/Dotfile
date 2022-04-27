# 带图标显示 ls- lsd

## Install

- macos ubuntu

```sh
brew install lsd
```

[github 项目地址](https://github.com/Peltoche/lsd)

## Usage

详细的帮助，可以看`lsd --help`。

- `lsd`
  默认形式类似于不带参数的 `ls`
  ![img](..\img\2022-04-27-12-27-08.png)

- `lsd-l`
  列表详细信息
  ![img](..\img\2022-04-27-12-29-51.png)

- `lsd-la`
  列表显示详细信息和隐藏文件
  ![img](..\img\2022-04-27-12-31-22.png)

- `lsd-tree`
  以目录树格式显示当前目录结构
  ![img](..\img\2022-04-27-12-33-02.png)

## alias

`vim ~/.zshrc`

```sh
alias ls='lsd'
alias ll='lsd -l'
alias lla='lsd -la'
```

日期格式化

```sh
alias lld='lsd -l --date +%Y年%m月%d"日"%H:%M:%S'
```
