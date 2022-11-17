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
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
    
    func haveAGrade() -> Bool
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get }
}

class Person {
    let name: String
    let height: Int
    
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
    
    func haveAGrade() -> Bool {
        if self.singing == .A || self.dancing == .A || self.acting == .A {
            return true
        } else {
            return false
        }
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
    
    func haveAGrade() -> Bool {
        if self.singing == .A || self.dancing == .A || self.acting == .A {
            return true
        } else {
            return false
        }
    }
}

struct AuditionManager {
    private(set) var totalApplicantsList: [Person] = []
    private var passedApplicantsList: [Person] = []
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    mutating func cast() {
        var passer: [Person] = []
        
        for applicant in self.totalApplicantsList {
            guard let talentedPerson = applicant as? Talent else { continue }
            
            if talentedPerson.haveAGrade() {
                guard talentedPerson is BadPersonality else {
                    passer.append(applicant)
                    continue
                }
            }
        }
        
        self.passedApplicantsList = passer
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

let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
let noroo = Person(name: "noroo", height: 1000)
let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)

var JYP = AuditionManager(totalApplicantsList: [yagom, noroo, summer, coda, odong])
JYP.cast()
JYP.announcePassedApplicants()
