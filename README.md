# homebrew-formulae

## Localizegen

Generate Formula

```shell
$ brew create https://github.com/prongbang/localizegen/archive/refs/tags/v1.1.6.tar.gz
```

Please run `brew audit --new localizegen` before submitting, thanks.

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
$ brew create https://github.com/prongbang/analyticsgen/archive/refs/tags/v1.0.5.tar.gz
```

Output

- [analyticsgen.rb](https://github.com/prongbang/homebrew-formulae/blob/master/analyticsgen.rb)

```shell
$ brew update
$ brew tap prongbang/homebrew-formulae
$ brew install analyticsgen
```


## integration_testgen

Generate Formula

```shell
$ make checksum_integration_testgen
```

Output

- [integration_testgen.rb](https://github.com/prongbang/homebrew-formulae/blob/master/integration_testgen.rb)

You can check whether your formula is working or not by installing your application from specifying the formula.

```shell
$ brew install --build-from-source integration_testgen
```

```shell
$ brew update
$ brew tap prongbang/homebrew-formulae
$ brew uninstall integration_testgen
$ brew cleanup integration_testgen
$ brew install integration_testgen
```

## Check platforms

```ruby
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/[username]/[execute_file]/releases/download/[version]/[execute_file]_[version]_Darwin_x86_64.tar.gz"
      sha256 "checksum"

      def install
        bin.install "[execute_file]"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/[username]/[execute_file]/releases/download/[version]/[execute_file]_[version]_Darwin_arm64.tar.gz"
      sha256 "checksum"

      def install
        bin.install "[execute_file]"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/[username]/[execute_file]/releases/download/[version]/[execute_file]_[version]_Linux_x86_64.tar.gz"
      sha256 "checksum"

      def install
        bin.install "[execute_file]"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/[username]/[execute_file]/releases/download/[version]/[execute_file]_[version]_Linux_arm64.tar.gz"
      sha256 "checksum"

      def install
        bin.install "[execute_file]"
      end
    end
  end
```