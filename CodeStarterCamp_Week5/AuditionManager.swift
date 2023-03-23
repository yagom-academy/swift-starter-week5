//
//  AuditionManager.swift
//  Week5 Step1
//
//  Created by JeonSangHyeok on 2023/03/22.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    func checkTalent(_ applicants: Talent) -> Bool {
        return applicants.singing == .A || applicants.acting == .A || applicants.dancing == .A
    }
    
    func checkPersonailty(_ applicants: Talent) -> Bool {
        return applicants is BadPersonality
    }
    
    mutating func cast() {
        for applicants in totalApplicantsList {
            guard let checkApplicants = applicants as? Talent else {
                continue
            }
            
            if checkTalent(checkApplicants) {
                guard checkPersonailty(checkApplicants) else {
                    passedApplicantsList.append(applicants)
                    continue
                }
            }
        }
    }
    
    func anouncePassedApplicants() {
        print("---합격자 명단---")
        for passer in passedApplicantsList {
            print(passer.name)
        }
        print("--------------")
        print("축하합니다!!")
    }
}
