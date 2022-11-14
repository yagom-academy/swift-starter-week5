//
//  Talent.swift
//  CodeStarterCamp_Week5
//
//  Created by ByungHoon Ann on 2022/11/14.
//

import Foundation

protocol Talent {
    var singing: Level { get set }
    var dancing: Level { get set }
    var acting: Level { get set }
    func checkHighScoreLevel() -> Bool
}

extension Talent {
    func checkHighScoreLevel() -> Bool {
        return !([singing, dancing, acting]
            .filter { $0 == .A }
            .isEmpty)
    }
}
