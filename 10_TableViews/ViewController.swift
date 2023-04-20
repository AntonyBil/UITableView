//
//  ViewController.swift
//  10_TableViews
//
//  Created by apple on 19.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let sections = ["Animals", "Fruits", "Cars"]
    let rows: [[String]] = [
        ["Dog", "Lion", "Wolf", "Tiger"],
        ["Orange", "Apple"],
        ["BMW", "Audi", "Ferrari"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rows[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let title = rows[indexPath.section][indexPath.row]
        cell.textLabel?.text = title
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    
    
}
