//
//  deck.swift
//  BlackJack
//
//  Created by james luo on 10/2/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation
class deck{
    var cards = [card]()
    init() {
        for i in 1 ... 10{
            let cardData = card(faceCard: String(i), type: "clubs")
            cards.append(cardData)
        }
        
        var jack = card(faceCard: "jack", type: "clubs")
        cards.append(jack)
        var queen = card(faceCard: "queen", type: "clubs")
        cards.append(queen)
        var king = card(faceCard: "king", type: "clubs")
        cards.append(king)
        
        
        for i in 1 ... 10{
            let cardData = card(faceCard: String(i), type: "spades")
            cards.append(cardData)
        }
        jack = card(faceCard: "jack", type: "spades")
        cards.append(jack)
        queen = card(faceCard: "queen", type: "spades")
        cards.append(queen)
        king = card(faceCard: "king", type: "spades")
        cards.append(king)
        
        for i in 1 ... 10{
            let cardData = card(faceCard: String(i), type: "diamonds")
            cards.append(cardData)
        }
        jack = card(faceCard: "jack", type: "diamonds")
        cards.append(jack)
        queen = card(faceCard: "queen", type: "diamonds")
        cards.append(queen)
        king = card(faceCard: "king", type: "diamonds")
        cards.append(king)
        
        for i in 1 ... 10{
            let cardData = card(faceCard: String(i), type: "hearts")
            cards.append(cardData)
        }
        jack = card(faceCard: "jack", type: "hearts")
        cards.append(jack)
        queen = card(faceCard: "queen", type: "hearts")
        cards.append(queen)
        king = card(faceCard: "king", type: "hearts")
        cards.append(king)
    }
    
}
