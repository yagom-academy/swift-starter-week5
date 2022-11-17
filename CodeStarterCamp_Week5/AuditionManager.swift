//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by Hyejeong Jeong on 2022/11/15.
//

import Foundation

struct AuditionManager {
    private(set) var totalApplicantsList: [Person]
    private var passedApplicantsList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast() {
        for applicant in totalApplicantsList where applicant is BadPersonality == false {
            guard let talentedPerson = applicant as? Talent else {
                continue
            }

            if talentedPerson.singing == .A || talentedPerson.acting == .A || talentedPerson.dancing == .A {
                passedApplicantsList.append(applicant)
            }
        }
    }
    
    func announcePassedApplicants() {
        if passedApplicantsList.isEmpty == false {
            print("---합격자 명단---")
            for applicant in passedApplicantsList {
                print(applicant.name)
            }
            print("--------------\n축하합니다!!")
        } else {
            print("이번에는 합격자가 없습니다.")
        }
    }
}
