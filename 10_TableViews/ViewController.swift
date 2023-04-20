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
        tableView.delegate = self
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        let title = rows[indexPath.section][indexPath.row]
        cell.cellLabel.text = title
        cell.cellImageView.image = #imageLiteral(resourceName: "ricky")
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected: \(rows[indexPath.section][indexPath.row])")
    }
}
