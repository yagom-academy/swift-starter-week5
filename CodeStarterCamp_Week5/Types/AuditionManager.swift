//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by Jungmo Yu on 2022/01/05.
//

import Foundation

struct AuditionManager {
    private(set) var totalApplicantsList: [Person]
    private var passedApplicantsList: [Person] = []
    
    init(applicantsList: [Person]) {
        self.totalApplicantsList = applicantsList
    }
    
    mutating func cast() {
        for applicant in totalApplicantsList {
            if applicant is Talent && checkApplicantTalent(applicant: applicant) {
                self.passedApplicantsList.append(applicant)
            }
        }
        announcePassedApplicants(passedApplicants: self.passedApplicantsList)
    }
        
    func checkApplicantTalent(applicant: Person) -> Bool {
        if let talentedPerson = applicant as? TalentedPerson {
            if talentedPerson.singing == .A
                || talentedPerson.dancing == .A
                || talentedPerson.acting == .A {
                return true
            }
        } else if let talentedPersonWithBadPersonality = applicant as? TalentedPersonWithBadPersonality {
            if (talentedPersonWithBadPersonality.singing == .A
                || talentedPersonWithBadPersonality.dancing == .A
                || talentedPersonWithBadPersonality.acting == .A )
                && talentedPersonWithBadPersonality.frequencyOfCursing != .C {
                return true
            }
        }
        return false
    }
    
    func announcePassedApplicants(passedApplicants: [Person]) {
        print("---합격자 명단---")
        for passedPerson in passedApplicants {
            print(passedPerson.name)
        }
        print("--------------")
        print("축하합니다!!")
    }
}
