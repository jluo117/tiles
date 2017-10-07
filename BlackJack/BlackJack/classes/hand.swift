//
//  hand.swift
//  BlackJack
//
//  Created by james luo on 10/6/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class hand {
    var Hand = [card]()
    init() {
    }
    func Draw(deck:deck , total: Int){
        for _ in 0..<total{
            self.Hand.append(deck.draw())
        }
    }
    func empty(){
        self.Hand.removeAll()
    }
}
