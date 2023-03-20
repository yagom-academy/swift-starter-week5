//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by Hyungmin Lee on 2023/03/20.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsLsit = [Person]()
    
    mutating func cast() {
        for applicant in totalApplicantsList{
            if let applicant = applicant as? Talent, applicant.isLevelA() == true {
                if applicant is TalentedPersonWithBadPersonality {
                   continue
                }
                
                passedApplicantsLsit.append(applicant as! Person)
            }
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for applicant in passedApplicantsLsit {
            print(applicant.name)
        }
        print("--------------")
    }
}
