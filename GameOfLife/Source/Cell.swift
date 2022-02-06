//
//  Cell.swift
//  GameOfLife
//
//  Created by Piotr Wilk on 06/02/2022.
//

import Foundation

enum State {
    case alive
    case dead
}

struct Cell {
    let x: Int
    let y: Int
    var state: State
    
    func isNeighbor(_ cell: Cell) -> Bool {
        let deltaX = abs(x - cell.x)
        let deltaY = abs(y - cell.y)
        
        switch (deltaX, deltaY) {
        case (1, 1), (0, 1), (1, 0):
            return true
        default:
            return false
        }
    }
}
