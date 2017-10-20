//
//  StringExtensionTests.swift
//  HandOfTheKingTests
//
//  Created by Carl on 20/10/2017.
//  Copyright © 2017 nswebfrog. All rights reserved.
//

import XCTest
import HandOfTheKing

class StringExtensionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSubstringFrom() {
        let originStr = "This is some text."

        XCTAssertEqual(originStr.hand.substring(from: 2), "is is some text.")
        XCTAssertEqual(originStr.hand.substring(from: 5), "is some text.")
        XCTAssertEqual(originStr.hand.substring(from: originStr.count), "")
    }

    func testSubstringTo() {
        let originStr = "This is some text."

        XCTAssertEqual(originStr.hand.substring(to: 2), "Th")
        XCTAssertEqual(originStr.hand.substring(to: 5), "This ")
    }

    func testSubStringWith() {
        let originStr = "This is some text."

        XCTAssertEqual(originStr.hand.substring(with: 0...3), "This")
        XCTAssertEqual(originStr.hand.substring(with: 3...7), "s is ")
        XCTAssertEqual(originStr.hand.substring(with: 1..<8), "his is ")
    }
    
}
