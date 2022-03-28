# Git config 使用说明

## 配置 gitconfig

### 1.git config 配置文件的存放的位置

git config 文件的存放位置主要有三个位置。
git config 文件的存放位置主要有三个位置。

- 1）./etc/gitconfig 文件：包含了适用于系统所有用户和所有库的值。如果你传递参数选项’–system’ 给 git config，它将明确的读和写这个文件。

```css
git config --system user.name "xujun"
git config --system user.email “gdutxiaoxu@163.com"
```

- 2）~/.gitconfig 文件 ：具体到你的用户。你可以通过传递 --global 选项使 Git 读或写这个特定的文件。

```css
git config --global user.name "xujun"
git config --global user.email “gdutxiaoxu@163.com"
```

- 3） 位于 git 目录的 config 文件 (也就是 .git/config) ：无论你当前在用的库是什么，特定指向该单一的库。每个级别重写前一个级别的值。因此，在.git/config 中的值覆盖了在/etc/gitconfig 中的同一个值。

在 Windows 系统上，Git 会找寻用户主目录下的 .gitconfig 文件。主目录即 $HOME 变量指定的目录，一般都是 C:\\Users{UserName} 。此外，Git 还会尝试找寻 /mingw64/etc/gitconfig 文件，只不过看当初 Git 装在什么目录，就以此作为根目录来定位。 比如我的 git 安装目录是 C:\\Program Files\\Git， 那么相应的文件位置是 C:\\Program Files\\Git\\mingw64\\etc 。

### 2.配置你的用户名和密码

当你安装 Git 后首先要做的事情是设置你的用户名称和 e-mail 地址。这是非常重要的，因为每次 Git 提交都会使用该信息。它被永远的嵌入到了你的提交中：

```sh
git config --global user.name "xujun"
git config --global user.email "gdutxiaoxu@163.com"
```

重申一遍，你只需要做一次这个设置。如果你传递了 --global 选项，因为 Git 将总是会使用该信息来处理你在系统中所做的一切操作。如果你希望在一个特定的项目中使用不同的名称或 e-mail 地址，你可以在该项目中运行该命令而不要–global 选项。

### 3.配置你的编缉器

你的标识已经设置，你可以配置你的缺省文本编辑器，Git 在需要你输入一些消息时会使用该文本编辑器。缺省情况下，Git 使用你的系统的缺省编辑器，这通常可能是 vi 或者 vim。如果你想使用一个不同的文本编辑器，例如 neovim，你可以做如下操作：

```sh
# 使用neovim
git config --global core.editor nvim

# 使用vscode
git config --global core.editor code
```

### 4.配置你的比较工具

另外一个你可能需要配置的有用的选项是缺省的比较工具它用来解决合并时的冲突。例如，你想使用 vimdiff:

```sh
git config --global merge.tool vimdiff
```

Git 可以接受 kdiff3, tkdiff, meld, xxdiff, emerge, vimdiff, gvimdiff, ecmerge, 和 opendiff 作为有效的合并工具。你也可以设置一个客户化的工具；

### 5.配置你的别名

配置命令别名

我们在用 git 的时候，很多时候都是用的命令行形式的，不仅要记得住大量命令，还要能灵活进行组合，这就很是头大了，正因为此，命令别名的重要性就出来了。但与其说是别名，倒不如说是另类的简写形式。 别名的配置也需要使用 config 命令，比如给 git status 设置别名 st：

```sh
git config --global alias.st status
# 设置后
# git st == git status
```

这样我们以后使用的时候，直接用 `git st` 就可以做 `git status` 的事了。

再来一个从 廖雪峰的 Git 教程 上看来的，很牛掰的，我自己也在用的一个别名：

```sh
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

```

`$ git lg`
![git alias example](https://img-blog.csdnimg.cn/44dd54a7cc884c57a818f41e799583a9.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5a2m6YCXYg==,size_20,color_FFFFFF,t_70,g_se,x_16)

### 6.检查你的配置

如果你要检查你的设置,你可以使用 `git config --list` 命令来列出 Git 可以在该处找到所有的设置

```git-config
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
http.sslbackend=openssl
http.sslcainfo=D:/BaiduNetdiskDownload/Git/mingw64/ssl/certs/ca-bundle.crt
core.autocrlf=true
core.fscache=true
core.symlinks=false
pull.rebase=false
credential.helper=manager-core
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=master
user.name='Leiyi548'
user.email='1424630446@qq.com'
alias.st=status
alias.lg=log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
```

你可能会看到一个关键字出现多次，这是因为 Git 从不同的文件中(例如：/etc/gitconfig 以及~/.gitconfig)读取相同的关键字。 在这种情况下，对每个唯一的关键字，Git 使用最后的那个值。

你也可以查看 Git 认为的一个特定的关键字目前的值，使用如下命令 git config {key}:

```git-config
 git config user.name
 # 'Leiyi548'
```

### 7.获取帮助

如果当你在使用 Git 时需要帮助，有三种方法可以获得任何 git 命令的手册页(manpage)帮助信息:

```sh
git help <verb>
git <verb> --help
man git-<verb>
```

例如，你可以运行如下命令获取对 config 命令的手册页帮助:

```sh
git help config
```

### 解决 git status 中文乱码

```sh
git config --global core.quotepath false
```
