//
//  main.swift
//  CodeStarterCamp_Week5
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

let neph = TalentedPerson(singing: .A, dancing: .A, acting: .A, name: "neph⭐️", height: 200)
let mino = TalentedPerson(singing: .B, dancing: .B, acting: .B, name: "mino", height: 200)
let kim = Person(name: "kim", height: 100)
let yagom = TalentedPersonWithBadPersonality(singing: .A, dancing: .A, acting: .A, frequancyOfCursing: .A, name: "yagom", height: 200)

let auditionManager = AuditionManager(totalApplicantsList: [mino, neph, yagom])
auditionManager.cast()

