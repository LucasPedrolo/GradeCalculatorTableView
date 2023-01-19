//
//  SignInView.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class RegisterView: BaseView {
    
    lazy var titleLabel: UILabel = {
        let titleLbl = UILabel()
        titleLbl.text = "Register Your Grades"
        titleLbl.textColor = .black
        titleLbl.font = UIFont.systemFont(ofSize: 18)
        titleLbl.textAlignment = .center
        
        return titleLbl
    }()
    
    lazy var nameTxtField: UITextField = {
        let name = UITextField()
        name.placeholder = "Name"
        name.borderStyle = UITextField.BorderStyle.roundedRect
        name.autocorrectionType = UITextAutocorrectionType.no
        name.keyboardType = UIKeyboardType.default
        name.returnKeyType = UIReturnKeyType.done
        name.clearButtonMode = UITextField.ViewMode.whileEditing
        name.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        name.autocapitalizationType = .none
        
        return name
    }()
    
    lazy var subjectTxtField: UITextField = {
        let subject = UITextField()
        subject.placeholder = "Subject"
        subject.borderStyle = UITextField.BorderStyle.roundedRect
        subject.autocorrectionType = UITextAutocorrectionType.no
        subject.keyboardType = UIKeyboardType.default
        subject.returnKeyType = UIReturnKeyType.done
        subject.clearButtonMode = UITextField.ViewMode.whileEditing
        subject.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        subject.autocapitalizationType = .none
        
        return subject
    }()
    
    lazy var grade1TxtField: UITextField = {
        let grade1 = UITextField()
        grade1.placeholder = "First Grade"
        grade1.borderStyle = UITextField.BorderStyle.roundedRect
        grade1.autocorrectionType = UITextAutocorrectionType.no
        grade1.keyboardType = UIKeyboardType.default
        grade1.returnKeyType = UIReturnKeyType.done
        grade1.clearButtonMode = UITextField.ViewMode.whileEditing
        grade1.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        grade1.autocapitalizationType = .none
        
        return grade1
    }()
    
    lazy var grade2TxtField: UITextField = {
        let grade2 = UITextField()
        grade2.placeholder = "Second Grade"
        grade2.borderStyle = UITextField.BorderStyle.roundedRect
        grade2.autocorrectionType = UITextAutocorrectionType.no
        grade2.keyboardType = UIKeyboardType.default
        grade2.returnKeyType = UIReturnKeyType.done
        grade2.clearButtonMode = UITextField.ViewMode.whileEditing
        grade2.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        grade2.autocapitalizationType = .none
        
        return grade2
    }()
    
    lazy var grade3TxtField: UITextField = {
        let grade3 = UITextField()
        grade3.placeholder = "Third Grade"
        grade3.borderStyle = UITextField.BorderStyle.roundedRect
        grade3.autocorrectionType = UITextAutocorrectionType.no
        grade3.keyboardType = UIKeyboardType.default
        grade3.returnKeyType = UIReturnKeyType.done
        grade3.clearButtonMode = UITextField.ViewMode.whileEditing
        grade3.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        grade3.autocapitalizationType = .none
        
        return grade3
    }()
    
    lazy var grade4TxtField: UITextField = {
        let grade4 = UITextField()
        grade4.placeholder = "Fourth Grade"
        grade4.borderStyle = UITextField.BorderStyle.roundedRect
        grade4.autocorrectionType = UITextAutocorrectionType.no
        grade4.keyboardType = UIKeyboardType.default
        grade4.returnKeyType = UIReturnKeyType.done
        grade4.clearButtonMode = UITextField.ViewMode.whileEditing
        grade4.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        grade4.autocapitalizationType = .none
        
        return grade4
    }()
    
    lazy var goHomeButton: UIButton = {
        let goHome = UIButton(type: .custom)
        goHome.setTitle("Register", for: .normal)
        goHome.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        goHome.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        goHome.setTitleColor(.white, for: .normal)
        goHome.layer.masksToBounds = true
        goHome.layer.cornerRadius = 20
        goHome.layer.borderWidth = 2
        goHome.layer.borderColor = UIColor.black.cgColor
        goHome.backgroundColor = .black
        
        return goHome
    }()
    
    override func addSubviews() {
        addSubview(titleLabel)
        addSubview(nameTxtField)
        addSubview(subjectTxtField)
        addSubview(grade1TxtField)
        addSubview(grade2TxtField)
        addSubview(grade3TxtField)
        addSubview(grade4TxtField)
        addSubview(goHomeButton)
    }
    
    override func setConstraints() {
        titleLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 50, left: 95, bottom: 0, right: 0), size: .init(width: 200, height: 20))
        
        nameTxtField.anchor(top: titleLabel.bottomAnchor, leading: titleLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: -25, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        subjectTxtField.anchor(top: nameTxtField.bottomAnchor, leading: nameTxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        grade1TxtField.anchor(top: subjectTxtField.bottomAnchor, leading: subjectTxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        grade2TxtField.anchor(top: grade1TxtField.bottomAnchor, leading: grade1TxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        grade3TxtField.anchor(top: grade2TxtField.bottomAnchor, leading: grade2TxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        grade4TxtField.anchor(top: grade3TxtField.bottomAnchor, leading: grade3TxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        goHomeButton.anchor(top: grade4TxtField.bottomAnchor, leading: grade4TxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 80, left: 0, bottom: 20, right: 0), size: .init(width: 250, height: 50))
    }
}
