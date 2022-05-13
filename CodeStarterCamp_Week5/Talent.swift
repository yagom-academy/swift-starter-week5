//
//  Talent.swift
//  CodeStarterCamp_Week5
//
//  Created by 김인호 on 2022/05/12.
//

import Foundation

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
    
    func singingTalent() -> Level
    func dancingTalent() -> Level
    func actingTalent() -> Level
}
