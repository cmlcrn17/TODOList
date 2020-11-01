//
//  ContentView.swift
//  TODO List
//
//  Created by Ceren TAŞSIN on 1.11.2020.
//

import SwiftUI

struct TaskListView: View {
    
    let tasks = debugData
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                
                List(tasks) { task in
                    ListItem(task: task)
                }
                
                Button(action: {}) {
                    HStack{
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Add New Task")
                    }
                }.padding()
            }.navigationTitle("Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TaskListView()
                .previewDevice("iPhone 11")
        }
    }
}

struct ListItem: View {
    let task : Task
    
    var body: some View {
        HStack{
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
            Text(task.title)
                .padding()
        }
       
    }
}
