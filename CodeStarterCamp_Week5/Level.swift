//
//  Level.swift
//  CodeStarterCamp_Week5
//
//  Created by 황지웅 on 2022/05/11.
//

import Foundation

enum Level {
    case A
    case B
    case C
    
    var isUpperThanALevel: Bool {
        switch self {
        case .A:
            return true
        case .B, .C:
            return false
        }
    }
}
