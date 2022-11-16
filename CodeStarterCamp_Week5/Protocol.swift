import Foundation

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
    
}

protocol BadPersonality {
    var frequancyOfCursing: Level { get }
}

enum Level {
    case A
    case B
    case C
}
