//
//  Protocols.swift
//  CodeStarterCamp_Week5
//
//  Created by ChoiKwangWoo on 2023/06/12.
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
