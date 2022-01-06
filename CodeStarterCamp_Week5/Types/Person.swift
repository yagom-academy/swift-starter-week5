//
//  Person.swift
//  CodeStarterCamp_Week5
//
//  Created by Jungmo Yu on 2022/01/04.
//

import Foundation

class Person {
    var name: String
    var height: Int
    
    init() {
        self.name = "JM"
        self.height = 190
    }
    
    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }
}
