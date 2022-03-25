# windows 系统下环境变量 PATH 和 CLASSPATH 的意思

## PATH

对于没有包含路径的命令，WINDOWS 系统会默认去 Windows 目录(C:\windows)和系统目录(C:\windows\system32)查找，如果没有找到，就去 PATH 变量内包含的路径查找

## CLASSPATH

在 JAVA 的配置中有 dt.jar，tools.jar 这两个路径的，其中 rt.jar 是 JAVA 基础类库，dt.jar 是关于运行环境的类库，tools.jar 是工具类库，用来当 JAVA 源代码中 import 一些类是，查找这些类，
