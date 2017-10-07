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
    var trapPos = [Int]()
    var played: Bool
    var keyPos = [Int]()
    var trapSize = 0
    var keySize = 0
    init() {
        self.size = 0
        self.played = false
    }
    func buildGame(size: Int,key: Int, trap: Int) {
        self.clear()
        self.size = size
        self.trapSize = trap
        self.keySize = key
        while self.trapPos.count < trap{
            var trapLoc = Int(arc4random_uniform(UInt32(size - 1)))
            while self.trapPos.contains(trapLoc){
                trapLoc = Int(arc4random_uniform(UInt32(size - 1)))
            }
            self.trapPos.append(trapLoc)
        }
        while self.keyPos.count < key{
            var keyLoc = Int(arc4random_uniform(UInt32(size - 1)))
            while ((self.trapPos.contains(keyLoc)) || (self.keyPos.contains(keyLoc))){
                keyLoc = Int(arc4random_uniform(UInt32(size - 1)))
            }
            keyPos.append(keyLoc)
        }
        var curArray = 0
        
        
        while curArray < size{
            if trapPos.contains(curArray){
                let pos = position(tag: true, key: false)
                self.tiles.append(pos)
            }
            if trapPos.contains(curArray){
                let pos = position(tag: false, key: true )
                self.tiles.append(pos)
            }
            
            else{
                let pos = position(tag: false, key: false)
                self.tiles.append(pos)
            }
            curArray += 1
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
        if (self.keyPos.contains(tag)){
            return "green"
        }
        return "Good"
    }
    
    
    func isWin() -> Bool {
        for pos in keyPos{
            if tiles[pos].pressed{
                
            }
            else{
                return false
            }
        }
        return true
    }
    
    func clear(){
        self.tiles.removeAll()
        self.keyPos.removeAll()
        self.trapPos.removeAll()
        self.played = false
        self.victory = false
    }
}

