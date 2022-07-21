//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by smfc on 18/7/2022.
//

import Foundation

struct AuditionManager {
    private(set) var totalApplicantsList: [Person]
    private var passedApplicantsList = [Person]()
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast() {
        for applicant in totalApplicantsList {
            if let talentWithBadPersonality = applicant as? BadPersonality {
                guard talentWithBadPersonality.frequancyOfCursing == .A else {
                    continue
                }
                self.passedApplicantsList.append(applicant)
            }
            else {
                guard let talent = applicant as? TalentedPerson else {
                    continue
                }
                guard talent.singing == .A || talent.dancing == .A || talent.acting == .A else {
                    continue
                }
                self.passedApplicantsList.append(applicant)
            }
        }
    }
    
    mutating func announcePassedApplicants() {
        print("---합격자 명단---")
        for passedApplicant in passedApplicantsList {
            print(passedApplicant.name)
        }
        print("--------------")
        print("축하합니다!!")
    }
}
