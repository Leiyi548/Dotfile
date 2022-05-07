# git 使用

这个教程是 git 实操，是自己跟着视频的过程

## git 基本操作

查看 git 状态
`git status`
添加文件(file)到本地仓库暂存区
`git add <file>`
将添加到本地仓库暂存区的文件提取出来,变成未 stage 但是不改变里面数据
`git rm --cached <file>`

`git commit`
会用系统设置编辑器打开 `COMMIt_EDITMSG`文件

`git commit -m "message" <file>`
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

`git rm <file>`

1. 从 git 中删除这个文件
2. 将被删除的文件纳入到暂存区 (stage,index)
3. 若想恢复被删除的文件,需要进行两个动作:

- `git reset -- HEAD <file>`将待删除的文件从暂存区恢复到工作区
- `git checkout -- <file>` 将工作区中的修改丢弃掉

`git mv <file> <newfile>`

1. 重命名 git 文件
2. 从 git 中复制个和 file 一样的 newfile 文件,然后把原来的文件 delete,再把新文件 stage
3. 若想恢复原来的状态具体步骤如下

```sh
❯ git mv 1.txt 2.txt
❯ git mv 1.txt 2.txt
❯ gS
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        renamed:    1.txt -> 2.txt

❯ git reset -- HARD 1.txt 2.txt
Unstaged changes after reset:
D       1.txt
❯ ls
2.txt  test.py
❯ git checkout -- 1.txt
❯ ls
1.txt  2.txt  test.py
❯ gS
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        2.txt

nothing added to commit but untracked files present (use "git add" to track)
❯ rm 2.txt
❯ gS
On branch master
nothing to commit, working tree clean
```

`git commit -amend -m "change message"`
修改 `git commit` 的信息

`git log`
查看 git 日志
`git log -num`显示 num 条日志

`git log --graph -num`
以图形花显示 git 日志

`git log --graph --pretty=oneline --abbrev-commit`
简单输出 git log 只有提交号码缩写和提交信息

`cd -`
回到上一次操作的目录

`.gitignore`

- \*.a #忽略所有 .a 结尾的文件
- !lib.a # lib.a 不会被 git ignore
- /TODO # 仅仅忽略项目根目录下的 TODO 文件,不包括 subdir/TODO
- build/ # 忽略 build/目录下的所有文件
- doc/\*.txt # 会忽略 doc/notes.txt 但不包括 doc/server/arch.txt
- doc/\*/\*.txt # 会忽略 doc 下一级文件夹内的后缀名 txt 的文件
- doc/\*\*/\*.txt # 会忽略 doc 所有文件夹下的后缀名 txt 的文件

`git branch`
显示当前版本库的所有分支

`git branch <new_branch>`
创建一个分支名为 new_branch 的新分支

`git checkout <new_branch>`
切换分支名为 new_branch 的分支

`git checkout -b <new_branch>`
创建分支名为 new_branch 的分支并切换到该分支

`git branch -d <new_branch>`
删除前，如果这个分支没有被 merge，那么无法删除

`git branch -D <new_branch>`
强制删除分支名为 new_branch 的分支

`git merge <new_branch>`
合并 new_branch 分支到当前分支

[Git merge 之 Fast Forward 和 No Fast Forward(--no-ff 方式)解析](https://blog.csdn.net/lzb348110175/article/details/93479318)

`git reset --hard HEAD^`
回退到上一个版本

`git reset --hard HEAD^^`
回退到上上一个版本

`git reset --hard <commit_id>`
根据 git commit id 来进行回退

`git checkout -- <file>`
丢弃掉相对于暂存区中最后一次添加的文件内容所做的变更
相当于把工作区文件的 git 操作取消

`git reset HEAD <file>`
将之前添加到暂存区(stage,index)的内容从暂存区移除到工作区

`git checkout <commit_id>`
git 回退到某个提交

`git stash`
将修改给保存起来

`git stash list`
显示所有的 stash

`git stash pop`
将之前的保存恢复过来并且删除这个保存

`git stash apply`
将之前的保存恢复过来,但是却不删除这个保存

`git tag <tag_name>`
创建 git 标签

`git tag -a <tag_name> -m "this is a tag"`
创建带有介绍信息的标签

`git tag -d <tag_name>`
删除 git 标签

`git tag` `git tag -l`
显示所有已经创建好的标签

`git tag -l <tag_name>`
模糊搜索标签名,支持正则表达式

`git blame <file>`
显示文件每一行是谁提交的提交了什么信息

`diff -u <file1> <file2>`
比较不同
`-` 代表的是 file1
`+` 代表的是 file2

```sh
❯ diff -u hello.txt hello1.txt
--- hello.txt   2022-04-27 00:13:32.856120900 +0800
+++ hello1.txt  2022-04-27 21:39:45.937020800 +0800
@@ -6,4 +6,5 @@
 hello,python
 test fast merge
 test no fast forword merge
-test stash here
+change here
+add here
```

`git diff`
比较工作区和暂存区内容

`git file <file>`
比较当前文件和暂存区文件差异 git diff

`git diff HEAD`
比较最新的提交和暂存区的内容

`git diff commit_id`
比较特定的 commit

`git diff --cached` `git diff --stage`
查看已经暂存起来的文件(staged)和上次提交时的快照之间(HEAD)的差异

`git remote show`
显示关联的远程仓库

'git remote show origin'
显示远程仓库 origin 的详细信息

`git branch -a`
显示本地分支和远程分支

`git branch -r`
只显示远程分支

`git push <remote_name> -d <remote-branch-name>`
删除远程分支
remote_name 默认为 origin

## 参考

[易白教程 git](https://www.yiibai.com/git/git_submodule.html)
