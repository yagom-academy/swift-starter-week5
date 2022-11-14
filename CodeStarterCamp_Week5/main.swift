//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

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

class Person {
    var name: String
    var height: Int
    
    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }
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

struct AuditionManager {
    var totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        for person in totalApplicantsList {
            if let talentedPerson = person as? TalentedPerson {
                if  talentedPerson.singing == .A ||
                        talentedPerson.dancing == .A ||
                        talentedPerson.acting == .A {
                    passedApplicantsList.append(talentedPerson)
                }
            } else {
                continue
            }
        }
    }

    func announcePassedApplicants() {
        if passedApplicantsList.count != 0 {
            print("---합격자 명단---")
            for passedPerson in passedApplicantsList {
                print(passedPerson.name)
            }
            print("--------------")
            print("축하합니다!!")
        } else {
            print("합격자가 없습니다.")
        }
    }
}

let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)

var auditionManager = AuditionManager(totalApplicantsList: [yagom, noroo, summer, coda, odong])

auditionManager.cast()
auditionManager.announcePassedApplicants()
