//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by eve on 2023/03/21.
//

import Foundation

struct AuditionManager {
    let totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        guard totalApplicantsList.count > 0 else { return }
        
        for person in totalApplicantsList {
            if person is TalentedPersonWithBadPersonality { continue }
            
            if let applicant = person as? TalentedPerson {
                if applicant.isPassLevel() {
                    passedApplicantsList.append(person)
                }
            }
        }
    }
    
    func announcePassedApplicants() {
        guard passedApplicantsList.count > 0 else {
            print("합격자가 없습니다.")
            return
        }
        
        print("---합격자 명단---")
        for passer in passedApplicantsList {
            print(passer.name)
        }
        print("--------------")
        print("축하합니다!!\n")
    }
}
