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
    
    public var fontSize: CGFloat = 22.0
    
    
    
    private var fontTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Helvetica-Bold", size: 22)!]
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public convenience init(text: String, size headingSize: Heading.Headings = .h1) {
        self.init()
        
        
        /*
        
        self.frame = CGRect(
            x: frame.origin.x,
            y: frame.origin.y,
            width: Size.width,
            height: font.lineHeight
        )
        
        self.fontTextAttributes = [NSAttributedString.Key.font: UIFont(name: self.fontName, size: fontSize.rawValue)!]
        */
        
        self.backgroundColor = .red
        self.text = text
        self.numberOfLines = 1
        self.fontSize = headingSize.rawValue
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open func drawText(in rect: CGRect) {
        
        print("LOG: \(self.fontSize)")
        self.font.withSize(self.fontSize)
        
        super.drawText(in: rect)

    }
    
    public enum Headings: CGFloat {
        case h1 = 30.0
        case h2 = 20.0
        case h3 = 18.0
        case h4 = 16.0
        case h5 = 14.0
        case h6 = 12.0
    }
}
