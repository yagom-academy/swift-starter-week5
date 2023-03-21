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
            guard let talentApplicant = applicant as? Talent,
                    (talentApplicant as? BadPersonality) == nil  else {
                continue
            }
            if talentApplicant.isLevelA(){
                passedApplicantsList.append(applicant)
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
