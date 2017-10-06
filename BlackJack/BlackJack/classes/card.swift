//
//  File.swift
//  BlackJack
//
//  Created by james luo on 10/2/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class card{
    var faceValue: Int
    var faceCard: String
    var isAce: Bool
    var type: String
    init (faceCard: String ,type: String){
        self.faceCard = faceCard
        self.type = type
        switch faceCard {
        case "jack","queen","king":
            faceValue = 10
            isAce = false
        case "1":
            faceValue = 11
            isAce = true
        default:
            faceValue = Int(faceCard)!
            isAce = false
        }
    }
}
