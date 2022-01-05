//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 조민호 on 2022/01/04.
//

import Foundation

final class AuditionManager {
    private(set) var totalApplicantsList: [Person]
    private var passedApplicantsList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    func cast() {
        judge()
        announcePassedApplicants()
    }
    
    private func judge() {
        self.totalApplicantsList.forEach { applicant in
            guard let talent = applicant as? TalentedPerson else {
                return
            }

            guard talent.singing == .A else {
                return
            }
            
            guard talent.dancing == .A else {
                return
            }
            
            guard talent.acting == .A else {
                return
            }
            
            self.passedApplicantsList.append(talent)
        }
    }
    
    private func announcePassedApplicants() {
        guard self.passedApplicantsList.isEmpty == false else {
            print("합격자가 없습니다.")
            return
        }
        
        print("---합격자 명단---")
        self.passedApplicantsList.forEach { applicant in
            print(applicant.name)
        }
        print("--------------")
        print("축하합니다!!")
    }
}
