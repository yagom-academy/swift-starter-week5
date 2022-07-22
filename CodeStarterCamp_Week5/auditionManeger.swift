import Foundation

class AuditionManager {
    let totalApplicantsList: [Person]
    var passedApplicantsList = [String]()
    
    init (totalApplicantsList: [Person]) {
        self.totalApplicantsList = totalApplicantsList
    }
    
    func cast() {
        let filter: () = ()
        for applicant in totalApplicantsList {
            if applicant is BadPersonality {
                filter
            } else if let passedApplicant = applicant as? Talent {
                self.passedApplicantsList.append((passedApplicant as! Person).name)
            }
        }
    }
    
    func announcePassedApplicants() {
        self.cast()
        print("---합격자명단---")
        for applicant in passedApplicantsList {
            print(applicant)
        }
        print("""
        --------------
        축하합니다!!
        """)
    }
}
