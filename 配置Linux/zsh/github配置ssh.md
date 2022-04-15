# github 配置 ssh

## 设置 git 的 user.name 和 user.email

```gitconfig
git config --global user.name "Leiyi548"
git config --global user.email "1424630446@qq.com"
```

## 检查是否存在 SSH key

```text
cd ~/.ssh
ls
或者
ll
//看是否存在 id_rsa 和 id_rsa.pub文件，如果存在，说明已经有SSH Key
```

## 生成 SSH 密匙

```sh
ssh-keygen -t rsa -C "1424630446@qq.com"
```

执行之后一直按回车,然后就能生成 ssh 密匙

## 获取 SSH key

```sh
cd ~/.ssh
# copy file content
vim id_rsa.pub
```

## Github 添加 SSH key

在设置添加即可,自己定义一个密匙名字就可以了。
