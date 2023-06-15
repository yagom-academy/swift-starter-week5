//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 이지원 on 2023/06/15.
//

import Foundation

struct AuditionManager {
    var totalApplicantList: [Person]
    private(set) var passedApplicantsList = [Person]()
    
    mutating func cast() {
        totalApplicantList.forEach { applicant in
            if let applicant = applicant as? TalentedPerson {
                if applicant.acting == .A || applicant.dancing == .A || applicant.singing == .A {
                    passedApplicantsList.append(applicant)
                }
            }
            
            if let applicant = applicant as? TalentedPersonWithBadPersonality, applicant.frequancyOfCursing != .C {
                if applicant.acting == .A || applicant.dancing == .A || applicant.singing == .A {
                    passedApplicantsList.append(applicant)
                }
            }
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        passedApplicantsList.forEach {
            print($0.name)
        }
        print("--------------")
        print("축하합니다!")
    }
}
