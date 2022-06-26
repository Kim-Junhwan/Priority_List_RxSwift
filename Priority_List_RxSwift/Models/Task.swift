//
//  Task.swift
//  Priority_List_RxSwift
//
//  Created by JunHwan Kim on 2022/06/26.
//

import Foundation

enum Priority : Int{
    case high
    case medium
    case low
}

struct Task{
    let title : String
    let priority : Priority
}
