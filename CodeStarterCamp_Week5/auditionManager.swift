//
//  auditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by karen on 2023/03/20.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person] = []
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        var successfulCandidate: [Person] = []
        
        for applicant in self.totalApplicantsList {
            guard let talentedPerson = applicant as? Talent else { continue }
            if talentedPerson.checkedSuccessful() {
                guard talentedPerson is BadPersonality else { 
                    successfulCandidate.append(applicant)
                    continue
                }
            }
        }
        self.passedApplicantsList = successfulCandidate
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for person in passedApplicantsList {
            print("\(person.name)")
        }
        print("""
                --------------
                축하합니다!!
                """)
    }
}
