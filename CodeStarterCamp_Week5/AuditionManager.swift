//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 황지웅 on 2022/05/11.
//

import Foundation

struct AuditionManager {
    let totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        passedApplicantsList += totalApplicantsList.compactMap { applicant in
            if let applicantWithPersonality = applicant as? TalentedPersonWithBadPersonality,
                applicantWithPersonality.isPass() {
                return applicant
            }
            
            guard let applicantWithTalent = applicant as? TalentedPerson,
                    applicantWithTalent.isPass() else {
                return nil
            }
            return applicant
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for applicant in passedApplicantsList {
            print("\(applicant.name)")
        }
        print("""
        --------------
        축하합니다!!
        """)
    }
}
