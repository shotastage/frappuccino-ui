//
//  Header.swift
//  Frappuccino
//
//  Created by Shota Shimazu on 2019/01/27.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit



open class Heading: UILabel {
    
    public var fontName: String = "Helvetica-Bold"
    
    private var fontTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Helvetica-Bold", size: 22)!]
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(text: String, size: Heading.Headings = .h1) {
        self.init()
        
        self.frame = CGRect(
            x: frame.origin.x,
            y: frame.origin.y,
            width: Size.width,
            height: font.lineHeight
        )
        
        self.fontTextAttributes = [NSAttributedString.Key.font: UIFont(name: self.fontName, size: 22)!]

    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public enum Headings {
        case h1
        case h2
        case h3
        case h4
        case h5
        case h6
    }
}
