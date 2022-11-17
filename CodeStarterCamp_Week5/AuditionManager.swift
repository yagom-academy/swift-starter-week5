import Foundation

struct AuditionManager: CheckTalent, CheckBadPersonality {
    
    var totalApplicantsList: [Person]
    var passedApplicantsList = [Person]()
   
    mutating func appendPassedList(applicant: Person) {
        self.passedApplicantsList.append(applicant)
    }
    
    mutating func checkTalent() {
        for applicant in totalApplicantsList  {
            if applicant is Talent {
                if let talentedApplicant = applicant as? TalentedPerson {
                    if talentedApplicant.singing == Level.A || talentedApplicant.acting == Level.A || talentedApplicant.dancing == Level.A {
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
                    if talentedWithBadPersonalityApplicant.singing == Level.A || talentedWithBadPersonalityApplicant.acting == Level.A || talentedWithBadPersonalityApplicant.dancing == Level.A && talentedWithBadPersonalityApplicant.frequancyOfCursing == Level.A {
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
