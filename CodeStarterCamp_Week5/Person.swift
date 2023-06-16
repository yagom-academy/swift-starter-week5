//
//  Person.swift
//  CodeStarterCamp_Week5
//
//  Created by 김예림 on 2023/06/16.
//

import Foundation

class Person {
    private(set) var name: String
    private(set) var height: Float
    
    init(name: String, height: Float) {
        self.name = name
        self.height = height
    }
}
