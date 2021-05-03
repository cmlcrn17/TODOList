//
//  userViewModel.swift
//  TODO List
//
//  Created by Ceren TAŞSIN on 1.05.2021.
//

import Foundation
import FirebaseFirestore

class userViewModel: ObservableObject {
    
    @Published var users = [User]()
    
    private var db = Firestore.firestore()
        
    func fetchData() {
        db.collection("Users").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.users = documents.map { (queryDocumentSnapshot) -> User in
                let data = queryDocumentSnapshot.data()
                let name = data["Name"] as? String ?? ""
                let gsm = data["GSM"] as? String ?? ""
                return User(name: name, gsm: gsm)
            }
        }
    }

}
