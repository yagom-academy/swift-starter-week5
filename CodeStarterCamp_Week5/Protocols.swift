//
//  step1.swift
//  CodeStarterCamp_Week5
//
//  Created by smfc on 18/7/2022.
//

import Foundation

protocol Talent {
    var singing: Level { get set }
    var dancing: Level { get set }
    var acting: Level { get set }
    
    func sing()
    func dance()
    func act()
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get set }
    
    func curse()
}
