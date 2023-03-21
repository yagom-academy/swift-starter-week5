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
            if let talentedPersonWithBadPersonality = talentedPerson as? BadPersonality,
               talentedPersonWithBadPersonality.checkedBadPersonalityl() {
                successfulCandidate.append(applicant)
            } else if checkedSuccessful(talentPerson: talentedPerson) {
                successfulCandidate.append(applicant)
            }
        }
        self.passedApplicantsList = successfulCandidate
    }
    
    func checkedSuccessful(talentPerson: Talent) -> Bool {
        return talentPerson.singing == .A || talentPerson.dancing == .A || talentPerson.acting == .A
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for applicant in passedApplicantsList {
            print("\(applicant.name)")
        }
        print("""
                --------------
                축하합니다!!
                """)
    }
}
