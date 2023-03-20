//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by minsong kim on 2023/03/20.
//

import Foundation

class AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    func cast() {
        for applicant in totalApplicantsList {
            if let talentApplicant = applicant as? Talent {
                if talentApplicant.singing == .A || talentApplicant.dancing == .A ||
                    talentApplicant.acting == .A {
                    passedApplicantsList.append(applicant)
                }
            }
            if applicant is BadPersonality {
                passedApplicantsList.removeLast()
            }
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for applicant in passedApplicantsList {
            print(applicant.name)
        }
        print(
            """
            --------------
            축하합니다!!
            """)
    }
}
