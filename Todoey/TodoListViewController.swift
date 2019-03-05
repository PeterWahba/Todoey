//
//  ViewController.swift
//  Todoey
//
//  Created by Peter Mounir on 3/5/19.
//  Copyright © 2019 Peter Mounir. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike", "Call Hatem", "Email Eslam"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//MARK - Tableview Datasource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
    
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
//    MARK tableview delegate methouds
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print( itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
    }
}

