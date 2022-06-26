//
//  TaskListViewController.swift
//  Priority_List_RxSwift
//
//  Created by JunHwan Kim on 2022/06/25.
//

import Foundation
import UIKit

class TaskListViewController : UIViewController{
    
    @IBOutlet weak var prioritySegmentedControl : UISegmentedControl!
    @IBOutlet weak var tableView : UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}

extension TaskListViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskTableViewCell", for: indexPath)
        return cell
    }
    
    
}
