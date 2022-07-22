//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 이준영 on 2022/07/22.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        if totalApplicantsList.count > 0 {
            for member in totalApplicantsList {
                guard let applicant = member as? Talent else { continue }
                guard applicant.singing == .A || applicant.dancing == .A || applicant.acting == .A else { continue }
                guard let _ = member as? BadPersonality else {
                    passedApplicantsList.append(member)
                    continue
                }
            }
        } else {
            print("신청자가 없습니다.")
        }
    }
    
    func announcePassedApplicants() {
        if passedApplicantsList.count > 0 {
            print("\n---합격자 명단---")
            for passer in passedApplicantsList {
                print(passer.name)
            }
            print("--------------\n축하합니다!!")
        } else {
            print("합격자가 없습니다.")
        }
    }
}

