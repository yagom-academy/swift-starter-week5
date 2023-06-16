//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 김예림 on 2023/06/16.
//

import Foundation

struct AuditionManager {
    private(set) var totalApplicantsList: [Person]
    private var passedApplicantsList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast() {
        for applicant in totalApplicantsList {
            if let talentedPerson = applicant as? TalentedPerson {
                if talentedPerson.hasAnyALevelOfTalent() {
                    passedApplicantsList.append(applicant)
                }
            } else if let talentedPersonWithBadPersonality = applicant
                        as? TalentedPersonWithBadPersonality{
                if talentedPersonWithBadPersonality.hasAnyALevelOfTalent() {
                    passedApplicantsList.append(talentedPersonWithBadPersonality)
                }
            }
        }
    }
    
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for applicant in passedApplicantsList {
            print(applicant.name)
        }
        print("--------------")
        print("축하합니다!!")
    }
}
