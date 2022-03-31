# 安装配置 hbase

## Install

### 安装 hbase 安装包

```sh
sudo wget https://archive.apache.org/dist/hbase/2.2.6/hbase-2.2.6-bin.tar.gz /usr/local/
```

### 安装 java

#### 安装默认 JRE / JDK

安装 Java 的最简单方法是使用与 Ubuntu 一起打包的版本。默认情况下，Ubuntu 18.04 包含 Open JDK，它是 JRE 和 JDK 的开源变体。

该软件包将安装 OpenJDK 10 或 11。

- 在 2018 年 9 月之前，这将安装 OpenJDK 10。
- 2018 年 9 月之后，这将安装 OpenJDK 11。

要安装此版本，请先更新本地软件包：

```sh
 sudo apt update
```

接下来，检查是否已安装 Java：

```sh
 java -version
```

如果当前未安装 Java，您将看到以下输出：

```sh
Command 'java' not found, but can be installed with:

apt install default-jre
apt install openjdk-11-jre-headless
apt install openjdk-8-jre-headless
apt install openjdk-9-jre-headless
```

执行以下命令安装 OpenJDK：

```sh
 sudo apt install default-jre
```

此命令将安装 Java 运行时环境（JRE）。这将允许您运行几乎所有 Java 软件。

验证安装：

```sh
 java -version
```

您将看到以下输出：

```sh
openjdk version "10.0.1" 2018-04-17
OpenJDK Runtime Environment (build 10.0.1+10-Ubuntu-3ubuntu1)
OpenJDK 64-Bit Server VM (build 10.0.1+10-Ubuntu-3ubuntu1, mixed mode)
```

除了 JRE 之外，您可能还需要 Java Development Kit（JDK）才能编译和运行某些特定的基于 Java 的软件。要安装 JDK，请执行以下命令，该命令还将安装 JRE：

```sh
 sudo apt install default-jdk
```

通过检查 Java 编译器的`javac`版本，来验证是否已安装 JDK ：

```sh
 javac -version
```

您将看到以下输出：

```sh
javac 10.0.1
```

接下来，让我们看一下我们要安装哪个 OpenJDK 版本。

#### 安装 OpenJDK 的特定版本

虽然您可以安装默认的 OpenJDK 软件包，但您也可以安装不同版本的 OpenJDK。

##### OpenJDK 8

Java 8 是当前的长期支持版本，并且仍然受到广泛支持，但公共维护在 2019 年 1 月结束。要安装 OpenJDK 8，请执行以下命令：

```sh
 sudo apt install openjdk-8-jdk
```

验证是否已安装

```sh
 java -version
```

你会看到这样的输出：

```sh
openjdk version "1.8.0_162"
OpenJDK Runtime Environment (build 1.8.0_162-8u162-b12-1-b12)
OpenJDK 64-Bit Server VM (build 25.162-b12, mixed mode)
```

也可以只安装 JRE，您可以通过执行`sudo apt install openjdk-8-jre`来完成。

### OpenJDK 10/11

Ubuntu 的存储库包含一个将安装 Java 10 或 11 的软件包。在 2018 年 9 月之前，该软件包将安装 OpenJDK 10.一旦发布了 Java 11，该软件包将安装 Java 11。

要安装 OpenJDK 10/11，请执行以下命令：

```sh
 sudo apt install openjdk-11-jdk
```

要仅安装 JRE，请使用以下命令：

```sh
 sudo apt install openjdk-11-jre
```

### 安装 hdoop

[清华大学镜像源](https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/stable/)

```sh
sudo wget http://mirrors.advancedhosters.com/apache/hadoop/common/hadoop-3.3.0/hadoop-3.3.0-src.tar.gz
```

## Reference

- [如何在 Ubuntu 18.04 上安装 Java](https://cloud.tencent.com/developer/article/1162527)
