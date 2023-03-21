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
            var hasTalent = false
            
            if $0 is TalentedPerson {
                hasTalent = ($0 as! TalentedPerson).hasTalent()
            } else if $0 is TalentedPersonWithBadPersonality {
                hasTalent = ($0 as! TalentedPersonWithBadPersonality).hasTalent()
            }
            
            return hasTalent
        }
    }
    
    func announcePassedApplicants() {
        let list = passedApplicantsList.filter{ $0 is TalentedPerson }
            .map{$0.name}
            .joined(separator: "\n")
        
        print("---합격자 명단---\n\(list)\n--------------\n축하합니다!!")
    }
}
