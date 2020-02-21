//
//  Size.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit


public struct Size {

    public static let width: CGFloat = UIApplication.shared.keyWindow?.bounds.size.width ?? 0

    public static let height: CGFloat = UIApplication.shared.keyWindow?.bounds.size.height ?? 0
    
    public static let halfWidth: CGFloat = Size.width / 2
    
    public static let halfHeight: CGFloat = Size.height / 2

    public static let statusbarHeight: CGFloat = UIApplication.shared.statusBarFrame.height

    public static func widthFitToScreen(ratio: Double) -> CGFloat {
        return 0.1
    }
    
    public static func heightFitToScreen(ratio: Double) -> CGFloat {
        return 0.1
    }
    
    @available(iOS 11.0, *)
    public struct Safearea {

        public static var available: Bool {
            get {
                if Safearea.bottom != 0 {
                    return true
                } else {
                    return false
                }
            }
        }


        public static var top: CGFloat {
            get {
                let window = UIApplication.shared.keyWindow
                return window?.safeAreaInsets.top ?? 0.0
            }
        }

        public static var bottom: CGFloat {
            get {
                let window = UIApplication.shared.keyWindow
                return window?.safeAreaInsets.bottom ?? 0.0
            }
        }
    }
}
