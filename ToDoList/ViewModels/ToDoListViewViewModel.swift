//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Ali Mert Kaya on 20.09.2023.
//

import Foundation
import FirebaseFirestore

// ViewModel for list of items view
// Primary Tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
