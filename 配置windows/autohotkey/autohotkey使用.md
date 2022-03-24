# autohotkey 使用

## autohotkey 介绍

autohotkey 是 windows 上有名的改建软件,学会了会让你的效率得到很高的提升

## autohotkey 安装

安装 [autohotkey](https://www.autohotkey.com/)

## 解决 autohotkey 中文乱码

打开 Autohotkey Setup

1. 选择修改
   ![](https://s2.loli.net/2022/03/24/wZN46LsO7S8GDz5.png)

2. 点击中间选项
   ![](https://s2.loli.net/2022/03/24/nZQX91ABKzqNCMU.png)
3. 选择这三个
   ![](https://s2.loli.net/2022/03/24/FOEZaNMjQcov81t.png)

这么设置好,autohotkey 就不会中文乱码了.

## autohotkey 开机自动启动

在开始菜单中有个名称为启动的文件夹, 如果您把脚本的快捷方式放入此文件夹, 那么脚本会在您每次启动 PC 时自动运行. 要创建快捷方式的话:

1. 找到脚本文件后选中它, 接着按下 Control-C.
2. 右键点击开始按钮 (通常在屏幕的左下角) 并选择 "浏览所有用户".
3. 定位到程序文件夹中的启动文件夹.
4. 在菜单栏选择 编辑 -> 粘贴快捷方式.  脚本的快捷方式现在应该出现在启动文件夹中了.
路径如下：
> C:\Users\用户名称\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
我的路径如下:
> C:\Users\9\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
> C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup

#### 参考资料

[vscode 配置 AHK 环境](https://www.autoahk.com/archives/40223)
[autohotkey 中文社区](https://www.autoahk.com/)
