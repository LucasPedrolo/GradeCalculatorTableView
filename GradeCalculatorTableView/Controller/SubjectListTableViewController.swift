//
//  SubjectsListTableViewController.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class SubjectListTableViewController: UIViewController {
    
    let customView = SubjectListTableView()
    var grades: [RegisterGrades]?
    var grade: RegisterGrades?
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableViewDelegate()
        setUserDefault()
    }
    
    func setUserDefault() {
        if let data = UserDefaults.standard.object(forKey: "validation") as? Data,
           let validation = try? JSONDecoder().decode(RegisterGrades.self, from: data) {
            self.grade = validation
        }
    }
    
    func setTableViewDelegate() {
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
    }
}

extension SubjectListTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellID, for: indexPath) as! SubjectListTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
    }
    
//    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
//        
//    }
    
}
