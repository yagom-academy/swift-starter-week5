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
            if let talentedApplicant = applicant as? Talent { // 재능있는 사람 선발
                if talentedApplicant is TalentedPersonWithBadPersonality { // 인성거름
                    return // 그냥 넘어감
                }
                if talentedApplicant.singing == .A || talentedApplicant.dancing == .A ||  talentedApplicant.acting == .A {
                    passedListUp(talentedApplicant) // A 면 합격
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
