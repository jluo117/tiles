//
//  File.swift
//  tiles
//
//  Created by james luo on 9/15/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import Foundation

struct pos {
    var isBomb : Bool?
    var isPressed = false
    
}

class game  {
    var victor : Bool?
    var positions = [pos]()
    
    init(tiles: Int) {
        var start = 0
        let randomNum = arc4random_uniform(UInt32(tiles))
        while (start < tiles){
            var position = pos()
            if start == Int(randomNum){
                position.isBomb = true
            }
            else{
                position.isBomb = false
            }
            positions.append(position)
            start += 1
        }
        }
    
    func clear(tiles: Int) {
        positions.removeAll()
        var start = 0
        let randomNum = arc4random_uniform(UInt32(tiles))
        while (start < tiles){
            var position = pos()
            if start == Int(randomNum){
                position.isBomb = true
            }
            else{
                position.isBomb = false
            }
            positions.append(position)
            start += 1
        
    }
}
    
}
