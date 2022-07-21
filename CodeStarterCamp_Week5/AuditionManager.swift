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
        for applicant in totalApplicantsList {
            if let talentedPersonWithBadPersonality = applicant as? TalentedPersonWithBadPersonality {
                if talentedPersonWithBadPersonality.isGoodPerson() {
                    passedApplicantsList.append(talentedPersonWithBadPersonality)
                }
            }
            if let talentedPerson = applicant as? TalentedPerson {
                if talentedPerson.isGoodPerson() {
                    passedApplicantsList.append(talentedPerson)
                }
            }
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        print(passedApplicantsList.map { $0.name }.joined(separator: "\n"))
        print("--------------")
        print("축하합니다!!")
    }
}
