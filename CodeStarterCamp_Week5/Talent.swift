//
//  Talent.swift
//  CodeStarterCamp_Week5
//
//  Created by eve on 2023/03/21.
//

import Foundation

protocol Talent {
    var singing: Level { get set }
    var dancing: Level { get set }
    var acting: Level { get set }
}

extension Talent {
    func isPassLevel() -> Bool {
        if self.singing == .A || self.dancing == .A || self.acting == .A {
            return true
        }
        return false
    }
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get set }
}
