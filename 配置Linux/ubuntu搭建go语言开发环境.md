# ubuntu 搭建 go 语言开发环境

这套教程开发使用 go 语言的是 Ubuntu20.4(wsl)+neovim(latest)

## golang 安装

### 下载对应安装包

1.首先，在官网下载相应的安装包。

因为我使用的是 wsl2,我也没有使用图形化界面。
所以,我就使用 linux 命令来安装

先用 windows 找到下载地址

[golang 官网](https://go.dev/dl/)

![ubuntu下载图片](..\img\2022-04-16-10-03-13.png)
然后选择上图的进行安装

```sh
wget https://go.dev/dl/go1.18.1.linux-amd64.tar.gz
```

如果这样下载不了也能 windows 下载然后把这个文件移动到 linux(wsl) 上面 2.移动并解压

```sh
sudo tar -zxvf go1.18.1.linux-amd64.tar.gz -C /usr/local/
```

### 配置环境变量

打开这个文件 `sudo vim /etc/profile`

```sh
export GOROOT=/usr/local/go
export GOPATH=$HOME/goproject    #这是你的工程目录，需要手动创建
export PATH=$PATH:$GOROOT/bin

source /etc/profile   #执行该文件
```

验证

```sh
go version
```

## 参考文章

[【详细】Ubuntu20.04 安装 Go 与 Goland](https://blog.csdn.net/qq_26039331/article/details/115023308)
