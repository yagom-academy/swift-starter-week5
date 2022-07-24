//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by junho lee on 2022/07/21.
//

import Foundation

struct AuditionManager {
    private let totalApplicantsList: [Person]
    private var passedApplicantsList: [Person] = []
    
    init(applicansts: [Person]) {
        totalApplicantsList = applicansts
    }
    
    
    mutating func cast() {
        passedApplicantsList = totalApplicantsList.compactMap() {
            if isPassedTalentedPersonWithBadPersonality($0) ||
                isPssedTalentedPerson($0) {
                return $0
            } else {
                return nil
            }
        }
    }
    
    private func isPassedTalentedPersonWithBadPersonality(_ person: Person) -> Bool {
        guard let talentedPersonWithBadPersonality =
                person as? TalentedPersonWithBadPersonality,
              talentedPersonWithBadPersonality.isPassedPerson() else {
            return false
        }
        return true
    }
    
    private func isPssedTalentedPerson(_ person: Person) -> Bool {
        guard let talentedPerson = person as? TalentedPerson,
              talentedPerson.isPassedPerson() else {
            return false
        }
        return true
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        print(passedApplicantsList.map { $0.name }.joined(separator: "\n"))
        print("--------------")
        print("축하합니다!!")
    }
}
