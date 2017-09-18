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
    var score = 0
    var victory = false
    var size: Int
    var bombPos: Int
    var played: Bool
    init() {
        self.size = 0
        self.bombPos = 0
        self.played = false
    }
    func buildGame(size: Int) {
        self.size = size
        self.bombPos = Int(arc4random_uniform(UInt32(size)))
        var startNum = 0
        while startNum < size{
            if startNum == bombPos{
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
    
    
    func buttonPress(tag: Int) -> String {
        if tiles[tag].isBomb{
            return "Game Over"
        }
        else if tiles[tag].pressed{
            return "Invaid"
        }
        tiles[tag].pressed = true
        if isWin(){
            victory = true
            return "Win"
        }
        return "Good"
    }
    
    
    func isWin() -> Bool {
        if bombPos == size - 1{
            if tiles[bombPos-1].pressed{
                return true
            }
            else{
                return false
            }
        }
            if bombPos == 0{
                if tiles[1].pressed{
                    return true
                }
                else {
                    return false
                }
            }
            if tiles[bombPos-1].pressed && tiles[bombPos+1].pressed{
                return true
            }
            return false
    }
    
    func clear(){
        tiles.removeAll()
        self.bombPos = Int(arc4random_uniform(UInt32(size)))
        var startNum = 0
        while startNum < size{
            if startNum == bombPos{
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
