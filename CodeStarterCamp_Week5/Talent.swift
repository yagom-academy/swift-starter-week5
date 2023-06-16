//
//  Talent.swift
//  CodeStarterCamp_Week5
//
//  Created by 김예림 on 2023/06/16.
//

import Foundation

protocol Talent {
    var singing: Level { get set }
    var dancing: Level { get set }
    var acting: Level { get set }
    
    func hasAnyALevelOfTalent() -> Bool
}

