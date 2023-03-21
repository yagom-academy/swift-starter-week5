//
//  Talent.swift
//  CodeStarterCamp_Week5
//
//  Created by suyeon park on 2023/03/21.
//

import Foundation

protocol Talent {
    var singing: Level? { get set }
    var dancing: Level? { get set }
    var acting: Level? { get set }
    
    func hasTalent() -> Bool
}
