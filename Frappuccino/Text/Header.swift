//
//  Header.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/01/27.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit



open class Header: UILabel {
    
    public var fontName: String = "Helvetica-Bold"
    
    private var fontTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Helvetica-Bold", size: 22)!]
    
    override public init(frame: CGRect) {
        super.init(frame: CGRect(x: frame.origin.x, y: frame.origin.y, width: Size.width, height: Size.height))
        
        self.fontTextAttributes = [NSAttributedString.Key.font: UIFont(name: self.fontName, size: 22)!]
    }
    
    convenience init(text: String, size: Header.HeadingSize = .one) {
        self.init()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public enum HeadingSize {
        case one
        case two
        case three
    }
}
