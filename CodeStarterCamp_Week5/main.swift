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
