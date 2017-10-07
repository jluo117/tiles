//
//  blackJack.swift
//  BlackJack
//
//  Created by james luo on 10/6/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class player {
    var Hand: hand
    var money: Int
    init(money: Int) {
        self.money = money
        self.Hand = hand()
    }
    func gameStart(deck:deck, handSize:Int){
        self.Hand.Draw(deck: deck, total: handSize)
    }
    func drawCard(deck:deck){
        self.Hand.Draw(deck: deck, total: 1)
    }
    func endGame(){
        self.Hand.empty()
    }
}
