# WLViewStack

**WLViewStack** class realize composing or adding subviews structurally.
Here is an example for usage of `WLViewStack`.

```swift

// UI instances or definisions
let scrollView = UIScrollView()
let window = UIView()
let heading = UILabel()
let message = UILabel()
let input = UITextField()
let button = UIButton()

// Compose UI structure
WLViewStack(root: view)
  .add(scrollView) { view in
  WLViewStack(root: view)
      .add(self.window) { win in
      WLViewStack(root: win)
        .add(self.heading)
        .add(self.message)
        .add(self.input)
        .add(self.button)
     }
}
```

Without **WLViewStack**, this process is generally written as follows.
It is simple & easy to create a new UIView or inherited class instance and add its subview respectively.
However, in large app, UI structure is too complicated to trace and manage UIs.
Thus, using **WLViewStack** realize efficent UI composing.

```swift

let scrollView = UIScrollView()
view.addSubview(scrollView)

let window = UIView()
scrollView.addSubview(window)

let heading = UILabel()
window.addSubview(heading)

let message = UILabel()
window.addSubview(message)

let input = UITextField()
window.addSubview(input)

let button = UIButton()
window.addSubview(button)
```
