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


protocol WhipLayoutCalc {
    
}




open class WhipLayout {
    
    public static let absoluteWidth: CGFloat = UIScreen.main.bounds.size.width

    public static let absoluteHeight: CGFloat = UIScreen.main.bounds.size.height

    public static func width(marginRight: CGFloat = 0.0, marginLeft: CGFloat = 0.0) -> CGFloat {
        return WhipLayout.absoluteWidth - (marginRight + marginLeft)
    }

    public static func height(marginTop: CGFloat = 0.0, marginBottom: CGFloat = 0.0) -> CGFloat {
        return WhipLayout.absoluteHeight - (marginTop + marginBottom)
    }

    public static func position(_ parentView: UIView, size: CGSize, top: CGFloat = 0.0, bottom: CGFloat = 0.0,
                                right: CGFloat = 0.0, left: CGFloat = 0.0) -> CGRect {
        
        return CGRect(
            x: (parentView.frame.width - size.width) / 2,
            y: (parentView.frame.height - size.height - bottom),
            width: size.width,
            height: size.height
        )
    }
    
    public static func auto(top: CGFloat = 0.0,
                              bottom: CGFloat = 0.0, right: CGFloat = 0.0, left: CGFloat = 0.0) -> CGRect {
        
        let calcWidth = WhipLayout.absoluteWidth - (right + left)
        
        let calcHeight = WhipLayout.absoluteHeight - (top + bottom)
        
        return CGRect(
            x: (WhipLayout.absoluteWidth - calcWidth) / 2,
            y: (WhipLayout.absoluteHeight - calcHeight - bottom),
            width: calcWidth,
            height: calcHeight
        )
    }
}
