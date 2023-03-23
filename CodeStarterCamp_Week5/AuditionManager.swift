//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by 1 on 2023/03/21.
//

import Foundation


struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        for person in totalApplicantsList {
            if let applicants = person as? Talent {
                if person is BadPersonality { continue }
                if applicants.singing == .A || applicants.acting == .A || applicants.dancing == .A {
                    passedApplicantsList.append(person)
                }
            }
        }
    
        if passedApplicantsList.isEmpty == true {
            print("불합격 입니다.")
        }
        
        for passedPerson in passedApplicantsList {
            print("\(passedPerson.name)님 합격을 축하드립니다.")
        }
    }
    
    func examinationOfSuccessfulApplicants() {
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
