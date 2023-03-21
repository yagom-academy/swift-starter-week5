//
//  Talent.swift
//  CodeStarterCamp_Week5
//
//  Created by minsong kim on 2023/03/20.
//

import Foundation

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
    var visual: Level { get }
}

extension Talent {
    func isLevelA() -> Bool {
        return singing == .A || dancing == .A || acting == .A || visual == .A
    }
}
