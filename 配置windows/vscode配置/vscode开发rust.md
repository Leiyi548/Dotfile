# vscode 开发 rust

## 1. 配置 Rust 开发环境

无论使用何种系统，均可以根据 Rust 官网提供的 rustup-init 工具完成 Rust 的安装，下载地址：<https://www.rust-lang.org/zh-CN/tools/install>

然后，会有命令行窗口，然后选择第一默认，然后回车安装

### 1.1. Rustup

安装 Rust 的主要工具，既是一个 Rust 安装器又是一个版本管理工具。

#### 1.1.1. 作用

1.安装 Rust； 2. Rust 的版本管理工具，用来管理不同平台下的 Rust 构建版本，处理其相互兼容的问题；

### 1.2. Cargo

在安装 Rustup 时，也会同时安装 Rust 构建工具和包管理器的最新稳定版本。

#### 1.2.1. 作用

1. Rust 的构建工具
2. Rust 的包管理器

#### 1.2.2. 常用指令

- cargo build 可以构建项目；
- cargo run 可以运行项目；
- cargo test 可以测试项目；
- cargo doc 可以为项目构建文档；
- cargo publish 可以将库发布到 crates.io。

#### 1.2.3. 检查 Cargo 的版本

```sh
cargo --version
```

## 2. 安装

### 2.1. 双击打开 rustup-init.exe

![20220630191705](https://img-blog.csdnimg.cn/2e813ed7be3a4f0a8c2f322702de5b55.png)

### 2.2. 安装 Visual Studio 2013 或更高版本的 C++构建工具

![20220630191731](https://img-blog.csdnimg.cn/1fdbf29e1e0d45dabf9ff96eb58bc9fe.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA6LW16ZuvX-WQjuerr-W8gOWPkeW3peeoi-W4iA==,size_16,color_FFFFFF,t_70,g_se,x_16)

![20220630191812](https://img-blog.csdnimg.cn/fb5d5301e5054802a6a8c915841a7971.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA6LW16ZuvX-WQjuerr-W8gOWPkeW3peeoi-W4iA==,size_13,color_FFFFFF,t_70,g_se,x_16)

### 2.3. 安装成功

![20220630191833](https://img-blog.csdnimg.cn/c9bfd54f062a4f47b27039ad87a020e7.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA6LW16ZuvX-WQjuerr-W8gOWPkeW3peeoi-W4iA==,size_14,color_FFFFFF,t_70,g_se,x_16)

安装好的路径在 `C:\Users\用户名\.cargo\bin`

## 3. 配置 PATH 环境变量

如果你使用的是 Linux 系统, 那么在 rustup-init 运行完成后它会在命令行中提示你将软件安装目录加入 PATH 环境变量中.
**windows 需要将安装目录加入自己的环境变量内。**

## 4. 验证 Rust 是否安装成功

```sh
rustc --version
```

## 5. error: linker `link.exe` not found

```sh
rustup toolchain install stable-x86_64-pc-windows-gnu
rustup default stable-x86_64-pc-windows-gnu
```

## 6. vscode 环境

### 6.1. 安装插件 rust-analyzer

rust-analyzer 插件包含**代码提示 代码检查 自动补全等多种功能。**

![20220630192713](https://img-blog.csdnimg.cn/9115545e39dd473da5f887350e21764f.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBA6LW16ZuvX-WQjuerr-W8gOWPkeW3peeoi-W4iA==,size_14,color_FFFFFF,t_70,g_se,x_16)

## 7. 参考链接

- Rust 官方网站：<https://www.rust-lang.org/zh-CN>
- Rust 官方文档：<https://doc.rust-lang.org/>
- Rust Play：<https://play.rust-lang.org/>
- Visual Studio Code：<https://code.visualstudio.com/>
