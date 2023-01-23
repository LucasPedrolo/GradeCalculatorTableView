//
//  SignInViewController.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var registerView = RegisterView()
    var viewModel = RegisterViewModel()
    var validationList: [RegisterGrades] = []
    
    override func loadView() {
        view = registerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDelegates()
        
        registerView.goHomeButton.addTarget(self, action: #selector(navigation), for: .touchUpInside)
    }
    
    func addDelegates() {
        registerView.nameTxtField.delegate = self
        registerView.subjectTxtField.delegate = self
        registerView.grade1TxtField.delegate = self
        registerView.grade2TxtField.delegate = self
        registerView.grade3TxtField.delegate = self
        registerView.grade4TxtField.delegate = self
    }
    
    @objc func navigation() {
        let home = SubjectListTableViewController()
        
        validationList.append(populateValidationItem())
        
        if let encode = try? JSONEncoder().encode(validationList) {
            UserDefaults.standard.set(encode, forKey: "validation")
        }
        navigationController?.pushViewController(home, animated: true)
    }
    
    func populateValidationItem() -> RegisterGrades {
        let validation = viewModel.dataGrade(name: registerView.nameTxtField.text ?? defString, subject: registerView.subjectTxtField.text ?? defString, grades: Grades(grade1: Int(registerView.grade1TxtField.text ?? defString) ?? defInt, grade2: Int(registerView.grade2TxtField.text ?? defString) ?? defInt, grade3: Int(registerView.grade3TxtField.text ?? defString) ?? defInt, grade4: Int(registerView.grade4TxtField.text ?? defString) ?? defInt))
        
        if let validation = validation {
            return validation
        }
        
        return RegisterGrades()
    }
}

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        if textField.isEqual(registerView.nameTxtField) {
            registerView.subjectTxtField.becomeFirstResponder()
        }
        if textField.isEqual(registerView.subjectTxtField) {
            registerView.grade1TxtField.becomeFirstResponder()
        }
        if textField.isEqual(registerView.grade1TxtField) {
            registerView.grade2TxtField.becomeFirstResponder()
        }
        if textField.isEqual(registerView.grade2TxtField) {
            registerView.grade3TxtField.becomeFirstResponder()
        }
        if textField.isEqual(registerView.grade3TxtField) {
            registerView.grade4TxtField.becomeFirstResponder()
        } else {
            registerView.grade4TxtField.resignFirstResponder()
            navigation()
        }
        return true
    }
}
