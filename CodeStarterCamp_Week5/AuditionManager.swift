//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 김형철 on 2023/03/22.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    

    mutating func cast() {
        for applicant in totalApplicantsList {
            guard let havingTalentApplicant = applicant as? Talent,
                  havingTalentApplicant.isApplicantHavingA(),
                  havingTalentApplicant is BadPersonality == false else { continue }
            
            self.passedApplicantsList.append(applicant)

//            guard applicant is Talent,
//                  applicant is BadPersonality == false else { continue }
//
//            checkApplicantLevel(applicant)
        }
    }
    
    
//    private mutating func checkApplicantLevel(_ applicant: Person)  {
//        guard let havingTalentApplicant = applicant as? Talent else { return }
//
//        guard havingTalentApplicant.acting == .A ||
//              havingTalentApplicant.dancing == .A ||
//              havingTalentApplicant.singing == .A else { return }
//
//        registPassedApplicant(applicant)
//    }
//
//
//    private mutating func registPassedApplicant(_ applicant: Person) {
//        self.passedApplicantsList.append(applicant)
//    }
//

    func announcedPassedApplicants() {
        if passedApplicantsList.isEmpty == false {
            print("---합격자 명단---")
            for passedApplicant in passedApplicantsList {
                print("\(passedApplicant.name)")
            }
            print("""
            --------------
            축하합니다!!
            """)
        } else {
            print("아쉽게도 합격자가 없습니다.")
        }
    }
}
