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
        
        self.text = text
        self.numberOfLines = 1
        self.font = self.font.withSize(headingSize.rawValue)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public enum Headings: CGFloat {
        case h1 = 35.0
        case h2 = 28.0
        case h3 = 23.0
        case h4 = 18.0
        case h5 = 15.0
        case h6 = 12.0
    }
}
