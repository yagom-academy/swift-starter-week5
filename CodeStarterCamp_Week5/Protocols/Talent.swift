//
//  Talent.swift
//  CodeStarterCamp_Week5
//
//  Created by Jungmo Yu on 2022/01/04.
//

import Foundation

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
    
    init(singing: Level, dancing: Level, acting: Level)
}
