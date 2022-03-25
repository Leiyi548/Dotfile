# 配置 tomcat

## 设置 tomcat 环境变量

### 下载 tomcat

1. 进入官网<http://tomcat.apache.org/>，选择 download，下载所需 tomcat 版本。
   下载 tomcat 9.0 版本
   ![](https://s2.loli.net/2022/03/22/sixtAuQSJN2IcUT.png)

2. tomcat 配置环境变量

### tomcat 文件结构

![20220322153135](https://img-blog.csdnimg.cn/d7b699387f1f487db39eae90fd495c76.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA55CG5oOzLQ==,size_20,color_FFFFFF,t_70,g_se,x_16)

### Tomcat 环境配置

1. 点击 windows 设置搜索环境变量
   ![](https://s2.loli.net/2022/03/25/fVG1TM2iHWYsJtD.png)
2. 进入环境变量

## jetbrain IDEA 配置 tomcat

### 新建一个干净的 java 项目

![](https://s2.loli.net/2022/03/25/R6dcT3DF1kuMbzl.png)

### 右键项目，然后点击 Add Framework Support…

![](https://s2.loli.net/2022/03/25/l6FhvXSfydpqCc2.png)

### 添加 Web Application 勾选 Create web.xml

![](https://s2.loli.net/2022/03/25/k37WDFeyK5Bcg9A.png)

### 添加 maven

![](https://s2.loli.net/2022/03/25/N86DOjsnekBirAH.png)

### 项目初始化，只需要设置 groupId 就不会报错

```xml
<groupId>com.hmlhao</groupId>
   <artifactId>ServletTest</artifactId>
<version>1.0-SNAPSHOT</version>
```

#### 导入依赖 (mvn)

```xml
 <dependencies>
   <dependency>
      <groupId>javax.servlet</groupId>
      <artifactId>javax.servlet-api</artifactId>
      <version>4.0.1</version>
   </dependency>
   <dependency>
      <groupId>javax.servlet.jsp</groupId>
      <artifactId>javax.servlet.jsp-api</artifactId>
      <version>2.3.3</version>
   </dependency>
</dependencies>
```

### 在 src／main／java 目录下新建一个包，并且新建一个 HelloServlet,java 文件

```java
package com.study.hello;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author chris
 * @version V1.0
 * @package com.study.hello
 * @date 2022/3/25 20:36
 */

public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter writer = resp.getWriter();
        writer.print("Hello,Servlet");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
```

### web/WEB-INF/web.xml 书写 Servlet 映射

```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_4_0.xsd"
         version="4.0">
    <servlet>
        <servlet-name>hello</servlet-name>
        <servlet-class>com.hmlhao.servlet.HelloServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>hello</servlet-name>
        <url-pattern>/hello</url-pattern>
    </servlet-mapping>
</web-app>
```

### 点击 Add Configuration…然后点击加号添加 Tomcat 服务器

![20220325205319](https://img.jbzj.com/file_images/article/202108/2021081915203882.png)
![20220325205324](https://img.jbzj.com/file_images/article/202108/2021081915203883.png)
![20220325205339](https://img.jbzj.com/file_images/article/202108/2021081915203884.png)
![20220325205347](https://img.jbzj.com/file_images/article/202108/2021081915203985.png)

#### 部署 web 项目

![20220325205406](https://img.jbzj.com/file_images/article/202108/2021081915203986.png)

#### 向下拉有设置访问路径

![20220325205426](https://img.jbzj.com/file_images/article/202108/2021081915203987.png)

### 运行

![20220325205445](https://img.jbzj.com/file_images/article/202108/2021081915203988.jpg)

#### 成功运行

![20220325205459](https://img.jbzj.com/file_images/article/202108/2021081915204089.png)

### 解决 Tomcat 控制台中文乱码

打开 idea setting -> 设置 console encoding utf-8
![](https://s2.loli.net/2022/03/25/ADpYhbEB8L7fSCV.png)

### 参考链接

[使用 IntelliJ IDEA 配置 Tomcat 入门教程](http://www.zzvips.com/article/187586.html)

[IDEA 2021 配置 JavaWeb 项目超详细教程](https://www.jb51.net/article/220162.htm)
