//
//  User.swift
//  TODO List
//
//  Created by Ceren TAŞSIN on 1.05.2021.
//

import Foundation


struct User: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var gsm: String
}
