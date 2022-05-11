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
            if let applicantWithPersonality = (applicant as? TalentedPersonWithBadPersonality),
               applicantWithPersonality.isPass() {
                return applicant
            }
            
            guard let applicantWitTalent = (applicant as? TalentedPerson), applicantWitTalent.isPass() else {
                return nil
            }
            return applicant
        }
    }
    
    func printPassedApplicantsList() {
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
