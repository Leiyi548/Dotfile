# nvm 使用

## 简介

> nvm 是 node 的包管理工具。由于在打开不同的项目时，不同的项目在安装依赖时可能会和 node 版本有关，所以这就需要我们在不同的项目下使用不同的 node 版本。
> nvm 就是一个比较好用 node 管理工具，切换 node 版本。

## Install

请看 配置 ubuntu 环境.md

## Usage

### 常用命令

```sh
nvm install stable ## 安装最新稳定版 node
nvm install <version> ## 安装指定版本
nvm uninstall <version> ## 删除已安装的指定版本
nvm use <version> ## 切换使用指定的版本 node
nvm ls ## 列出所有安装的版本
nvm ls-remote ## 列出所有远程服务器的版本
nvm current ## 显示当前的版本
nvm alias <name> <version> ## 给不同的版本号添加别名
nvm unalias <name> ## 删除已定义的别名
nvm reinstall-packages <version> ## 在当前版本 node 环境下，重新 全局安装指定版本号的 npm 包
nvm alias default [node 版本号] ##设置默认版本
```
