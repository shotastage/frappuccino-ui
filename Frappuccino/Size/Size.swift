//
//  Size.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit


public struct Size {
    
    public static let width = UIScreen.main.bounds.size.width
    
    public static let height = UIScreen.main.bounds.size.height
    

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
