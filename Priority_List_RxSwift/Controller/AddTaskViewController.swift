//
//  AddTaskViewController.swift
//  Priority_List_RxSwift
//
//  Created by JunHwan Kim on 2022/06/26.
//

import Foundation
import UIKit
import RxSwift

class AddTaskViewController : UIViewController{
    
    private let taskSubject = PublishSubject<Task>()
    
    var taskSubjectObservable : Observable<Task>{
        return taskSubject.asObserver()
    }
    
    @IBOutlet weak var prioritySegmentedControl : UISegmentedControl!
    @IBOutlet weak var taskTitleTextField : UITextField!
    
    @IBAction func save(){
        guard let priority = Priority(rawValue: self.prioritySegmentedControl.selectedSegmentIndex),
              let title = self.taskTitleTextField.text else{
                  return
              }
        let task = Task(title: title, priority: priority)
        taskSubject.onNext(task)
        self.dismiss(animated: true, completion: nil)
    }
    
}
