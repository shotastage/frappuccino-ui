# WhipLayoutStack

**WhipLayoutStack** provides layout to views. It calculate position and size of UI.
Here is an example for usage of `WhipLayoutStack`.

```swift

// UI instances or definisions
let scrollView = UIScrollView()
let window = UIView()
let heading = UILabel()
let message = UILabel()
let input = UITextField()
let button = UIButton()

override func viewDidLayoutSubviews() {
  super.viewDidLayoutSubviews()

  WhipLayoutStack(root: view)
    .size(scrollView, width: view.bounds.width, height: view.bounds.height)
    .auto(window, top: view.bounds.height / 2 - 40, bottom: 0, right: 0, left: 0)
    .frame(heading, x: 0, y: 40, width: view.bounds.width, height: 65)
    .frame(message, x: 0, y: 138, width: view.bounds.width, height: 30)
    .frame(input, x: (view.bounds.width - 355) / 2, y: 258, width: 355, height: 67)
}
```

Without **WhipLayoutStack**, this process is generally written as follows.
This example does not use AutoLayout.

```swift
// UI instances or definisions
let scrollView = UIScrollView()
let window = UIView()
let heading = UILabel()
let message = UILabel()
let input = UITextField()
let button = UIButton()

override func viewDidLayoutSubviews() {
  super.viewDidLayoutSubviews()

  scrollView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
  window.frame = CGRect(x: 0, y: view.bounds.height / 2 - 40,
                        width: view.bounds.width, height: view.bounds.height / 2 + 40)
  heading.frame = CGRect(x: 0, y: 40, width: view.bounds.width, height: 65)
  message.frame = CGRect(x: 0, y: 138, width: view.bounds.width, height: 30)
  input.frame = CGRect(x: (view.bounds.width - 355) / 2, y: 258, width: 355, height: 67)
}
```
