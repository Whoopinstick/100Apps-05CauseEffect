//
//  Person.swift
//  05 - CauseEffect
//
//  Created by Kevin Paul on 8/2/20.
//  Copyright © 2020 Whoopinstick. All rights reserved.
//

import Foundation

struct Person: Identifiable, Codable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var age: Int
    var street: String
    var street2: String?
    var city: String
    var state: String
    var zip: Int
}
