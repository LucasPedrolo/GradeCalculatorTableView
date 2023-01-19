//
//  BaseTableCell.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class BaseTableCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview()
        setConstraint()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        //do nothing
    }
    
    func setConstraint() {
        //do nothing
    }
}
