# git 使用

这个教程是 git 实操，是自己跟着视频的过程

## git 基本操作

查看 git 状态
`git status`
添加文件(file)到本地仓库暂存区
`git add file`
将添加到本地仓库暂存区的文件提取出来,变成未 stage 但是不改变里面数据
`git rm --cached file`

`git commit`
会用系统设置编辑器打开 `COMMIt_EDITMSG`文件

`git commit -m "message" file`
提交这个文件

**git config 操作都在.git/config 文件内**
`git config --local user.name "张三"`
`git config --local user.email "110@qq.com"`
设置当前仓库的用户名和邮箱

`git config user.name`
`git config user.email`
直接输出当前仓库的用户名和邮箱

`git config --local --unset user.name`
`git config --local --unset user.email`
删除输出当前仓库的用户名和邮箱
