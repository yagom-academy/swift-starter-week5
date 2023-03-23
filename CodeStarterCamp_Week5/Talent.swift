//
//  Talent.swift
//  CodeStarterCamp_Week5
//
//  Created by 김형철 on 2023/03/22.
//

import Foundation

protocol Talent {
    var singing: Level { get set }
    var dancing: Level { get set }
    var acting: Level { get set }
}


extension Talent {
    func isApplicantHavingA() -> Bool {
        guard self.singing == .A ||
              self.dancing == .A ||
              self.acting == .A else { return false }
        
        return true
    }
}
