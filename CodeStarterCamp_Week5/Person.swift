//
//  Person.swift
//  CodeStarterCamp_Week5
//
//  Created by 1 on 2023/03/21.
//

import Foundation

protocol Talent {
    var singing: Level { get set }
    var dancing: Level { get set }
    var acting: Level { get set }
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get set }
}

class Person {
    var name: String
    var height: Int
 
    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }
}
