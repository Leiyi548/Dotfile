# vscode-markdown-latex 使用

## 1. 前言

我为什么要使用 vscode 来书写`latex`，因为使用 obsidian 有时候写起来，并没有那么爽，因为实时预览，很多时候都会有些问题，而且很多时候更新也不会很

## 2. 使用 HyperSnips For math

使用了这个插件，我们就能够飞快的输入 latex snippet 了。

## 3. 常用 snippets

### 3.1. 普通环境

1. `mk`

```latex
  $cursor here$
```

2. `dm`

```latex
$$
cursor here
$$
```

3. `\box`

```text
┌─────────────┐
│ cursor here │
└─────────────┘
```

4. `table(number1)(number2)`

- 会自动展开
- number1 除了表头还有多少行
- number2 有多少列

- **示例一** `table22`

| header1 | header2 |
| ------- | ------- |
| text1   | text2   |
| text3   | text4   |

- **示例二** `table13`

| header1 | header2 | header3 |
| ------- | ------- | ------- |
| text1   | text2   | text3   |

### 3.2. 数学环境

只在数学环境内这些 `snippet` 生效

#### 3.2.1. 数字符号

1. `//`

$$
\frac{1}{2}
$$

2. `3/2`

$$
\frac{3}{2}
$$

3. `xx`

$$
\times
$$

4. `~~`

$$
\thickapprox \text{ 是“几乎等于（渐进于）”
}
$$

5. `~=`

$$
\cong \text{是"约等于"}
$$

6. `==`

$$
\equiv \text{是“等价于” 的意思。}
$$

7. `EE`

$$
\exists
$$

8. `bec`

$$
\because
$$

9. `thr`

$$
\therefore
$$

10. `AA`

$$
\forall
$$

11. `->`

$$
\to
$$

12. `!>`

$$
\mapsto
$$

13. `=>`

$$
\implies
$$

14. `=<`

$$
\impliedby
$$

15. `iff`

$$
\iff
$$

#### 3.2.2. 矩阵

1. `bmat(number)`

`bmat4` 生成 4 行 4 列的矩阵
**横着输入矩阵**

$$
\begin{bmatrix}
  3 & 4 & 5 & 5 \\
  3 & 3 & 3 & 3 \\
  3 & 3 & 3 & 3 \\
  3 & 3 & 3 & 3 \\
 \end{bmatrix}
$$

2. `pmat(number)`

`bmat3` 生成 3 行 3 列的矩阵
**横着输入矩阵**

$$
\begin{pmatrix}
  3 & 3 & 3 \\
  3 & 3 & 3 \\
  3 & 3 & 3 \\
\end{pmatrix}
$$

3. `vmat(number)`

`vmat3`生成 3 行 3 列的矩阵
**横着输入矩阵**

$$
\begin{vmatrix}
  3 & 3 & 3 \\
  3 & 3 & 3 \\
  3 & 3 & 3 \\
\end{vmatrix}
$$

4. `bmata(number)`

$$
\begin{bmatrix}
22 & 22 \\
22 & 22 \\
\end{bmatrix}
$$

5. `vmata(number)`

$$
\begin{vmatrix}
22 & 22 \\
22 & 22 \\
\end{vmatrix}
$$

6. `pmata(number)`

$$
\begin{pmatrix}
22 & 22 \\
22 & 22 \\
\end{pmatrix}
$$

7. `bmatr(number)`

`bmatr2` 生成 3 行 3 列的矩阵
**竖着输入矩阵**

$$
\begin{bmatrix}
 1 & 3 \\
 2 & 4 \\
\end{bmatrix}
$$

8. `vmatr(number)`

`vmatr2` 生成 3 行 3 列的矩阵
**竖着输入矩阵**

$$
\begin{vmatrix}
 1 & 3 \\
 2 & 4 \\
\end{vmatrix}
$$

9. `pmatr(number)`

`pmatr2` 生成 3 行 3 列的矩阵
**竖着输入矩阵**

$$
\begin{pmatrix}
 1 & 3 \\
 2 & 4 \\
\end{pmatrix}
$$

10. `vec(number)`

$$
\begin{pmatrix}
 1 \\
 2 \\
\end{pmatrix}
$$

11. `vecr(number)`

$$
\begin{pmatrix}
 1 & 2 & 3 \\
\end{pmatrix}
$$

#### 3.2.3. 特殊

1. `comma`

$$
x_1,x_2,\cdots,x_n
$$

2. `plus`

$$
x_1\alpha_1+x_2\alpha_2+\cdots+x_n\alpha_n
$$

#### 3.2.4. 3.2.3 Auto Symbol

1. `oo`

$$
\infty
$$

2. `...`

$$
\cdots
$$

3. `+/-...`

在 `...` 前面添加空格

4. `,...`

$$
, \ldots
$$

5. `**`

$$
\cdot
$$

6. `odot`

$$
\odot
$$

7. `xx`

$$
\times
$$

8. `eps`

$$
\epsilon
$$

9. `ell`

$$
\ell
$$

10. `log`

$$
\log
$$

11. `star`

$$
^{*}
$$

12. `int`

$$
\int
$$

13. `oint`

$$
\oint
$$

14. `iint`

$$
\iint
$$

15. `sum`

$$
\sum_{1\to 100}x_1+x_2+ \cdots x_n
$$

16. `max`

$$
\max_{1,2}
$$

17. `min`

$$
\min_{1,2}
$$

18. `argmin`

$$
\argmin_{1+2}
$$

19. `sup`

$$
\sup_{2+3}
$$

20. `inf`

$$
\inf_{2+2}
$$

21. `sin`

$$
\sin 90^\circ
$$

22. `cos`

$$
\cos 90^\circ
$$

23. `cot`

$$
\cot 90^\circ
$$

24. `csc`

$$
\csc 90^\circ
$$

25. `ln`

$$
\ln 1
$$

26. `exp`

$$
\exp  90
$$

27. `det`

$$
\det 90
$$

28. `empty`

$$
\empty
$$

### 3.3. 更多代码片段

- <https://github.com/OrangeX4/OrangeX4-HyperSnips>
- <https://github.com/yfzhao20/Hsnips-Snippets/blob/main/for%200.2.7%2B/markdown.hsnips>

## 4. 参考资料

- [有了这款神器，你也能运转如飞地在 VSCode 上敲 LaTeX - 让幻想飞的文章 - 知乎](https://zhuanlan.zhihu.com/p/446230108)
- [vim and latex](https://castel.dev/post/lecture-notes-1/#vim-and-latex)
