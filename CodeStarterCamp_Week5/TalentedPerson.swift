//
//  TalentedPerson.swift
//  CodeStarterCamp_Week5
//
//  Created by 조민호 on 2022/01/04.
//

import Foundation

enum Level {
    case A
    case B
    case C
}

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get }
}
