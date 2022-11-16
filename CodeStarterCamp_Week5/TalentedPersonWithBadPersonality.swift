import Foundation

class TalentedPersonWithBadPersonality: Person, Talent, BadPersonality {
    var frequancyOfCursing: Level
    
    var singing: Level
    var dancing: Level
    var acting: Level
    
    init(name: String, height: Int, singing: Level, dancing: Level, acting: Level,
             frequancyOfCursing: Level) {
            self.singing = singing
            self.dancing = dancing
            self.acting = acting
            self.frequancyOfCursing = frequancyOfCursing
            super.init(name: name, height: height)
    }
    
    
}
