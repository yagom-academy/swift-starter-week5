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
            if let applicant = applicant as? TalentedPerson {
                if applicant.singing == .A {
                    passedApplicantsList.append(applicant)
                } else if applicant.dancing == .A {
                    passedApplicantsList.append(applicant)
                } else if applicant.acting == .A {
                    passedApplicantsList.append(applicant)
                }
            }
        }
    }
    
    func announcePassedApplicants(passedList: [Person]) {
        print("---합격자 명단---")
        for successApplicants in passedList {
            print(successApplicants.name)
        }
        print("--------------\n축하합니다!!")
    }
}
