//
//  SubjectsListTableViewController.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class SubjectListTableViewController: UIViewController {
    
    let customView = SubjectListTableView()
    var grades: [RegisterGrades] = []
    
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
           let validation = try? JSONDecoder().decode(Array<RegisterGrades>.self, from: data) {
            for i in validation {
                self.grades.append(i)
            }
        }
    }
    
    func setTableViewDelegate() {
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
    }
}

extension SubjectListTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    //Define o número de células da lista
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grades.count
    }
    
    //Define a classe responsável por customizar a célula e também passa dados para dentro do didSet
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellID, for: indexPath) as! SubjectListTableViewCell
        cell.grade = grades[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let gradeDetailViewController = GradeDetailsViewController()
        gradeDetailViewController.getData(registerGrade: grades[indexPath.row])
        self.navigationController?.pushViewController(gradeDetailViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
    }
}
