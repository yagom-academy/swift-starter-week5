//
//  Talent.swift
//  CodeStarterCamp_Week5
//
//  Created by 황지웅 on 2022/05/11.
//

import Foundation

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
    
    func isPass() -> Bool
}
