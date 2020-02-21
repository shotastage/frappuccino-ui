//
//  Size.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit


public struct Size {
        
    @available(iOS 13.0, *)
    public static let keyWindow = UIApplication.shared.connectedScenes
    .filter({$0.activationState == .foregroundActive})
    .map({$0 as? UIWindowScene})
    .compactMap({$0})
    .first?.windows
    .filter({$0.isKeyWindow}).first
    
    
    
    /*
    var keyWindow: UIWindow? {
           return windowScene?.windows
               .first(where: { $0.isKeyWindow })
    }
    */
    
    public static var width: CGFloat {
        if #available(iOS 13.0, *) {
            // return Size.keyWindow?.bounds.size.width ?? 0
            return UIApplication.shared.keyWindow?.bounds.size.width ?? 0

        }
        
        return UIApplication.shared.keyWindow?.bounds.size.width ?? 0
    }

    public static var height: CGFloat {
        if #available(iOS 13.0, *) {
            // return Size.keyWindow?.bounds.size.height ?? 0
            return UIApplication.shared.keyWindow?.bounds.size.height ?? 0

        }
        
        return UIApplication.shared.keyWindow?.bounds.size.height ?? 0
    }
    
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
