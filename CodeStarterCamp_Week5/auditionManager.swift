//
//  auditionManager.swift
//  CodeStarterCamp_Week5
//
//  Created by karen on 2023/03/20.
//

import Foundation

struct AuditionManager {
    var totalApplicantsList: [Person] = []
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        var successfulCandidate: [Person] = []
        
        for applicant in self.totalApplicantsList {
            guard let talentedPerson = applicant as? Talent else { continue } //업캐스팅 ?는 자식 클래스의 인스턴스로 사용할 수 있도록 하기 위함임/ continue를 사용함으로써 코드블록의 반복을 줄일 수 있다.
            if talentedPerson.checkedSuccessful() {
                guard talentedPerson is BadPersonality else { //is를 붙여서 타입을 확인할 수 있다
                    successfulCandidate.append(applicant)
                    continue
                }
            }
        }
        self.passedApplicantsList = successfulCandidate
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for person in passedApplicantsList {
            print("\(person.name)")
        }
        print("""
                --------------
                축하합니다!!
                """)
    }
}
