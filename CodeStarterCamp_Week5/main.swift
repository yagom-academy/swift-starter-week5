//
//  main.swift
//  Week5 Step1
//
//  Created by JeonSangHyeok on 2023/03/21.
//

import Foundation

class Person {
    var name: String
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
    var singing: Level { get set}
    var dancing: Level { get set}
    var acting: Level { get set}
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get set}
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
    
    func checkTalent(_ applicants: Talent) -> Bool {
        return applicants.singing == .A || applicants.acting == .A || applicants.dancing == .A
    }
    
    func checkPersonailty(_ appicants: Talent) -> Bool {
        return appicants is BadPersonality
    }
    
    mutating func cast() {
        for applicants in totalApplicantsList {
            guard let checkApplicants = applicants as? Talent else {
                continue
            }
            if checkTalent(checkApplicants) {
                guard checkPersonailty(checkApplicants) else {
                    passedApplicantsList.append(applicants)
                    continue
                }
            }
        }
    }
    
    
    func anouncePassedApplicants() {
        print("---합격자 명단---")
        for passer in passedApplicantsList {
            print(passer.name)
        }
        print("--------------")
        print("축하합니다!!")
        
    }
}

let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)


var hyeok = AuditionManager(totalApplicantsList: [yagom, noroo, summer, coda, odong])

hyeok.cast()
hyeok.anouncePassedApplicants()
