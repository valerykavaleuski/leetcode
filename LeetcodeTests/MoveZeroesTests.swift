//
//  MoveZeroesTests.swift
//  LeetcodeTests
//
//  Created by Valery Kavaleuski on 8.10.24.
//

import XCTest

final class MoveZeroesTests: XCTestCase {
    
    let sut = Solution()
    
    func test_moveZeroes_empty() {
        var input: [Int] = []
        let modifiedInput: [Int] = []
        sut.moveZeroes(&input)
        XCTAssertEqual(input, modifiedInput)
    }
    
    func test_moveZeroes_oneElement() {
        var input: [Int] = [0]
        let modifiedInput = [0]
        sut.moveZeroes(&input)
        XCTAssertEqual(input, modifiedInput)
    }
    
    func test_moveZeroes1() {
        var input: [Int] = [0,1,0,3,12]
        let modifiedInput = [1,3,12,0,0]
        sut.moveZeroes(&input)
        XCTAssertEqual(input, modifiedInput)
    }
}
