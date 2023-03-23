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
    //    var dropoutList: [Person] = []
    
    //    합격자를 골라내는 메서드
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
            print("불합격")
        }
    }
    
    //합격자 출력하는 메서드
    mutating func announcePassedApplicants() {
        print("--- 합격자 명단---")
        cast()
        for passedPerson in passedApplicantsList {
            print("\(passedPerson.name)")
        }
        print("---------------")
        print("--- 축하합니다.---")
    }
    
}
