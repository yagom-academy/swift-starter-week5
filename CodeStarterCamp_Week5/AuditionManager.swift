//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 이정민 on 2022/05/10.
//

import Foundation

struct AuditionManager {
    let totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast(applicant: Person) {
        if let talentedApplicant = applicant as? Talent {
            if let talentedApplicantWithBadPersonality = talentedApplicant as? BadPersonality {
                if talentedApplicantWithBadPersonality.frequancyOfCursing.rawValue < Level.A.rawValue {
                    return
                }
            }
            if talentedApplicant.singing.rawValue == Level.A.rawValue || talentedApplicant.dancing.rawValue == Level.A.rawValue || talentedApplicant.acting.rawValue == Level.A.rawValue {
                passedApplicantsList.append(applicant)
            }
        }
    }
    
    func announcePassedApplicants() {
        
    }
}
