import Foundation

fileprivate class Person {
    let name: String
    private let height: Int
    
    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }
}

fileprivate enum Level {
    case A
    case B
    case C
}

fileprivate protocol Talent {
    var singing: Level { get set }
    var dancing: Level { get set }
    var acting: Level { get set }
}

fileprivate protocol BadPersonality {
    var frequancyOfCursing: Level { get set }
}

fileprivate class TalentedPerson: Person, Talent {
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

fileprivate class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
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

fileprivate struct AuditionManager {
    let totalApplicantsList: [Person]
    private var passedApplicantsList: [Person]
    
    init(totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
        self.passedApplicantsList = []
    }
    
    mutating func cast() {
        for case let applicant in totalApplicantsList where applicant is TalentedPersonWithBadPersonality == false {
            if let applicantWithTalent = applicant as? Talent {
                if applicantWithTalent.singing == .A ||
                   applicantWithTalent.dancing == .A ||
                   applicantWithTalent.acting == .A {
                   self.passedApplicantsList.append(applicant)
                }
            }
        }
    }
    func announcePassedApplicants() {
        print("---합격자 명단---")
        for applicant in passedApplicantsList {
            print("\(applicant.name)")
        }
        print("--------------")
        print("축하합니다!!")
    }
}

fileprivate struct Hacker {
    func hackPassedApplicantsList() {
        //auditionManager.passedApplicantsList.append(mySon)
    }
}

fileprivate let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
fileprivate let noroo = Person(name: "noroo", height: 1000)
fileprivate let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
fileprivate let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
fileprivate let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)
fileprivate let applicantsList = [yagom, noroo, summer, coda, odong]
fileprivate var auditionManager = AuditionManager(totalApplicantsList: applicantsList)
fileprivate let mySon = Person(name: "nalgangdo", height: 10000)
fileprivate let hacker = Hacker()

fileprivate func run() {
    auditionManager.cast()
    auditionManager.announcePassedApplicants()
}

run()
