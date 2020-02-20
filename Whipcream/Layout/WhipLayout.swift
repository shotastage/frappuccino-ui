//
//  WhipLayout.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2020/02/20.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit



open class WhipLayout {
    
    public static let absoluteWidth: CGFloat = UIScreen.main.bounds.size.width

    public static let absoluteHeight: CGFloat = UIScreen.main.bounds.size.height

    public static func width(marginRight: CGFloat = 0.0, marginLeft: CGFloat = 0.0) -> CGFloat {
        return WhipLayout.absoluteWidth - (marginRight + marginLeft)
    }

    public static func height(marginTop: CGFloat = 0.0, marginBottom: CGFloat = 0.0) -> CGFloat {
        return WhipLayout.absoluteHeight - (marginTop + marginBottom)
    }

    public static func position(view: UIView, top: CGFloat = 0.0, bottom: CGFloat = 0.0,
                                right: CGFloat = 0.0, left: CGFloat = 0.0) -> CGPoint {
        
        return CGPoint(
            x: (absoluteWidth - view.frame.width) / 2,
            y: (absoluteHeight - view.frame.height - bottom)
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
