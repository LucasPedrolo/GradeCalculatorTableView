//
//  ViewController.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class HomeViewController: UIViewController {

    var homeView = HomeView()
    var registerGrade: RegisterGrades?
    var grade: RegisterGrades?
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        homeView.registerButton.addTarget(self, action: #selector(goSignIn), for: .touchUpInside)
        homeView.seeGradeButton.addTarget(self, action: #selector(goSubjectList), for: .touchUpInside)
    }

    @objc func goSignIn() {
        let signIn = RegisterViewController()
        
        navigationController?.pushViewController(signIn, animated: true)
    }
    
    @objc func goSubjectList() {
        let subjectList = SubjectListTableViewController()
        
        navigationController?.pushViewController(subjectList, animated: true)
    }
    
}

