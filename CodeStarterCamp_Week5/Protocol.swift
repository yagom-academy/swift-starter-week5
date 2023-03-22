//
//  Protocol.swift
//  CodeStarterCamp_Week5
//
//  Created by Min Hyun on 2023/03/22.
//

import Foundation

protocol Talent {
    var singing: Level { get set }
    var dancing: Level { get set }
    var acting: Level { get set }
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get set }
}
