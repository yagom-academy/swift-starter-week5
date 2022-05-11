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
    
    mutating func cast() {
        for applicant in totalApplicantsList where applicant is Talent {
            if let talentedApplicantWithBadPersonality = applicant as? BadPersonality {
                if isBadPerson(talentedApplicantWithBadPersonality) {
                    continue
                }
            }
            
            if let talentedApplicant = applicant as? Talent {
                if isPassLevelTest(talentedApplicant) {
                    passedApplicantsList.append(applicant)
                }
            }
        }
    }
    
    private func isBadPerson(_ talentedApplicantWithBadPersonality: BadPersonality) -> Bool {
        if talentedApplicantWithBadPersonality.frequancyOfCursing.rawValue < Level.A.rawValue {
            return true
        } else {
            return false
        }
    }
    
    private func isPassLevelTest(_ talentedApplicant: Talent) -> Bool {
        if talentedApplicant.singing.rawValue == Level.A.rawValue || talentedApplicant.dancing.rawValue == Level.A.rawValue || talentedApplicant.acting.rawValue == Level.A.rawValue {
            return true
        } else {
            return false
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        passedApplicantsList.forEach { passedPerson in
            print(passedPerson.name)
        }
        print("""
              --------------
              축하합니다!!
              """)
    }
}
