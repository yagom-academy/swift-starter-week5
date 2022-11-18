import Foundation

struct AuditionManager: Talent, BadPersonality {
    var singing: Level = .C
    var dancing: Level = .C
    var acting: Level = .C
    var frequancyOfCursing: Level = .C
    
    // 프로퍼티에 private 선언
    private(set) var totalApplicantsList = [Person]()
    private var passedApplicantsList = [Person]()
    // 참가자를 넣기 위한 메서드 생성
    mutating func appendTotalApplicantsList(applicants: [Person]) {
        self.totalApplicantsList = applicants
    }
    
    mutating func appendPassedList(applicant: Person) {
        self.passedApplicantsList.append(applicant)
    }
    
    mutating func checkTalent() {
        for applicant in totalApplicantsList  {
            if applicant is Talent {
                if let talentedApplicant = applicant as? TalentedPerson {
                    if talentedApplicant.checkHighestLevel() {
                        appendPassedList(applicant: applicant)
                    }
                }
            }
        }
        
    }
    
    
    mutating func checkBadPersonality() {
        for applicant in totalApplicantsList {
            if applicant is BadPersonality {
                if let talentedWithBadPersonalityApplicant = applicant as? TalentedPersonWithBadPersonality {
                    if talentedWithBadPersonalityApplicant.checkHighestLevel() && talentedWithBadPersonalityApplicant.checkBadPersonality() {
                        appendPassedList(applicant: applicant)
                    }
                }
            }
        }
    }
    
    mutating func cast() {
        
        print("---합격자 명단---")
        
        for candidate in passedApplicantsList {
            print(candidate.name)
        }
        
        print("--------------")
        print("축하합니다!!")
    }
}
