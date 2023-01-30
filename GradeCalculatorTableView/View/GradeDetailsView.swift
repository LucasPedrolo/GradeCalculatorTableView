//
//  GradeDetailsTableViewView.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class GradeDetailsView: BaseView {
    var grade: RegisterGrades? {
        didSet {
            nameLabel.text = "Name: \(grade?.name ?? defString)"
            subjectLabel.text = "Subject: \(grade?.subject ?? defString)"
            grade1TxtField.text = "\(grade?.grades?.grade1 ?? defInt)"
            grade2TxtField.text = "\(grade?.grades?.grade2 ?? defInt)"
            grade3TxtField.text = "\(grade?.grades?.grade3 ?? defInt)"
            grade4TxtField.text = "\(grade?.grades?.grade4 ?? defInt)"
        }
    }
    
    lazy var titleLabel: UILabel = {
        let titleLbl = UILabel()
        titleLbl.text = "Subject Grade"
        titleLbl.textColor = .black
        titleLbl.font = UIFont.systemFont(ofSize: 18)
        titleLbl.textAlignment = .center
        
        return titleLbl
    }()
    
    lazy var nameLabel: UILabel = {
        let name = UILabel()
        name.text = ""
        name.textColor = .black
        name.font = UIFont.systemFont(ofSize: 20)
        
        return name
    }()
    
    lazy var subjectLabel: UILabel = {
        let subject = UILabel()
        subject.text = ""
        subject.textColor = .black
        subject.font = UIFont.systemFont(ofSize: 20)
        
        return subject
    }()
    
    lazy var grade1Label: UILabel = {
        let grade = UILabel()
        grade.text = "Grade 1:"
        grade.textColor = .black
        grade.font = UIFont.systemFont(ofSize: 20)
        
        return grade
    }()
    
    lazy var grade2Label: UILabel = {
        let grade = UILabel()
        grade.text = "Grade 2:"
        grade.textColor = .black
        grade.font = UIFont.systemFont(ofSize: 20)
        
        return grade
    }()
    
    lazy var grade3Label: UILabel = {
        let grade = UILabel()
        grade.text = "Grade 3:"
        grade.textColor = .black
        grade.font = UIFont.systemFont(ofSize: 20)
        
        return grade
    }()
    
    lazy var grade4Label: UILabel = {
        let grade = UILabel()
        grade.text = "Grade 4:"
        grade.textColor = .black
        grade.font = UIFont.systemFont(ofSize: 20)
        
        return grade
    }()
    
    lazy var calcGradeLabel: UILabel = {
        let calc = UILabel()
        calc.text = ""
        calc.textColor = .black
        calc.font = UIFont.systemFont(ofSize: 20)
        
        return calc
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
    
    lazy var calcButton: UIButton = {
        let button = UIButton()
        button.setTitle("Recalutate Grade", for: .normal)
        button.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 2
        button.backgroundColor = .black
        
        return button
    }()
    
    override func addSubviews() {
        addSubview(titleLabel)
        addSubview(nameLabel)
        addSubview(subjectLabel)
        addSubview(grade1TxtField)
        addSubview(grade2TxtField)
        addSubview(grade3TxtField)
        addSubview(grade4TxtField)
        addSubview(grade1Label)
        addSubview(grade2Label)
        addSubview(grade3Label)
        addSubview(grade4Label)
        addSubview(calcGradeLabel)
        addSubview(calcButton)
    }
    
    override func setConstraints() {
        titleLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 50, left: 95, bottom: 0, right: 0), size: .init(width: 200, height: 20))
        
        nameLabel.anchor(top: titleLabel.bottomAnchor, leading: titleLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: -25, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        subjectLabel.anchor(top: nameLabel.bottomAnchor, leading: nameLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 250, height: 40))
        
        grade1TxtField.anchor(top: subjectLabel.bottomAnchor, leading: subjectLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 90, bottom: 0, right: 0), size: .init(width: 130, height: 40))
        
        grade2TxtField.anchor(top: grade1TxtField.bottomAnchor, leading: grade1TxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 130, height: 40))
        
        grade3TxtField.anchor(top: grade2TxtField.bottomAnchor, leading: grade2TxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 130, height: 40))
        
        grade4TxtField.anchor(top: grade3TxtField.bottomAnchor, leading: grade3TxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 130, height: 40))
        
        grade1Label.anchor(top: grade1TxtField.topAnchor, leading: nil, bottom: nil, trailing: grade1TxtField.leadingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: -10), size: .init(width: 100, height: 40))
        
        grade2Label.anchor(top: grade2TxtField.topAnchor, leading: nil, bottom: nil, trailing: grade2TxtField.leadingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: -10), size: .init(width: 100, height: 40))
        
        grade3Label.anchor(top: grade3TxtField.topAnchor, leading: nil, bottom: nil, trailing: grade3TxtField.leadingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: -10), size: .init(width: 100, height: 40))
        
        grade4Label.anchor(top: grade4TxtField.topAnchor, leading: nil, bottom: nil, trailing: grade4TxtField.leadingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: -10), size: .init(width: 100, height: 40))
        
        calcGradeLabel.anchor(top: grade4Label.bottomAnchor, leading: nil, bottom: nil, trailing: grade4Label.trailingAnchor, padding: .init(top: 30, left: 0, bottom: 0, right: -100), size: .init(width: 120, height: 40))
        
        calcButton.anchor(top: calcGradeLabel.bottomAnchor, leading: calcGradeLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 40, left: -50, bottom: 0, right: 0), size: .init(width: 180, height: 50))
    }
}
