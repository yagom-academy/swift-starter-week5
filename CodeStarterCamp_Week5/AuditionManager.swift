//
//  AuditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by Min Hyun on 2023/03/21.
//

import Foundation

struct AuditionManager {
    public private(set) var totalApplicantsList: Array<Person>
    private var passedApplicantsList: Array<Person> = Array<Person>()
    
    init(_ totalApplicantsList: Array<Person>) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast() {
        for applicant in totalApplicantsList {
            if let _ = applicant as? TalentedPersonWithBadPersonality {
                continue
            }
            guard let talentedApplicant = applicant as? TalentedPerson,
                  talentedApplicant.hasLevelA() else {
                continue
            }
            self.passedApplicantsList.append(applicant)
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for applicant in passedApplicantsList {
            print(applicant.name)
        }
        print("""
              --------------
              축하합니다!!
              """)
    }
}
