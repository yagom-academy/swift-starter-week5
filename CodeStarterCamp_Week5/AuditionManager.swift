//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by Hyungmin Lee on 2023/03/20.
//

import Foundation

struct AuditionManager {
    private(set) var totalApplicantsList: [Person]
    private var passedApplicantsList = [Person]()
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast() {
        for applicant in totalApplicantsList{
            if let talentedApplicant = applicant as? Talent, talentedApplicant.isLevelA() == true {
                if talentedApplicant is TalentedPersonWithBadPersonality {
                   continue
                }
                
                passedApplicantsList.append(applicant)
            }
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for applicant in passedApplicantsList {
            print(applicant.name)
        }
        print("--------------")
    }
}
