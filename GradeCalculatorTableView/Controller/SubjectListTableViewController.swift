//
//  SubjectsListTableViewController.swift
//  GradeCalculatorTableView
//
//  Created by unicred on 19/01/23.
//

import UIKit

class SubjectListTableViewController: UIViewController {
    
    let customView = SubjectListTableView()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
    }
    
    func setDelegate() {
        customView.tableView.delegate = self
        customView.tableView.dataSource = self
    }
}

extension SubjectListTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customView.cellID, for: indexPath) as! SubjectListTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
    }
}
