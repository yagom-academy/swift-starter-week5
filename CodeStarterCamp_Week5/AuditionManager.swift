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
        for person in totalApplicantsList {
            
            var hasTalent = false
            
            if person is TalentedPerson {
                hasTalent = (person as! TalentedPerson).hasTalent()
            } else if person is TalentedPersonWithBadPersonality {
                hasTalent = (person as! TalentedPersonWithBadPersonality).hasTalent()
            }
     
            if hasTalent {
                passedApplicantsList.append(person)
            }
        }
    }
    
    func announcePassedApplicants() {
        let list = passedApplicantsList.filter{ $0 is TalentedPerson }
            .map{$0.name}
            .joined(separator: "\n")
        
        print("---합격자 명단---\n\(list)\n--------------\n축하합니다!!")
    }
}
