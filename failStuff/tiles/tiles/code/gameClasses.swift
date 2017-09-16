//
//  position.swift
//  Minesweeper
//
//  Created by james luo on 9/14/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation

class position{
    var isBomb: Bool
    var pressed = false
    
    init(tag:Bool) {
        self.isBomb = tag
        self.pressed = false
    }
}


class game{
    var tiles = [position]()
    var victory = false
    init() {
        let randomNum = Int(arc4random_uniform(9))
        var startNum = 0
        while startNum < 9{
            if startNum == randomNum{
                let pos = position(tag: true)
                self.tiles.append(pos)
            }
            else{
                let pos = position(tag: false)
                self.tiles.append(pos)
            }
            startNum += 1
            
        }
    }
    func clear(){
        tiles.removeAll()
        let randomNum = Int(arc4random_uniform(9))
        var startNum = 0
        while startNum < 9{
            if startNum == randomNum{
                let pos = position(tag: true)
                self.tiles.append(pos)
            }
            else{
                let pos = position(tag: false)
                self.tiles.append(pos)
            }
            startNum += 1
        }

    }
}
