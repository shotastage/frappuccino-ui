# Size class

`Size` class provides szie screen size utilities.


## Dangerous Absolute Sizes

To get absolute screen size, use `dangerousAbsoluteScreenWidth` or `dangerousAbsoluteScreenHeight` properties.

This sizes is **ABSOLUTE SCREEN SIZE** that it is not recommended to use calculate layout.

```swift

let screenWidth: CGFloat = Size.dangerousAbsoluteScreenWidth

let screenHeight: CGFloat = Size.dangerousAbsoluteScreenHeight

```
