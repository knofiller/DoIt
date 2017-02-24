//
//  ViewController.swift
//  DoIt
//
//  Created by Kevin Nguyen on 2/23/17.
//  Copyright © 2017 KevinNguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tasks : [Task] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tasks = makeTasks()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.importance {
            cell.textLabel?.text = "❗️\(task.name)"
        } else {
            
            cell.textLabel?.text = task.name
        }
        return cell
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "walk the dog"
        task1.importance = false
        
        let task2 = Task()
        task2.name = "learn code everyday"
        task2.importance = true
        
        let task3 = Task()
        task3.name = "play with kids"
        task3.importance = true
        
        return [task1, task2, task3]
    }
}

