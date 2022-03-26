# 使用 vscode 开发 go 语言

## 配置 go 的环境变量

### 安装 go windows-amd64.msi

安装基本还是之前的老样子，不过现在的安装早已省事不少，不再需要配置环境变量。直接去官网，下载了安装包后直接安装即可
在 Go 中文网进行 Go 最新版安装包的下载（或者复制网址浏览器打开<https://studygolang.com/dl>）
一直点 next 就能安装成功了。
**检测是否安装成功**
`go version`

### go 环境变量的配置

1. 设置 GOPATH 路径 (GOPATH 路径是我们的工作区)

```sh
go env -w GOPATH=我们自己的工作区路径
```

例如我的就设为 /Users/naonao/go

2. 什么都别管,先打开 GoMOD,再配置代理

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

**gopls**
gopls 是 LSP 的一个语言端(Server)实现，是针对 Go 语言的 LSP 实现。
**go-outline**
用于提取 Go 源文件中声明的 JSON 表示形式的简单实用程序。
**gocode**
自动补全 go 语言的工具
**goimports**
goimports 命令会更新 Go 导入行，添加缺少的行并删除未引用的行。
**相关链接**

- [gopls doc](https://pkg.go.dev/golang.org/x/tools/gopls)
- [go-outline Github](https://github.com/lukehoban/go-outline)
- [gocode Github](https://github.com/nsf/gocode)
- [goimport doc](https://pkg.go.dev/golang.org/x/tools/cmd/goimports)

做到这 2 点后，我们现在就可以打开我们的 vscode（再次感谢七牛云，从此以后我们再也不用到 Github 以及 Golang.org 上 clone 到本地进行 install 了）

3. 在 vscode 中安装 Go 插件

进入 Extension 中后直接搜索 Go,即可安装

4. 在我们的 `$GOPATH/src` 目录下,创建一个 `hello/hello.go` 文件,并且用 vscode 打开 (`$GOPATH` 是指我们刚刚配置的环境变量。比如上面配置的环境变量为`/Users/naonao/go`,即`$GOPATH` 就是指 `/Users/naonao/go` 这个路径。那么 `$GOPATH/src`就是指 `/Users/naonao/go/src`)

在安装了 Go 插件后的 vscode,现在打开 go 文件,会自动安装我们必要的环境依赖。

5. Go Moudle 的使用

这玩意非常简单,我们只需要明白它为什么存在,以及如何用即可。

Go mod 的存在,是官方强推的,为了替代 GoPath 而诞生的一个 Go 语言依赖管理器。之前所有的包都丢在 GOPATH 中，烦 skr 人。
这货最大的好处就是，我们依赖的包可以指定版本。

其次所有程序依赖的包，只会存在同一份。不会像 npm 那样，同一个包还能有 n 多个存在。这样我们的电脑就很省空间了

使用起来也非常简单，常用命令就一个 `go mod tidy`，通俗来说就是将当前的库源码文件所依赖的包，全部安装并记录下来，多的包就删掉，少了的就自动补上

6. 打开 vscode 输入命令即可让 vscode 来下载所需要的东西

> Go:Current GOPATH

### 参考资料

[VsCode 搭建 Go 语言开发环境的配置教程](https://www.jb51.net/article/186294.htm)
