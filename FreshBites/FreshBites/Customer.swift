//
//  Customer.swift
//  FreshBites
//
//  Created by Andrew Reyna on 5/13/26.
//

import Foundation

class Customer: Identifiable {

    let id = UUID()

    let name: String
    let email: String
    let visits: Int

    init(name: String, email: String, visits: Int) {
        self.name = name
        self.email = email
        self.visits = visits
    }
}
