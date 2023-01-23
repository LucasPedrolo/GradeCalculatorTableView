//
//  GradeDetailsViewModel.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import Foundation

class GradeDetailsViewModel {
    
    func calcGradeData(grade1: Int, grade2: Int, grade3: Int, grade4: Int) -> Int {
        
        let result: Int = ((grade1 + grade2) + (grade3 + grade4)) / 4
        
        return result
    }
}
