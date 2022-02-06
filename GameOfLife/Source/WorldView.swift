//
//  WorldView.swift
//  GameOfLife
//
//  Created by Piotr Wilk on 06/02/2022.
//

import UIKit

class WorldView: UIView {
    private var world: World = World(0)
    private var cellSize: Int = 10
    private let cellsCount = 50
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        self.world = World(cellsCount)
        
        let worldWidth = UIScreen.main.bounds.width
        cellSize = Int((worldWidth / CGFloat(cellsCount)).rounded(.up))
        
        let frame = CGRect(x: 0, y: 0, width: cellSize, height: cellSize)
        self.frame = frame
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.saveGState()
        
        for cell in world.cells {
            let rect = CGRect(x: cell.x * cellSize, y: cell.y * cellSize, width: cellSize, height: cellSize)
            let color = cell.state == .alive ? UIColor.green.cgColor : UIColor.orange.cgColor
            context?.addRect(rect)
            context?.setFillColor(color)
            context?.fill(rect)
        }
        
        context?.restoreGState()
    }
    
    func update() {
        world.update()
        setNeedsDisplay()
    }
}
