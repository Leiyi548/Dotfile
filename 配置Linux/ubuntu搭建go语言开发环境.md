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

打开这个文件 `nvim ~/.zshrc`

```sh
export GOROOT=/usr/local/go # go安装目录
export PATH=$PATH:$GOROOT/bin

source ~/.zshrc
```

验证

```sh
go version
```

```sh
go env -w GO111MODULE=on
# 开启 七牛云代理
go env -w GOPROXY=https://goproxy.cn,direct

# 安装gopls
go install -v golang.org/x/tools/gopls@latest
# 安装go-outline
go install -v github.com/ramya-rao-a/go-outline@latest
# 安装gocode
go install -v github.com/mdempsky/gocode@latest
# 安装goimports
go install -v golang.org/x/tools/cmd/goimports@latest

# 安装go 文档
go install golang.org/x/tools/cmd/godoc@latest
# 查看文档
godoc -http=:6060
```

## 参考文章

[【详细】Ubuntu20.04 安装 Go 与 Goland](https://blog.csdn.net/qq_26039331/article/details/115023308)
