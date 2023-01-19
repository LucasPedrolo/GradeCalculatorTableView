//
//  SubjectTableViewControllerCell.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class SubjectListTableViewCell: BaseTableCell {
    
    lazy var container: UIView = {
        let test = UIView()
        test.layer.masksToBounds = true
        test.layer.cornerRadius = 10
        test.layer.borderWidth = 2
        test.layer.borderColor = UIColor.black.cgColor
        test.backgroundColor = .white
        return test
    }()
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "book")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var subjectLabel: UILabel = {
        let subject = UILabel()
        subject.text = ""
        subject.textColor = .black
        subject.font = UIFont.systemFont(ofSize: 20)
        subject.textAlignment = .center
        subject.layer.cornerRadius = 2
        subject.layer.borderWidth = 0
        
        return subject
    }()
    
    override func layoutSubviews() {
        frame.inset(by: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0))
    }
    
    override func addSubview() {
        addSubview(container)
        container.addSubview(image)
        container.addSubview(subjectLabel)
    }
    
    override func setConstraint() {
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 8, bottom: 0, right: 8), size: .init(width: frame.width, height: 20))
        
        image.anchor(top: container.topAnchor, leading: container.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: -10, left: 15, bottom: 0, right: 0), size: .init(width: 100, height: 100))
        
        subjectLabel.anchor(top: image.topAnchor, leading: image.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 40, left: 120, bottom: 0, right: 0), size: .init(width: 150, height: 20))
    }
}
