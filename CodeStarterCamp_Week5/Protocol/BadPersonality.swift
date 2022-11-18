import Foundation

protocol BadPersonality {
    var frequancyOfCursing: Level { get }
    
    func checkBadPersonality() -> Bool
}

extension BadPersonality {
    func checkBadPersonality() -> Bool {
        return frequancyOfCursing == .A
    }
}
