//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Ali Mert Kaya on 20.09.2023.
//

import Foundation

// ViewModel for list of items view
// Primary Tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
