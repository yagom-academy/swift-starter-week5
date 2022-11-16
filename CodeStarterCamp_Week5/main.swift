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
    var singing: Level? { get }
    var dancing: Level? { get }
    var acting: Level? { get }
    
    func haveAGrade() -> Bool
}

protocol BadPersonality{
    var frequancyOfCursing: Level? { get }
    
    func haveBadPersonality() -> Bool
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
    var singing: Level?
    var dancing: Level?
    var acting: Level?
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level) {
        super.init(name: name, height: height)
        
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
    }
    
    func haveAGrade() -> Bool {
        guard let siningLv = self.singing, let dancingLv = self.dancing, let actingLv = self.acting else { return false }
        
        if siningLv == .A || dancingLv == .A || actingLv == .A {
            return true
        } else {
            return false
        }
    }
}

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    var singing: Level?
    var dancing: Level?
    var acting: Level?
    var frequancyOfCursing: Level?
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level, frequancyOfCursing: Level) {
        super.init(name: name, height: height)
        
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        self.frequancyOfCursing = frequancyOfCursing
    }
    
    func haveAGrade() -> Bool {
        guard let siningLv = self.singing, let dancingLv = self.dancing, let actingLv = self.acting else { return false }
        
        if siningLv == .A || dancingLv == .A || actingLv == .A {
            return true
        } else {
            return false
        }
    }
    
    func haveBadPersonality() -> Bool {
        guard let frequancyOfCursingLv = self.frequancyOfCursing else { return false }
        
        if frequancyOfCursingLv == .A {
            return true
        } else {
            return false
        }
    }
}

struct AuditionManager {
    var totalApplicantsList: [Person] = []
    
    func cast() -> [Person] {
        var passer: [Person] = []
        
        for applicant in self.totalApplicantsList {
            guard let talentedPerson = applicant as? Talent else { continue }
            
            if talentedPerson.haveAGrade() {
                guard let talentedBadPerson = talentedPerson as? BadPersonality else {
                    passer.append(applicant)
                    continue
                }
                
                if !talentedBadPerson.haveBadPersonality() {
                    passer.append(applicant)
                }
            }
        }
        
        return passer
    }
    
    func announcePassedApplicants() {
        let passedPerson = cast()
        
        print("---합격자 명단---")
        
        for person in passedPerson {
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

let JYP = AuditionManager(totalApplicantsList: [yagom, noroo, summer, coda, odong])
JYP.announcePassedApplicants()
