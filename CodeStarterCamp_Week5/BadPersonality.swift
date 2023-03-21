//
//  BadPersonality.swift
//  CodeStarterCamp_Week5
//
//  Created by Daehoon Lee on 2023/03/20.
//

import Foundation

protocol BadPersonality {
    var frequencyOfCursing: Level { get }
}

extension BadPersonality {
    func checkPersonality() -> Bool {
        switch frequencyOfCursing {
        case .A:
            return true
        case .B:
            return false
        case .C:
            return false
        }
    }
}
