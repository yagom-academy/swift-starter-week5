//
//  Talen.swift
//  CodeStarterCamp_Week5
//
//  Created by Hyungmin Lee on 2023/03/20.
//
protocol Talent {
    var singing: Level { get set }
    var dancing: Level { get set }
    var acting: Level { get set }
}

extension Talent {
    func isLevelA() -> Bool {
        if self.singing == .A || self.dancing == .A || self.acting == .A {
            return true
        }
        
        return false
    }
}
