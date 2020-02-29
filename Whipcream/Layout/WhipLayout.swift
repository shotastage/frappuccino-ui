//
//  WhipLayout.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2020/02/20.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit

@_functionBuilder
public struct ViewStackBuilder {
    public typealias View = UIView

    public static func buildBlock(_ v: View...) -> [View] {
        v
    }
}

public struct VStack {
    let views: [UIView]

    @discardableResult
    public init(_ view: UIView, @ViewStackBuilder _ builder: () -> [UIView]) {
        views = builder()

        for v in views {
            view.addSubview(v)
        }
    }

    public func inject() -> [UIView] {
        views
    }
}

public struct HStack {
    let views: [UIView]
}

/**
 WLViewStack has been renamed to `WhipViewStack`.
 */
@available(*, deprecated, renamed: "WhipViewStack")
open class WLViewStack {}

/**
 WLayoutStack has been renamed to `WhipLayoutStack`.
 */
@available(*, deprecated, renamed: "WhipLayoutStack")
open class WLayoutStack {}

/**
 **WhipViewStack** is class for stacking and composing UI structure visually better syntax.

 - Usage:   `WhipViewStack(root: [ROOT UIView instance])`
 */
open class WhipViewStack {
    private let root: UIView?

    private var views: [UIView]?

    /// :nodoc:
    public init(root: UIView) {
        self.root = root
        views?.append(UIView(frame: .zero))
    }

    /**
      Add a new UIView or inherited class instance as a WhipLayout view stack.
      It automatically run `addSubview` internally.
     - parameter view: Add target UIView
     - parameter f:  Closure that inherite first param view instance.
     - returns: WhipViewStack instance to sequentially method.
     */
    @discardableResult
    public func add(_ view: UIView, _ f: @escaping (UIView) -> Void = { _ in }) -> WhipViewStack {
        f(view)
        root?.addSubview(view)
        return self
    }
}

/**
 **WhipLayoutStack** is DSL class for stacking layout related codes.

 - Usage:   `WhipLayoutStack(root: [ROOT UIView instance])`
 */
open class WhipLayoutStack {
    let root: UIView?

    var usedHeight: CGFloat = 0.0

    var usedWidth: CGFloat = 0.0

    // Danger Absolute Sizes
    // This
    public static var dangerousAbsoluteScreenWidth: CGFloat {
        print("[Whipcream Layout Engine] ", "Use dangerousAbsoluteScreenWidth is might be collapsed layout.")
        return UIScreen.main.bounds.size.width
    }

    public static var dangerousAbsoluteScreenHeight: CGFloat {
        print("[Whipcream Layout Engine] ", "Use dangerousAbsoluteScreenHeight is might be collapsed layout.")
        return UIScreen.main.bounds.size.height
    }

    public init(root: UIView) {
        self.root = root
    }

    public func width(marginRight: CGFloat = 0.0, marginLeft: CGFloat = 0.0) -> CGFloat {
        (root?.bounds.width ?? 0) - (marginRight + marginLeft)
    }

    public func height(marginTop: CGFloat = 0.0, marginBottom: CGFloat = 0.0) -> CGFloat {
        (root?.bounds.height ?? 0) - (marginTop + marginBottom)
    }

    @discardableResult
    public func frame(_ stylingTo: UIView, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> WhipLayoutStack {
        stylingTo.frame = CGRect(x: x, y: y, width: width, height: height)
        return self
    }

    @discardableResult
    public func point(_ stylingTo: UIView, x: CGFloat, y: CGFloat) -> WhipLayoutStack {
        stylingTo.frame.origin = CGPoint(x: x, y: y)
        return self
    }

    @discardableResult
    public func size(_ stylingTo: UIView, width: CGFloat, height: CGFloat) -> WhipLayoutStack {
        stylingTo.frame.size = CGSize(width: width, height: height)
        return self
    }

    @discardableResult
    public func position(_ stylingTo: UIView, size: CGSize, top: CGFloat = 0.0, bottom: CGFloat = 0.0,
                         right: CGFloat = 0.0, left: CGFloat = 0.0) -> WhipLayoutStack {
        stylingTo.frame = CGRect(
            x: ((root?.frame.width ?? 0) - size.width) / 2,
            y: (root?.frame.height ?? 0) - size.height - bottom,
            width: size.width,
            height: size.height
        )

        return self
    }

    @discardableResult
    public func auto(_ stylingTo: UIView, top: CGFloat = 0.0, bottom: CGFloat = 0.0,
                     right: CGFloat = 0.0, left: CGFloat = 0.0) -> WhipLayoutStack {
        let calcWidth = (root?.bounds.width ?? 0) - (right + left)

        let calcHeight = (root?.bounds.height ?? 0) - (top + bottom)

        stylingTo.frame = CGRect(
            x: ((root?.bounds.width ?? 0) - calcWidth) / 2,
            y: (root?.bounds.height ?? 0) - calcHeight - bottom,
            width: calcWidth,
            height: calcHeight
        )

        return self
    }

    @discardableResult
    public func fixHeight(_ stylingTo: UIView, right: CGFloat = 0.0, left: CGFloat = 0.0, height: CGFloat) -> WhipLayoutStack {
        let calcWidth = (root?.bounds.width ?? 0) - (right + left)

        let calcHeight = (root?.bounds.height ?? 0) - height

        stylingTo.frame = CGRect(
            x: ((root?.bounds.width ?? 0) - calcWidth) / 2,
            y: (root?.bounds.height ?? 0) - calcHeight,
            width: calcWidth,
            height: height
        )

        return self
    }

    @discardableResult
    public func fixWidth(_ stylingTo: UIView, top: CGFloat = 0.0, bottom: CGFloat = 0.0, width: CGFloat) -> WhipLayoutStack {
        let calcWidth = (root?.bounds.width ?? 0) - width

        let calcHeight = (root?.bounds.height ?? 0) - (top + bottom)

        stylingTo.frame = CGRect(
            x: ((root?.bounds.width ?? 0) - calcWidth) / 2,
            y: (root?.bounds.height ?? 0) - calcHeight,
            width: width,
            height: calcHeight
        )

        return self
    }

    @discardableResult
    func stack(_ applyTo: UIView, _ f: @escaping (WhipLayoutStack) -> WhipLayoutStack) -> WhipLayoutStack {
        f(self)
    }
}

@available(*, deprecated, renamed: "WLayoutStack")
open class WhipLayout {
    @available(*, deprecated, renamed: "dangerousAbsoluteScreenWidth")
    public static let absoluteWidth: CGFloat = UIScreen.main.bounds.size.width

    @available(*, deprecated, renamed: "dangerousAbsoluteScreenHeight")
    public static let absoluteHeight: CGFloat = UIScreen.main.bounds.size.height

    @available(*, deprecated, renamed: "width")
    public static func width(marginRight: CGFloat = 0.0, marginLeft: CGFloat = 0.0) -> CGFloat {
        WhipLayoutStack.dangerousAbsoluteScreenWidth - (marginRight + marginLeft)
    }

    @available(*, deprecated, renamed: "height")
    public static func height(marginTop: CGFloat = 0.0, marginBottom: CGFloat = 0.0) -> CGFloat {
        WhipLayoutStack.dangerousAbsoluteScreenHeight - (marginTop + marginBottom)
    }

    @available(*, deprecated, renamed: "position")
    public static func position(_ parentView: UIView, size: CGSize, top: CGFloat = 0.0, bottom: CGFloat = 0.0,
                                right: CGFloat = 0.0, left: CGFloat = 0.0) -> CGRect {
        CGRect(
            x: (parentView.frame.width - size.width) / 2,
            y: parentView.frame.height - size.height - bottom,
            width: size.width,
            height: size.height
        )
    }

    @available(*, deprecated, renamed: "auto")
    public static func auto(top: CGFloat = 0.0,
                            bottom: CGFloat = 0.0, right: CGFloat = 0.0, left: CGFloat = 0.0) -> CGRect {
        let calcWidth = WhipLayoutStack.dangerousAbsoluteScreenWidth - (right + left)

        let calcHeight = WhipLayoutStack.dangerousAbsoluteScreenHeight - (top + bottom)

        return CGRect(
            x: (WhipLayoutStack.dangerousAbsoluteScreenWidth - calcWidth) / 2,
            y: WhipLayoutStack.dangerousAbsoluteScreenHeight - calcHeight - bottom,
            width: calcWidth,
            height: calcHeight
        )
    }
}
