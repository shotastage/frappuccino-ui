//
//  TableViewController.swift
//  Whipcream
//
//  Created by Shota Shimazu on 2019/04/21.
//  Copyright © 2019 Shota Shimazu. All rights reserved.
//

import UIKit

open class TableView: UITableView {
    public var isNoneSeparator: OnOff = .off

    public override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)

        separatorInset = UIEdgeInsets.zero

        if isNoneSeparator.boolean {
            separatorStyle = .none
        }
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
