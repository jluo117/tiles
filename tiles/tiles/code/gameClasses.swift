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
    var key: Bool
    init(tag:Bool, key:Bool) {
        self.key = key
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
    var pos1: Int
    var pos2: Int
    init() {
        self.size = 0
        self.bombPos = 0
        self.played = false
        self.pos1 = 0
        self.pos2 = 0
    }
    func buildGame(size: Int) {
        self.size = size
        self.bombPos = Int(arc4random_uniform(UInt32(size)))
        var startNum = 0
        self.pos1 = Int(arc4random_uniform(UInt32(size)))
        self.pos2 = Int(arc4random_uniform(UInt32(size)))
        while self.pos1 == self.bombPos{
            if bombPos == 0{
                self.pos1 = Int(arc4random_uniform(UInt32(size - 1))) + 1
            }
            if bombPos == size-1{
                self.pos1 = Int(arc4random_uniform(UInt32(size - 1))) - 1
            }
            else{
                self.pos1 = Int(arc4random_uniform(UInt32(size)))
            }
        }
        while self.pos2 == self.bombPos{
            if bombPos == 0{
                self.pos2 = Int(arc4random_uniform(UInt32(size - 1))) + 1
            }
            if bombPos == size-1{
                self.pos2 = Int(arc4random_uniform(UInt32(size - 1))) - 1
            }
            else{
                self.pos2 = Int(arc4random_uniform(UInt32(size)))
            }
        }
        while startNum < size{
            if startNum == bombPos{
                let pos = position(tag: true, key: false)
                self.tiles.append(pos)
            }
            if startNum == self.pos1{
                let pos = position(tag: false, key: true )
                self.tiles.append(pos)
            }
            if startNum == self.pos2{
                let pos = position(tag: false, key: true )
                self.tiles.append(pos)
            }
            else{
                let pos = position(tag: false, key: false)
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
        if (tag == self.pos1 || tag == self.pos2){
            return "green"
        }
        return "Good"
    }
    
    
    func isWin() -> Bool {
        if tiles[pos1].pressed && tiles[pos2].pressed{
            return true
        }
        else{
            return false
        }
    }
    
    func clear(){
        self.played = false
        self.victory = false
        tiles.removeAll()
        buildGame(size: self.size)
    }
}

