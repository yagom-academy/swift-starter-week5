import Foundation

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
    let totalApplicantsList: [Person]
    var passedApplicantsList: [Person] = []
    
    mutating func cast() {
        for applicant in totalApplicantsList {
            if let applicantWithTalent = applicant as? Talent,
                   applicant is TalentedPersonWithBadPersonality == false {
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

func runStep1() {
    let yagom = TalentedPerson(name: "yagom", height: 100, singing: .B, dancing: .A, acting: .C)
    let noroo = Person(name: "noroo", height: 1000)
    let summer = TalentedPerson(name: "summer", height: 900, singing: .B, dancing: .B, acting: .B)
    let coda = TalentedPerson(name: "coda", height: 200, singing: .A, dancing: .C, acting: .C)
    let odong = TalentedPersonWithBadPersonality(name: "odong", height: 400, singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A)
    let applicantsList = [yagom, noroo, summer, coda, odong]
    var auditionManager = AuditionManager(totalApplicantsList: applicantsList)
    auditionManager.cast()
    auditionManager.announcePassedApplicants()
}

runStep1()
