//
//  Task.swift
//  TODO List
//
//  Created by Ceren TAŞSIN on 1.11.2020.
//

import Foundation

struct Task: Identifiable{
    var id: String = UUID().uuidString
    var title: String
    var completed: Bool
}

#if DEBUG
let debugData = [
    Task(title: "Start making a presentation", completed: true),
    Task(title: "Buy a chocolate for Charlotte", completed: false),
    Task(title: "Buy a milk", completed: false),
    Task(title: "Don't forget to pick up Mickael from school", completed: false)
]
#endif
