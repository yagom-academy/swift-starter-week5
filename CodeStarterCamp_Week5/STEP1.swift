//
//  File.swift
//  CodeStarterCamp_Week5
//
//  Created by 김경준 on 2022/11/14.
//

import Foundation
// MARK: - STEP1. 야곰 엔터 오디션

class Person {
    let name: String
    let height: Int
    
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
    let singing: Level
    let dancing: Level
    let acting: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level) {
        self.singing = singing
        self.dancing = dancing
        self.acting = acting
        super.init(name: name, height: height)
    }
}

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    let singing: Level
    let dancing: Level
    let acting: Level
    let frequancyOfCursing: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level,
         frequancyOfCursing: Level) {
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
    
    mutating func appendPassedList(applicant: Person) {
        self.passedApplicantsList.append(applicant)
    }
    
    mutating func removeFromPassedList(applicant: Person) {
        self.passedApplicantsList.removeLast()
    }
    
    mutating func checkTalent(applicant: Person) {
        if let talentedApplicant = applicant as? Talent {
            if talentedApplicant.singing == Level.A {
                appendPassedList(applicant: applicant)
            } else if talentedApplicant.acting == Level.A {
                appendPassedList(applicant: applicant)
            } else if talentedApplicant.dancing == Level.A {
                appendPassedList(applicant: applicant)
            }
        }
    }
    
    mutating func checkBadPersonality(applicant: Person) {
        if let badApplicant = applicant as? BadPersonality {
            switch badApplicant.frequancyOfCursing {
            case .A:
                self.removeFromPassedList(applicant: applicant)
            case .B:
                self.removeFromPassedList(applicant: applicant)
            case .C:
                break
            }
        }
    }
    
    func announcePassedApplicants() {
        print("--- 합격자 명단---")
        for member in self.passedApplicantsList {
            print("\(member.name)")
        }
        print("""
        --------------
        축하합니다!!
        """)
    }
    
    mutating func cast() {
        for member in self.totalApplicantsList {
            checkTalent(applicant: member)
            checkBadPersonality(applicant: member)
            }
        
        self.announcePassedApplicants()
    }
}
