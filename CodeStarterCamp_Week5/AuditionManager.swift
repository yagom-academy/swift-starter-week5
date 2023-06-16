//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by ChoiKwangWoo on 2023/06/12.
//

import Foundation

struct AuditionManager {
    private let totalApplicantsList: [Person]
    private var passedApplicantsList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast() {
        let talentedApplicants = totalApplicantsList.filter{ applicant in
            return applicant is TalentedPerson || applicant is TalentedPersonWithBadPersonality
        }
        
        self.passedApplicantsList = talentedApplicants.filter{ applicant in
            if applicant is TalentedPerson {
                let person = applicant as! TalentedPerson
                let singingLevel = person.singing
                let dancingLevel = person.dancing
                let actingLevel = person.acting
                
                return singingLevel == .A || dancingLevel == .A || actingLevel == .A
            } else {
                let person = applicant as! TalentedPersonWithBadPersonality
                let singingLevel = person.singing
                let dancingLevel = person.dancing
                let actingLevel = person.acting
                let personality = person.frequancyOfCursing
                
                return (singingLevel == .A || dancingLevel == .A || actingLevel == .A) && personality != .C
            }
        }
    }
    
    func showPassedApplicantList() {
        print("---합격자 명단---")
        for applicant in self.passedApplicantsList {
            print(applicant.name)
        }
        printLine(length: 14)
        print("축하드립니다!")
    }
}
