//
//  auditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by MARY on 2023/03/20.
//

import Foundation

class AuditionManager {
    private(set) var totalApplicantsList: [Person] = []
    private var passedApplicantsList: [Person] = []
    
    func updateApplicantsList(_ applicant: Person) {
        totalApplicantsList.append(applicant)
    }
    
    func cast() {
        guard !totalApplicantsList.isEmpty else {
            print("지원자가 없습니다.")
            return
        }

        for applicant in totalApplicantsList {
            guard hasGoodPersonality(applicant),
                  hasOutstandingTalent(applicant) else { continue }

            passedApplicantsList.append(applicant)
        }
    }
                
    func announcePassedApplicants() {
        guard !passedApplicantsList.isEmpty else {
            print("합격자가 없습니다.")
            return
        }
        
        print("---합격자 명단---")
        print(passedApplicantsList.map{ $0.name }.joined(separator: "\n"))
        print("--------------\n축하합니다!!")
    }
    
    private func hasGoodPersonality(_ person: Person) -> Bool {
        guard let person = person as? BadPersonality else { return true }

        return person.frequancyOfCursing != Level.A
    }
    
    private func hasOutstandingTalent(_ person: Person) -> Bool {
        guard let person = person as? Talent else { return false }

        return person.singing == Level.A || person.dancing == Level.A || person.acting == Level.A
    }
}
