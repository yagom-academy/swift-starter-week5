//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 비모 on 2023/03/21.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
}

extension AuditionManager {
    mutating func cast() {
        guard totalApplicantsList.count > 0 else {
            print("지원자가 없습니다.")
            return
        }
        
        passedApplicantsList = totalApplicantsList
            .filter { $0 is Talent }
            .filter { !($0 is BadPersonality) }
            .map { $0 as! TalentedPerson }
            .filter {
                $0.singing == Level.A ||
                $0.dancing == Level.A ||
                $0.acting == Level.A
            }
        
        announcePassedApplicants(of: passedApplicantsList)
    }
    
    private func announcePassedApplicants(of list: [Person]) {
        print("---합격자 명단---")
        
        for passedApplicant in list {
            print("\(passedApplicant.name)")
        }
        
        print("""
        --------------
        축하합니다!!
        """)
    }
}
