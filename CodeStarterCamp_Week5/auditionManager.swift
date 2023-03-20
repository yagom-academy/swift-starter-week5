//
//  auditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by MARY on 2023/03/20.
//

import Foundation

struct AuditionManager {
    let totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        guard !totalApplicantsList.isEmpty else { print("지원자가 없습니다."); return }
        // 하나라도 A등급 있는애들만 걸러
        // frequancyOfCursing == 'A' 걸러
        print(totalApplicantsList)
        passedApplicantsList = totalApplicantsList
    }
    
    func announcePassedApplicants() {
        guard !passedApplicantsList.isEmpty else { print("합격자가 없습니다."); return }
        print("---합격자 명단---")
        print(passedApplicantsList.map{ $0.name }.joined(separator: "\n"))
        print("--------------\n축하합니다!!")
    }
}
