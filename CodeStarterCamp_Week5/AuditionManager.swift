//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 1 on 2023/03/21.
//

import Foundation


struct AuditionManager {
    private(set) var totalApplicantsList: [Person]
    private var passedApplicantsList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    private mutating func cast() {
        for person in totalApplicantsList {
            if let applicants = person as? Talent {
                if person is BadPersonality { continue }
                if applicants.singing == .A || applicants.acting == .A || applicants.dancing == .A {
                    passedApplicantsList.append(person)
                }
            }
        }
    }
    
    private mutating func examinationOfSuccessfulApplicants() {
        cast()
        if passedApplicantsList.isEmpty == true {
            print("불합격 입니다.")
        }
        
        for passedPerson in passedApplicantsList {
            print("\(passedPerson.name)님 합격을 축하드립니다.")
        }
    }
    
    mutating func announcePassedApplicants() {
        print("--- 합격자 명단---")
        examinationOfSuccessfulApplicants()
        print("---------------")
    }
    
    
    
}
