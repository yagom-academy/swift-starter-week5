//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// MARK: - Person 정의

class Person {
    let name: String
    var height: Int
    
    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }
}


enum Level {
    case A
    case B
    case C
}


protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
}


protocol BadPersonality {
    var frequancyOfCursing: Level { get }
}


class TalentedPerson: Person, Talent {
    var singing: Level
    var dancing: Level
    var acting: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super.init(name: name, height: height)
    }
}


class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    var singing: Level
    var dancing: Level
    var acting: Level
    var frequancyOfCursing: Level

    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, frequancyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name: name, height: height)
    }
}


// MARK: - AuditionManager 정의

struct AuditionManager {
    var totalApplicantsList: [Person] = []
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        for applicant in totalApplicantsList {
            if applicant is BadPersonality == false {
                if let talentedPerson = applicant as? Talent {
                    if talentedPerson.singing == .A || talentedPerson.acting == .A || talentedPerson.dancing == .A {
                        passedApplicantsList.append(applicant)
                    }
                }
            }
        }
    }
    
    func announcePassedApplicants() {
        if passedApplicantsList.isEmpty == false {
            print("---합격자 명단---")
            for applicant in passedApplicantsList {
                print(applicant.name)
            }
            print("--------------\n축하합니다!!")
        } else {
            print("이번에는 합격자가 없습니다.")
        }
    }
}


// MARK: - 실행

let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)
var applicantsList: AuditionManager = AuditionManager.init(totalApplicantsList: [yagom, noroo, summer, coda, odong])

applicantsList.cast()
applicantsList.announcePassedApplicants()
