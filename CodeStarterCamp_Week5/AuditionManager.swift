//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by smfc on 18/7/2022.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList = [Person]()
    
    mutating func cast() {
        for applicant in totalApplicantsList {
            if let talentWithBadPersonality = applicant as? BadPersonality {
                if talentWithBadPersonality.frequancyOfCursing == .A {
                    passedApplicantsList.append(applicant)
                }
            }
            else if let talent = applicant as? Talent {
                if talent.acting == .A || talent.dancing == .A || talent.singing == .A {
                    passedApplicantsList.append(applicant)
                }
            }
        }
    }
    
    mutating func announcePassedApplicants() {
        self.cast()
        print("---합격자 명단---")
        for passedApplicant in passedApplicantsList {
            print(passedApplicant.name)
        }
        print("--------------")
        print("축하합니다!!")
    }
}
