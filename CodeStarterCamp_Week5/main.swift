//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var height: Int
    
    init(_ name: String, _ height: Int) {
        self.name = name
        self.height = height
    }
}

enum Level {
    case A, B, C
}

protocol Talent {
    var singing: Level { get set }
    var dancing: Level { get set }
    var acting: Level { get set }
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get set }
}

class TalentedPerson: Person, Talent {
    var singing: Level
    var dancing: Level
    var acting: Level
    
    init(_ name: String, _ height: Int, _ singing: Level, _ dancing: Level, _ acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super.init(name, height)
    }
}

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    var singing: Level
    var dancing: Level
    var acting: Level
    var frequancyOfCursing: Level
    
    init(_ name: String, _ height: Int, _ singing: Level, _ dancing: Level, _ acting: Level, _ frequancyOfCursing: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
        super.init(name, height)
    }
}

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    // Talent를 채택하고 있는 지원자 중, 노래, 춤, 연기의 레벨이 하나 이상 A 레벨인 경우 합격자
    mutating func cast() {
        for applicant in totalApplicantsList {
            if applicant is Talent {
                if applicant is TalentedPersonWithBadPersonality {
                    if (applicant as! BadPersonality).frequancyOfCursing != .A {
                        continue
                    }
                }
                if (applicant as! Talent).singing == .A || (applicant as! Talent).acting == .A || (applicant as! Talent).dancing == .A {
                    passedApplicantsList.append(applicant)
                }
            }
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for applicant in passedApplicantsList {
            print(applicant.name)
        }
        print("--------------")
        print("축하합니다!!")
    }
}

let yagom = TalentedPerson("yagom", 100, .B, .A, .C)
let noroo = Person("noroo", 1000)
let summer = TalentedPerson("summer", 900, .B, .B, .B)
let coda = TalentedPerson("coda", 200, .A, .C, .C)
let odong = TalentedPersonWithBadPersonality("odong", 400, .A, .A, .A, .A)
var auditionManager = AuditionManager(totalApplicantsList: [yagom, noroo, summer, coda, odong])
auditionManager.cast()
auditionManager.announcePassedApplicants()
