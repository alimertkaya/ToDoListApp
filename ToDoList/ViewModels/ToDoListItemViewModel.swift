//
//  ToDoListItemViewModel.swift
//  ToDoList
//
//  Created by Ali Mert Kaya on 20.09.2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

// ViewModel for single to do list item view (each row in items list)
class ToDoListItemViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
