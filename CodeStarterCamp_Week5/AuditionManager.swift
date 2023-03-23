//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by eve on 2023/03/21.
//

import Foundation

struct AuditionManager {
    private(set) var totalApplicantsList: [Person]
    private var passedApplicantsList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast() {
        passedApplicantsList = []
        for person in totalApplicantsList {
            if person is TalentedPersonWithBadPersonality { continue }
            
            if let applicant = person as? TalentedPerson,
               applicant.isPassLevel() {
                passedApplicantsList.append(person)
            }
        }
    }
    
    func announcePassedApplicants() {
        guard passedApplicantsList.count > 0 else {
            print("합격자가 없습니다.")
            return
        }
        
        print("---합격자 명단---")
        for passer in passedApplicantsList {
            print(passer.name)
        }
        print("--------------")
        print("축하합니다!!\n")
    }
    
    mutating func changetotalList(to list: [Person]) {
        totalApplicantsList = list
        passedApplicantsList = []
    }
}
