# Install using Carthage

To install **Whipcream UI**, using Carthage or Cocoapods is recommended.


## Prepare `Cartfile`

First, you need to create `Cartfile` in root dir of your project, unless you already created it.

Then, define or register **Whipcream**, your `Cartfile` like here

```
github "shotastage/whipped-cream" "master"
```

## Build framework

Then, you build *.framework* using Carthage. In shortest way of building framework, following command is easy.

```shell
$ carthage update whipped-cream
```

Sometimes, Carthage failed to fetch or build frameworks. If you face to such trouble, try following command.

```shell
$ carthage update --platform iOS --no-use-binaries --use-ssh --new-resolver whipped-cream
```
