//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Sanjith Krishna on 21/05/21.
//

import XCTest
@testable import Bullseye

class BullseyeTests: XCTestCase {

    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game=nil
    }

    func pos() {
        let guess = game.target+5
        let score = game.points(slider: guess)
        XCTAssertEqual(score, 95)
    }
    
    func neg() {
        let guess = game.target-5
        let score = game.points(slider: guess)
        XCTAssertEqual(score, 95)
    }
}
