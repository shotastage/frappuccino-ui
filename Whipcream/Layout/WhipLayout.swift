//
//  WhipLayout.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2020/02/20.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit



open class WLViewStack {

    let root: UIView?
    
    var views: [UIView]?

    public init(root: UIView) {
        self.root = root
        self.views?.append(UIView(frame: .zero))
    }

    @discardableResult
    public func add(_ view: UIView, _ f: @escaping (UIView) -> Void = {_ in }) -> WLViewStack {
        f(view)
        self.root?.addSubview(view)
        return self
    }
}


open class WLayoutStack {

    let root: UIView?

    var usedHeight: CGFloat = 0.0

    var usedWidth: CGFloat = 0.0

    // Danger Absolute Sizes
    // This
    public static let dangerousAbsoluteScreenWidth: CGFloat = UIScreen.main.bounds.size.width

    public static let dangerousAbsoluteScreenHeight: CGFloat = UIScreen.main.bounds.size.height
    
    public init(root: UIView) {
        self.root = root
    }

    public func width(marginRight: CGFloat = 0.0, marginLeft: CGFloat = 0.0) -> CGFloat {
        return (root?.bounds.width ?? 0) - (marginRight + marginLeft)
    }

    public func height(marginTop: CGFloat = 0.0, marginBottom: CGFloat = 0.0) -> CGFloat {
        return (root?.bounds.height ?? 0) - (marginTop + marginBottom)
    }

    @discardableResult
    public func style(_ stylingTo: UIView, _ f: @escaping (UIView) -> Void = {_ in}) -> WLayoutStack {
        return self
    }
 
    @discardableResult
    public func position(_ stylingTo: UIView, size: CGSize, top: CGFloat = 0.0, bottom: CGFloat = 0.0,
                         right: CGFloat = 0.0, left: CGFloat = 0.0, _ f: @escaping (UIView) -> Void = {_ in}) -> WLayoutStack {
        stylingTo.frame = CGRect(
            x: ((root?.frame.width ?? 0) - size.width) / 2,
            y: ((root?.frame.height ?? 0) - size.height - bottom),
            width: size.width,
            height: size.height
        )
        
        return self
    }

    @discardableResult
    public func auto(_ stylingTo: UIView, top: CGFloat = 0.0, bottom: CGFloat = 0.0,
                     right: CGFloat = 0.0, left: CGFloat = 0.0, _ f: @escaping (UIView) -> Void = {_ in}) -> WLayoutStack {

        let calcWidth = (root?.bounds.width ?? 0) - (right + left)

        let calcHeight = (root?.bounds.height ?? 0) - (top + bottom)

    
        stylingTo.frame = CGRect(
            x: (WLayoutStack.dangerousAbsoluteScreenWidth - calcWidth) / 2,
            y: (WLayoutStack.dangerousAbsoluteScreenHeight - calcHeight - bottom),
            width: calcWidth,
            height: calcHeight
        )

        return self
    }

    @discardableResult
    func add() -> WLayoutStack {
        return self
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
        return WLayoutStack.dangerousAbsoluteScreenWidth - (marginRight + marginLeft)
    }

    @available(*, deprecated, renamed: "height")
    public static func height(marginTop: CGFloat = 0.0, marginBottom: CGFloat = 0.0) -> CGFloat {
        return WLayoutStack.dangerousAbsoluteScreenHeight - (marginTop + marginBottom)
    }

    @available(*, deprecated, renamed: "position")
    public static func position(_ parentView: UIView, size: CGSize, top: CGFloat = 0.0, bottom: CGFloat = 0.0,
                                right: CGFloat = 0.0, left: CGFloat = 0.0) -> CGRect {
        
        return CGRect(
            x: (parentView.frame.width - size.width) / 2,
            y: (parentView.frame.height - size.height - bottom),
            width: size.width,
            height: size.height
        )
    }
    
    @available(*, deprecated, renamed: "auto")
    public static func auto(top: CGFloat = 0.0,
                              bottom: CGFloat = 0.0, right: CGFloat = 0.0, left: CGFloat = 0.0) -> CGRect {
        
        let calcWidth = WLayoutStack.dangerousAbsoluteScreenWidth - (right + left)
        
        let calcHeight = WLayoutStack.dangerousAbsoluteScreenHeight - (top + bottom)
        
        return CGRect(
            x: (WLayoutStack.dangerousAbsoluteScreenWidth - calcWidth) / 2,
            y: (WLayoutStack.dangerousAbsoluteScreenHeight - calcHeight - bottom),
            width: calcWidth,
            height: calcHeight
        )
    }
}
