//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 김인호 on 2022/05/12.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList = [Person]()
    
    mutating func cast() {
        for applicant in totalApplicantsList {
            if !(applicant is BadPersonality) {
                if let talentedPersonWithGoodPersonality = applicant as? Talent {
                    if talentedPersonWithGoodPersonality.acting == .A ||
                    talentedPersonWithGoodPersonality.dancing == .A ||
                    talentedPersonWithGoodPersonality.singing == .A {
                        passedApplicantsList.append(applicant)
                    }
                }
            }
        }
        print("캐스팅이 완료되었습니다.")
    }
    
    func announcePassedApplicants() {
        let passList = passedApplicantsList.map { $0.name }.joined(separator: "\n")
        print("""
            ---합격자 명단---
            \(passList)
            --------------
            축하합니다!!
            """)
    }
}
