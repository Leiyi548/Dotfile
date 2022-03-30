# komorebic 安装和使用

## Install

- komorebi

```powershell
scoop bucket add komorebi https://github.com/LGUG2Z/komorebi-bucket
scoop install komorebi
```

- autohotkey

```powershell
scoop install extras/autohotkey
```

## Usage

### Quick Start

```powershell
# startup
komorebic start
# stop
komorebic stop
```

## Configuration

### 使用 autohotkey 辅助配置

一旦 `komorebi` 开始运行，你就可以用 `AutoHotKey` 执行 `komorebi.sample.ahk` 设置默认的按键绑定（该文件包含了能帮助你构建你自己的配置文件的注释）

#### 命令列表

```powershell
start                         以背景进程运行 komorebi
stop                          停止 komorebi 进程并恢复所有窗口
state                         显示当前窗口管理器的状态
log                           使用 tail 参看 komorebi 的日志
focus                         改变焦点 (后接方向)
move                          移动窗口 (同一工作空间中)
stack                         堆叠窗口
resize                        改变当前窗口大小
unstack                       撤销堆叠
cycle-stack                   循环堆叠中的窗口
move-to-monitor               移动窗口到监视器 (焦点会切换到目标监视器)
move-to-workspace             移动窗口到工作空间 (焦点会切换到目标工作空间)
send-to-monitor               移动窗口到监视器 (焦点保留在当前监视器)
send-to-workspace             移动窗口到工作空间 (焦点保留在当前工作空间)
focus-monitor                 切换聚焦监视器
focus-workspace               切换聚焦工作空间
new-workspace                 新建工作空间
adjust-container-padding      调整窗口容器间距
adjust-workspace-padding      调整工作空间间距
change-layout                 改变工作空间布局
flip-layout                   反转工作空间 (仅能在 BSP 布局使用)
promote                       将当前聚焦窗口移动至最前
retile                        强制工作空间重排
ensure-workspaces             创建指定数量的工作空间
container-padding             指定窗口容器间距
workspace-padding             指定工作空间间距
workspace-layout              指定工作空间布局
workspace-tiling              指定工作空间平铺/浮动
workspace-name                指定工作空间名称
toggle-pause                  暂停 komorebi
toggle-tiling                 切换当前工作空间平铺/浮动
toggle-float                  切换当前窗口平铺/浮动
toggle-monocle                切换单窗口布局
toggle-maximize               切换当前窗口最大化
restore-windows               还原所有窗口
manage                        强制捕捉当前窗口
unmanage                      还原强制捕捉的窗口
reload-configuration          重新加载 ~/komorebi.ahk
watch-configuration           检测 ~/kmorebi.ahk 内容变化自动加载
float-rule                    设立窗口浮动规则
manage-rule                   设立强制捕捉规则
workspace-rule                设立窗口与工作空间关联规则
identify-tray-application     设立任务栏程序标识规则
focus-follows-mouse           设置是否焦点跟随鼠标
toggle-focus-follows-mouse    切换焦点跟随鼠标
ahk-library                   生成 AHK 辅助函数
help                          显示本消息
```

## reference

- [komorebi 中文文档](https://github.com/LGUG2Z/komorebi/wiki/README-zh)
