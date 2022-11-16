//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by ByungHoon Ann on 2022/11/14.
//

import Foundation

struct AuditionManager {
    public private(set) var totalApplicantsList: [Person]
    private var passedApplicantList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast() {
        guard !totalApplicantsList.isEmpty else {
            return
        }
        let passedList = totalApplicantsList
            .filter { $0 is Talent }
            .filter { !($0 is BadPersonality) }
            .filter { ($0 as? Talent)?.checkHighScoreLevel() == true }
            
        passedApplicantList.append(contentsOf: passedList)
    }
    
    func announcePassedApplicants() {
        guard !passedApplicantList.isEmpty else {
            print("합격자가 없습니다")
            return
        }
        print("---합격자 명단---")
        passedApplicantList
            .forEach {
                print($0.name)
            }
        print("""
              --------------
              축하합니다!!
              """)
    }
}
