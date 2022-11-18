import Foundation

protocol Talent {
    var singing: Level { get }
    var dancing: Level { get }
    var acting: Level { get }
    
    func checkHighestLevel() -> Bool
}

extension Talent {
    func checkHighestLevel() -> Bool {
        return singing == .A || dancing == .A || acting == .A
    }
}

