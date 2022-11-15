//
//  protocols.swift
//  CodeStarterCamp_Week5
//
//  Created by Hyejeong Jeong on 2022/11/15.
//

import Foundation

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
}


protocol BadPersonality {
    var frequancyOfCursing: Level { get }
}
