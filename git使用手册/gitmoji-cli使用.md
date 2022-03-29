# gitmoji-cli 使用

## Install

### npm

```sh
npm i -g gitmoji-cli
```

### brew

```sh
brew install gitmoji
```

## Usage

```sh
$ gitmoji --help
  A gitmoji client for using emojis on commit messages.

  Usage
    $ gitmoji
  Options
    --commit, -c    Interactively commit using the prompts
    --config, -g    Setup gitmoji-cli preferences.
    --init, -i      Initialize gitmoji as a commit hook
    --list, -l      List all the available gitmojis
    --remove, -r    Remove a previously initialized commit hook
    --search, -s    Search gitmojis
    --update, -u    Sync emoji list with the repo
    --version, -v   Print gitmoji-cli installed version
  Examples
    $ gitmoji -l
    $ gitmoji bug linter -s
```

### client

启动交互式提交客户端，根据提示自动生成提交。

```sh
gitmoji -c
```

#### Options

你可以使用以下标志将默认值传递给提示符:

- `title`: 用于设置提交标题。
- `message` : 用于设置提交消息
- `scope` : 用于设置提交范围。

这些标志应该像这样使用:

```sh
gitmoji -c --title="Commit" --message="Message" --scope="Scope"
```

more information please see [gitmoji-cli](https://github.com/carloscuesta/gitmoji-cli)

## 参考链接

- [gitmoji-cli](https://github.com/carloscuesta/gitmoji-cli)
- [gitmoji](https://github.com/carloscuesta/gitmoji)
- [gitmoji.dev](https://gitmoji.dev/)
