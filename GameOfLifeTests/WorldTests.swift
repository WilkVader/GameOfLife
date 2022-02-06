//
//  WorldTests.swift
//  GameOfLifeTests
//
//  Created by Piotr Wilk on 06/02/2022.
//

import XCTest
@testable import GameOfLife

class WorldTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWorldSize() throws {
        let world2 = World(2)
        XCTAssertEqual(4, world2.cells.count)
        
        let world4 = World(4)
        XCTAssertEqual(16, world4.cells.count)
        
        let world10 = World(10)
        XCTAssertEqual(100, world10.cells.count)
    }
}
