# homebrew-formulae

## Localizegen

Generate Formula

```shell
$ brew create https://github.com/prongbang/localizegen/archive/refs/tags/v1.0.3.tar.gz
```

Output

- [localizegen.rb](https://github.com/prongbang/homebrew-formulae/blob/master/localizegen.rb)

You can check whether your formula is working or not by installing your application from specifying the formula.

```shell
$ brew install --build-from-source localizegen
```

If it works, good enough. Now make sure your formula abides by the guidelines defined by homebrew using this command. Rectify any errors or warnings if there.

```shell
$ brew audit --strict localizegen
```

Now install the application via homebrew

```shell
$ brew tap prongbang/homebrew-formulae
$ brew install localizegen
```

## Analyticsgen

Generate Formula

```shell
$ brew create https://github.com/prongbang/analyticsgen/archive/refs/tags/v1.0.0.tar.gz
```

Output

- [analyticsgen.rb](https://github.com/prongbang/homebrew-formulae/blob/master/analyticsgen.rb)

You can check whether your formula is working or not by installing your application from specifying the formula.

```shell
$ brew install --build-from-source analyticsgen
```

If it works, good enough. Now make sure your formula abides by the guidelines defined by homebrew using this command. Rectify any errors or warnings if there.

```shell
$ brew audit --strict analyticsgen
```

Now install the application via homebrew

```shell
$ brew tap prongbang/homebrew-formulae
$ brew install analyticsgen
```