//
//  AddTaskViewController.swift
//  Priority_List_RxSwift
//
//  Created by JunHwan Kim on 2022/06/26.
//

import Foundation
import UIKit

class AddTaskViewController : UIViewController{
    
    @IBOutlet weak var prioritySegmentedControl : UISegmentedControl!
    @IBOutlet weak var taskTitleTextField : UITextField!
    
    @IBAction func save(){
        guard let priority = Priority(rawValue: self.prioritySegmentedControl.selectedSegmentIndex),
              let title = self.taskTitleTextField.text else{
                  return
              }
        let task = Task(title: title, priority: priority)
    }
    
}
