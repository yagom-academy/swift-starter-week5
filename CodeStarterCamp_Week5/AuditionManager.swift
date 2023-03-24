//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by Whales on 2023/03/24.
//

import Foundation

struct AuditionManager {
    private (set) var totalApplicantsList: [Person] = [yagom, noroo, summer, coda, odong]
    private var passedApplicantsList: [Person] = []
    
    mutating func cast(applicants: [Person]) {
        for applicant in applicants {
            if let talentedApplicant = applicant as? Talent {
                if talentedApplicant is TalentedPersonWithBadPersonality {
                    return
                }
                if talentedApplicant.singing == .A || talentedApplicant.dancing == .A ||  talentedApplicant.acting == .A {
                    passedListUp(talentedApplicant)
                }
            }
        }
    }
    
    mutating func passedListUp(_ applicant: Talent) {
        if let passedApplicant = applicant as? Person {
            passedApplicantsList.append(passedApplicant)
            print(passedApplicantsList)
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for passedApplicants in passedApplicantsList {
            print(passedApplicants.name)
        }
        print("--------------\n축하합니다!!")
    }
}
