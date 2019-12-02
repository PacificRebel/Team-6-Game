//
//  GuessWhoTests.swift
//  JackTheRipperTests
//
//  Created by Student on 02/12/2019.
//  Copyright © 2019 Team6. All rights reserved.
//

import XCTest
@testable import JackTheRipper

class GuessWhoTests: XCTestCase {

    let guesswho = GuessWho()
    
    func testPlayerCanAskAQuestion() {
        let result = guesswho.question(input: "Did he have a beard")
        XCTAssertTrue(result == "The suspect did not have a beard.")
    }
    
    func testResponseToUnknownQuestion() {
        let result = guesswho.question(input: "Did he have a big nose")
        XCTAssertTrue(result == "The witness isn't sure, try asking them a different question.")
    }
    
    func testThatQuestionCanHandlePunctuation() {
        let result = guesswho.question(input: "Did, he have a: BeaRd?!")
        XCTAssertTrue(result == "The suspect did not have a beard.")
    }

}
