//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by redmango1446 on 2023/03/24.
//

import Foundation

struct AuditionManager {
    private(set) var totalApplicantsList: [Person] = [yagom, noroo, summer, coda, odong, badman]
    private var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        let passedWaitingList: [Person] = totalApplicantsList.filter({
            if let pass = $0 as? Talent,
               pass.acting == .A || pass.dancing == .A || pass.singing == .A {
                return true
            } else {
                return false
            }
        })
        
        passedApplicantsList = passedWaitingList.filter({
            $0 is BadPersonality ? false : true
        })
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for passedApplicants in passedApplicantsList {
            print(passedApplicants.name)
        }
        print("""
                --------------
                축하합니다!!!
                """)
    }
}
