//
//  Person.swift
//  Encodable
//
//  Created by אורי האופטמן on 09/11/2020.
//

import Foundation

struct Person: Encodable, Decodable {
    var firstName: String
    var lastName: String
    var birthday: Date
//    var favorite: Bool = false
    
    // Try to comment these lines, save, uncomment these lines, and load. I want a fix to that error.
    
    init() {
        self.firstName = "Tim"
        self.lastName = "Cook"
        self.birthday = Date()
//        self.favorite = false
    }
}
