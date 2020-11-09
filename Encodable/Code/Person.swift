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
}
