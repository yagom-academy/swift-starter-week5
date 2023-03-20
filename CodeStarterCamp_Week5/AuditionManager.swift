//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by Daehoon Lee on 2023/03/20.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        for person in totalApplicantsList {
            guard let talentedPerson = person as? Talent else { continue }
            
            if let talentedPersonWithBadPersonality = talentedPerson as? BadPersonality,
               talentedPersonWithBadPersonality.checkPersonality()
            {
                passedApplicantsList.append(person)
            } else if talentedPerson.singing == .A || talentedPerson.dancing == .A || talentedPerson.acting == .A {
                passedApplicantsList.append(person)
            }
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for person in passedApplicantsList {
            print(person.name)
        }
        print("--------------")
        print("축하합니다!!")
    }
}
