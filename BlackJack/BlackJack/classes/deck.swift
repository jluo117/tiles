//
//  deck.swift
//  BlackJack
//
//  Created by james luo on 10/2/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class deck{
    var Cards = [card]()
    init() {
        for i in 1 ... 10{
            let cardData = card(faceCard: String(i), type: "clubs")
            Cards.append(cardData)
        }
        
        var jack = card(faceCard: "jack", type: "clubs")
        Cards.append(jack)
        var queen = card(faceCard: "queen", type: "clubs")
        Cards.append(queen)
        var king = card(faceCard: "king", type: "clubs")
        Cards.append(king)
        
        
        for i in 1 ... 10{
            let cardData = card(faceCard: String(i), type: "spades")
            Cards.append(cardData)
        }
        jack = card(faceCard: "jack", type: "spades")
        Cards.append(jack)
        queen = card(faceCard: "queen", type: "spades")
        Cards.append(queen)
        king = card(faceCard: "king", type: "spades")
        Cards.append(king)
        
        for i in 1 ... 10{
            let cardData = card(faceCard: String(i), type: "diamonds")
            Cards.append(cardData)
        }
        jack = card(faceCard: "jack", type: "diamonds")
        Cards.append(jack)
        queen = card(faceCard: "queen", type: "diamonds")
        Cards.append(queen)
        king = card(faceCard: "king", type: "diamonds")
        Cards.append(king)
        
        for i in 1 ... 10{
            let cardData = card(faceCard: String(i), type: "hearts")
            Cards.append(cardData)
        }
        jack = card(faceCard: "jack", type: "hearts")
        Cards.append(jack)
        queen = card(faceCard: "queen", type: "hearts")
        Cards.append(queen)
        king = card(faceCard: "king", type: "hearts")
        Cards.append(king)
    }
    func draw() -> card {
        let cardPos  = Int(arc4random_uniform(UInt32((cards.count))))
        let card = Cards[cardPos]
        self.Cards.remove(at: cardPos)
        return card
    }
    
}
