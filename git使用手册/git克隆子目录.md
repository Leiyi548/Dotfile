# git 克隆或下载一个仓库单个文件夹

举例说明:

> 比如我现在要克隆我的 dotfile(https://github.com/Leiyi548/Dotfile) 下的 ranger 文件夹,我先建立一个 test 文件夹.并进行 git init 初始化。

```sh
# 新建仓库并进入文件夹
git init test && cd test
# 设置允许克隆子目录
git config core.sparsecheckout true
# 设置要克隆的仓库的子目录路径   空格别漏
echo 'ranger*' >> .git/info/sparsecheckout
# 这里换成你要克隆的项目和库
git remote add origin git@github.com:Leiyi548/Dotfile.git
# clone
git pull origin master
```

**目前实现不了,github 为了确保完整性,就只让克隆整个项目**
