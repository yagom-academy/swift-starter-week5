//
//  trainees.swift
//  CodeStarterCamp_Week5
//
//  Created by MARY on 2023/03/20.
//

import Foundation

struct Entertainment {
    let name: String
    let auditionManager: AuditionManager
    
    func cast() {
        auditionManager.cast()
        auditionManager.announcePassedApplicants()
    }
    
    init(name: String, auditionManager: AuditionManager) {
        self.name = name
        self.auditionManager = auditionManager
    }
}
