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
    
    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }
}

enum Level {
    case A, B, C
}

protocol Talent {
    var singing: Level? { get set }
    var dancing: Level? { get set }
    var acting: Level? { get set }
}

protocol BadPersonality {
    var frequancyOfCursing: Level? { get set }
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
}

public struct AuditionManager {
    
    //private var _totalApplications: [Person] = []
    private(set) var totalApplicantsList: [Person] = []
    private var passedApplicationsList: [Person] = []
    
    mutating func cast() {
        for number in 0..<totalApplicantsList.count {
            if (totalApplicantsList[number] is Talent) && ((totalApplicantsList[number] is BadPersonality) == false) {
                let talentedPerson = totalApplicantsList[number] as? TalentedPerson
                if talentedPerson?.singing == .A || talentedPerson?.dancing == .A || talentedPerson?.acting == .A {
                    passedApplicationsList.append(totalApplicantsList[number])
                }
            }
        }
    }
    
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for person in passedApplicationsList {
            print("\(person.name)")
        }
        print("--------------")
        print("축하합니다!!🥳")
    }
    
    mutating func addNewApplicants(Applicants: [Person]) {
        for newPerson in Applicants {
            totalApplicantsList.append(newPerson)
        }
    }
}

struct Hacker {
    func hackPassedApplicantsList() {
        // god.passedApplicationsList.append(mySon)
        // god.totalApplicantsList.append(mySon)
        //더이상 직접적으로 접근하지 못함!
    }
}

let harry = TalentedPerson(name: "harry", height: 180, singing: .A, dancing: .B, acting: .C)
let wongbing = TalentedPerson(name: "wongbing", height: 300, singing: .C, dancing: .A, acting: .B)
let watermellon = TalentedPerson(name: "catlover", height: 175, singing: .B, dancing: .C, acting: .A)
let yagom = TalentedPerson(name: "yahangom", height: 1000, singing: .A, dancing: .A, acting: .A)
let jinho = TalentedPerson(name: "kongggajima", height: 222, singing: .B, dancing: .B, acting: .B)
let voldemort = TalentedPersonWithBadPersonality(name: "Tom", height: 168, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)
let potter = Person(name: "potter", height: 175)
///치...침입자가 나타났다!
let mySon = Person(name: "nalgangdo", height: 10000)

var god = AuditionManager()

let hacker = Hacker()
hacker.hackPassedApplicantsList()

/// 후후후 이 메서드가 아니면 이제 아들을 꽂아 넣을 수가 없다!
god.addNewApplicants(Applicants: [ mySon, harry, yagom, wongbing, watermellon, voldemort, jinho, potter ])
god.cast()
god.announcePassedApplicants()
print(god.totalApplicantsList)
