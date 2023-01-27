//
//  GradeDetailsViewController.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class GradeDetailsViewController: UIViewController {
    var gradeDetailsView = GradeDetailsView()
    var viewModel = GradeDetailsViewModel()
    
    override func loadView() {
        view = gradeDetailsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradeData()
    }
    
    func getData(registerGrade: RegisterGrades) {
        gradeDetailsView.grade = registerGrade
    }
    
    func gradeData() {
        if Int(gradeDetailsView.grade1TxtField.text ?? defString) != nil && Int(gradeDetailsView.grade2TxtField.text ?? defString) != nil && Int(gradeDetailsView.grade3TxtField.text ?? defString) != nil && Int(gradeDetailsView.grade4TxtField.text ?? defString) != nil {
            let result = viewModel.calcGradeData(grade1: Int(gradeDetailsView.grade1TxtField.text ?? defString) ?? defInt, grade2: Int(gradeDetailsView.grade2TxtField.text ?? defString) ?? defInt, grade3: Int(gradeDetailsView.grade3TxtField.text ?? defString) ?? defInt, grade4: Int(gradeDetailsView.grade4TxtField.text ?? defString) ?? defInt)
            
            gradeDetailsView.calcGradeLabel.text = "Média: \(result)"
        } else {
            gradeDetailsView.calcGradeLabel.text = "Média: Error"
        }
    }
}
