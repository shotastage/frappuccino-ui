//
//  TableViewController.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/04/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit



open class TableView: UITableView {
    
    public var isNoneSeparator = false
    
    override public init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        self.separatorInset = UIEdgeInsets.zero
        
        if isNoneSeparator {
            self.separatorStyle = .none
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
