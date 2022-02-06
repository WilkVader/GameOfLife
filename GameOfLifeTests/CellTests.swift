//
//  CellTests.swift
//  GameOfLifeTests
//
//  Created by Piotr Wilk on 06/02/2022.
//

import XCTest
@testable import GameOfLife

class CellTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCellNeighbor() throws {
        let cell55 = Cell(x: 5, y: 5, state: .dead)
        
        let cell44 = Cell(x: 4, y: 4, state: .dead)
        XCTAssertTrue(cell55.isNeighbor(cell44))
        
        let cell46 = Cell(x: 4, y: 6, state: .dead)
        XCTAssertTrue(cell55.isNeighbor(cell46))
        
        let cell47 = Cell(x: 4, y: 7, state: .dead)
        XCTAssertFalse(cell55.isNeighbor(cell47))
        
        let cell65 = Cell(x: 6, y: 5, state: .dead)
        XCTAssertTrue(cell55.isNeighbor(cell65))
        
        let cell57 = Cell(x: 5, y: 7, state: .dead)
        XCTAssertFalse(cell55.isNeighbor(cell57))
        
        let cell55Copy = Cell(x: 5, y: 5, state: .dead)
        XCTAssertFalse(cell55.isNeighbor(cell55Copy))
    }
}
