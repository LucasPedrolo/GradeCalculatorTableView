//
//  SignInViewController.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class RegisterViewController: UIViewController {
    var registerView = RegisterView()
    
    override func loadView() {
        view = registerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDelegates()
        
        registerView.goHomeButton.addTarget(self, action: #selector(goHome), for: .touchUpInside)
    }
    
    func addDelegates() {
        registerView.nameTxtField.delegate = self
        registerView.subjectTxtField.delegate = self
        registerView.grade1TxtField.delegate = self
        registerView.grade2TxtField.delegate = self
        registerView.grade3TxtField.delegate = self
        registerView.grade4TxtField.delegate = self
    }
    
    @objc func goHome() {
        let home = HomeViewController()
        
        navigationController?.pushViewController(home, animated: true)
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
            goHome()
        }
        
        return true
    }
}
