//
//  World.swift
//  GameOfLife
//
//  Created by Piotr Wilk on 06/02/2022.
//

import Foundation

class World {
    private(set) var cells = [Cell]()
    private let size: Int
    
    init(_ size: Int) {
        self.size = size
        setup()
    }
    
    private func setup() {
        for x in 0..<size {
            for y in 0..<size {
                let randomInt = Int.random(in: 0...5)
                let cell = Cell(x: x, y: y, state: randomInt == 0 ? .alive : .dead)
                cells.append(cell)
            }
        }
    }
    
    func update() {
        let cellsAlive = cells.filter({ $0.state == .alive })
        
        for i in 0..<cells.count {
            var cell = cells[i]
            let neighborsAlive = cellsAlive.filter({ $0.isNeighbor(cell) })
            
            if cell.state == .alive {
                if neighborsAlive.count < 2 || neighborsAlive.count > 3 {
                    cell.state = .dead
                    cells[i] = cell
                }
            } else {
                if neighborsAlive.count == 3 {
                    cell.state = .alive
                    cells[i] = cell
                }
            }
        }
    }
}
