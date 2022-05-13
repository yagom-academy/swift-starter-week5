//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 김인호 on 2022/05/12.
//

import Foundation

struct AuditionManager {
    private(set) var totalApplicantsList: [Person]
    private var passedApplicantsList = [Person]()
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    func isBadPersonality(_ person: Person) -> Bool {
        return (person is TalentedPersonWithBadPersonality ? true : false)
    }
    
    func isTalented(_ applicant: Talent) -> Bool {
        if applicant.actingTalent() == .A ||
            applicant.dancingTalent() == .A ||
            applicant.singingTalent() == .A {
            return true
        } else {
            return false
        }
    }
    
    mutating func cast() {
        for applicant in totalApplicantsList {
            if !isBadPersonality(applicant) {
                if let talentedPersonWithGoodPersonality = applicant as? Talent {
                    if isTalented(talentedPersonWithGoodPersonality) {
                        passedApplicantsList.append(applicant)
                    }
                }
            }
        }
        print("캐스팅이 완료되었습니다.")
    }
    
    func announcePassedApplicants() {
        let passList = passedApplicantsList.map { $0.selfIntroduce() }.joined(separator: "\n")
        print("""
            ---합격자 명단---
            \(passList)
            --------------
            축하합니다!!
            """)
    }
}
