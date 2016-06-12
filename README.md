# CartographyKit

[Cartography][Cartography] is a great Autolayout framework by [robb][robb]. It’s very flexible and makes working with Apples Autolayout fun. But if you just want to create simple layouts you end up with writing many:
```Swift
constrain(view1) { view1 in
		view1.height == view.superview!.height
		view1.left == view.superview!.left
		view1.right == view.superview!.right
		view1.centerX == view.superview!.centerX
}
```

CartographyKit uses Cartography under the hood but makes working with it much easier for simple layouts:

```Swift
CartographyKit.height(view: yourView)
CartographyKit.left(view: yourView)
CartographyKit.right(view: yourView)
CartographyKit.centerX(view: yourView)
```


[Cartography]: https://github.com/robb/Cartography
[robb]:            http://robb.is