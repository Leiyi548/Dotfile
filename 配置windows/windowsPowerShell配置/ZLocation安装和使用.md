# ZLocation 安装和使用(windwos 上的 autojump)

## Install

```powershell
Install-Module ZLocation -Scope CurrentUser
POWERS
```

Import module

```powershell
Import-Module ZLocation
```

## Usage

- `z` 没有参数的话,就会列出所有已知的位置以及他们的权重
- `z -l des` 将会列出包含有 des 的位置,当然这看的是最后的路径而不是全部路径
- `z -` 返回上次位置

## 参考资料

- [ZLocation](https://github.com/vors/ZLocation)
