//
//  ContentView.swift
//  TODO List
//
//  Created by Ceren TAŞSIN on 1.11.2020.
//

import SwiftUI
import Firebase

struct TaskListView: View {
    
    @ObservedObject private var viewModel = userViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                VStack(alignment: .leading) {
                    Text(user.name).font(.title)
                    Text(user.gsm).font(.title)
                }
            }.navigationBarTitle("Users")
            .onAppear() {
                self.viewModel.fetchData()
            }
        }
    }
}




