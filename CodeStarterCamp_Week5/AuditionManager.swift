//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by Whales on 2023/03/24.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
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
        }
    }
    
    func announcePassedApplicants(passedList: [Person]) {
        print("---합격자 명단---")
        for passedApplicants in passedList {
            print(passedApplicants.name)
        }
        print("--------------\n축하합니다!!")
    }
}
