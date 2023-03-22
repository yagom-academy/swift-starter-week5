//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by suyeon park on 2023/03/21.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast() {
        passedApplicantsList = totalApplicantsList.filter {
            if let person = $0 as? Talent {
                return person.hasTalent
            } else {
                return false
            }
        }
    }
    
    func announcePassedApplicants() {
        let list = passedApplicantsList.filter {!($0 is BadPersonality)}
            .map{$0.name}
            .joined(separator: "\n")
        
        print("---합격자 명단---\n\(list)\n--------------\n축하합니다!!")
    }
}
