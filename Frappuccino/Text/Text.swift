//
//  Text.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/01/27.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit



@IBDesignable
open class Text: UIView {

    public var text: String? // default is nil
    
    public var font: UIFont! // default is nil (system font 17 plain)
    
    public var textColor: UIColor! // default is nil (text draws black)
    
    public var textAlignment: NSTextAlignment!
    
    public var attributedText: NSAttributedString? // default is nil

    
    convenience init(text: String, size: Text.TextSize = .bold) {
        self.init()
    }
    
    
    enum TextSize {
        case bold
    }
}
