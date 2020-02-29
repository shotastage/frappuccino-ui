//
//  Size.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/01/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit

public struct Size {
    public static var dangerousAbsoluteScreenWidth: CGFloat {
        print("[Whipcream Warning] ", "Use dangerousAbsoluteScreenWidth is might be collapsed layout.")
        return UIScreen.main.bounds.size.width
    }

    public static var dangerousAbsoluteScreenHeight: CGFloat {
        print("[Whipcream Warning] ", "Use dangerousAbsoluteScreenHeight is might be collapsed layout.")
        return UIScreen.main.bounds.size.height
    }

    let root: UIView?

    public init(_ root: UIView) {
        self.root = root
    }

    public var width: CGFloat {
        root?.bounds.width ?? 0
    }

    public var height: CGFloat {
        root?.bounds.height ?? 0
    }

    @available(*, deprecated)
    public let halfWidth: CGFloat = 0.0

    @available(*, deprecated)
    public let halfHeight: CGFloat = 0.0

    public func ratio(_ orientation: Int, _ ratio: Int) -> CGFloat {
        height * CGFloat(ratio / 100)
    }

    public static let statusbarHeight: CGFloat = UIApplication.shared.statusBarFrame.height

    public static func widthFitToScreen(ratio: Double) -> CGFloat {
        0.1
    }

    public static func heightFitToScreen(ratio: Double) -> CGFloat {
        0.1
    }

    @available(iOS 11.0, *)
    public struct Safearea {
        public static var available: Bool {
            if Safearea.bottom != 0 {
                return true
            } else {
                return false
            }
        }

        public static var top: CGFloat {
            let window = UIApplication.shared.keyWindow
            return window?.safeAreaInsets.top ?? 0.0
        }

        public static var bottom: CGFloat {
            let window = UIApplication.shared.keyWindow
            return window?.safeAreaInsets.bottom ?? 0.0
        }
    }
}
