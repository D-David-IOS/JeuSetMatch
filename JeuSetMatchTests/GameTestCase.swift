//
//  GameTestCase.swift
//  JeuSetMatchTests
//
//  Created by Debehogne David on 28/05/2021.
//  Copyright © 2021 OpenClassrooms. All rights reserved.
//

import XCTest
@testable import JeuSetMatch

class GameTestCase: XCTestCase {
    var game: Game!

    override  func setUp() {
        super.setUp()
        game = Game()
    }
    
    func testGivenScoreIsNull_WhenIncrementingPlayer1Score_ThenScoreShouldBeFifteen() {


        
        let game = Game()

        // when
        game.incrementScore(forPlayer: .one)

        // Then
        XCTAssert(game.scores[.one] == 15)
        XCTAssert(game.scores[.two] == 0)

        game.incrementScore(forPlayer: .one)

        XCTAssert(game.scores[.one] == 30)
    }
}
