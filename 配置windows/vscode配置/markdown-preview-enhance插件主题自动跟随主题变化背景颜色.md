# markdown-preview-enhance 插件主题自动跟随主题变化背景颜色

## 前言

在使用 markdown-preview-enhance 这个插件的时候，我觉得很舒服，因为他能够让我在 vscode 中打 markdown 有着很好的体验

虽然,这个插件提供了很多内置的主题,但是内置的主题背景颜色有时候跟我们的主题背景颜色并不搭配,那么这个时候,我们看这个背景就会觉得很怪,就感觉没有融入一体.

## 修改插件 css 到达想要的效果

vscode 插件安装地址

| 操作系统 | 安装路径                         |
| -------- | -------------------------------- |
| windows  | %USERPROFILE%\.vscode\extensions |
| macOs    | ~/.vscode/extensions             |
| Linux    | ~/.vscode/extensions             |

> %USERPROFILE% =C:\Users\用户名

找到这个插件的地址
我这里拿 github-dark 这个主题来示例,因为我平时经常看 github

C:\Users\username\.vscode\extensions\shd101wyy.markdown-preview-enhanced-0.6.2\node_modules\@shd101wyy\mume\styles\preview_theme

在这里你就能看到那些 css 文件
![img](https://img-blog.csdnimg.cn/b9547107010e4998aa6f9de95f64d9ad.png)

然后你就用自己最喜欢的文本编辑器我使用 vscode 把 background 属性给去除,那么以后这个主题就会跟随你主题颜色变化而变化.
