//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Ali Mert Kaya on 20.09.2023.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
