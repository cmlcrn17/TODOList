//
//  AuthenticationService.swift
//  TODO List
//
//  Created by Ceren TAŞSIN on 3.05.2021.
//

import Foundation

import Firebase

class AuthenticationService: ObservableObject {
  
  @Published var user: User? // (1)
  
  func signIn() {
    registerStateListener() // (2)
    Auth.auth().signInAnonymously() // (3)
  }
  
  private func registerStateListener() {
    Auth.auth().addStateDidChangeListener { (auth, user) in // (4)
      print("Sign in state has changed.")
      self.user = user
      
      if let user = user {
        let anonymous = user.isAnonymous ? "anonymously " : ""
        print("User signed in \(anonymous)with user ID \(user.uid).")
      }
      else {
        print("User signed out.")
      }
    }
  }
  
}
