//
//  SignInViewModel.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import Foundation

class RegisterViewModel {
    
    func dataGrade(name: String?, subject: String?, grades: Grades?) -> RegisterGrades?  {
        
        let register = RegisterGrades(name: name, subject: subject, grades: grades)
        
        return register
    }
}
