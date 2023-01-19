//
//  HomeView.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class HomeView: BaseView {
    
    lazy var registerButton: UIButton = {
        let register = UIButton(type: .custom)
        register.setTitle("Register", for: .normal)
        register.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        register.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        register.setTitleColor(.black, for: .normal)
        register.layer.masksToBounds = true
        register.layer.cornerRadius = 20
        register.layer.borderWidth = 2
        register.layer.borderColor = UIColor.black.cgColor
        
        return register
    }()
    
    lazy var seeGradeButton: UIButton = {
        let grade = UIButton(type: .custom)
        grade.setTitle("Grades", for: .normal)
        grade.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        grade.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        grade.setTitleColor(.white, for: .normal)
        grade.layer.masksToBounds = true
        grade.layer.cornerRadius = 20
        grade.layer.borderWidth = 2
        grade.backgroundColor = .black
        
        return grade
    }()
    
    override func addSubviews() {
        addSubview(registerButton)
        addSubview(seeGradeButton)
    }
    
    override func setConstraints() {
        registerButton.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 200, left: 70, bottom: 0, right: 70), size: .init(width: 200, height: 100))
        
        seeGradeButton.anchor(top: registerButton.bottomAnchor, leading: registerButton.leadingAnchor, bottom: nil, trailing: registerButton.trailingAnchor, padding: .init(top: 80, left: 0, bottom: 0, right: 0), size: .init(width: 200, height: 100))
    }
}
