import XCTest

final class MaximumWidthRampTests: XCTestCase {
    
    let sut = Solution()
    
    func test_maximumWidthRamp() {
        let input = [6,0,8,2,1,5]
        let expectedOutput = 4
        XCTAssertEqual(sut.maxWidthRamp(input), expectedOutput)
    }
    
    func test_maximumWidthRamp2() {
        let input = [9,8,1,0,1,9,4,0,4,1]
        let expectedOutput = 7
        XCTAssertEqual(sut.maxWidthRamp(input), expectedOutput)
    }
    
    func test_maximumWidthRamp_zeroMatches() {
        let input = [1,0]
        let expectedOutput = 0
        XCTAssertEqual(sut.maxWidthRamp(input), expectedOutput)
    }
    
    func test_maximumWidthRamp_shortestRampOneMatch() {
        let input = [0,1]
        let expectedOutput = 1
        XCTAssertEqual(sut.maxWidthRamp(input), expectedOutput)
    }
    
    func test_maximumWidthRamp_matchFromBeginning() {
        let input = [2,2,1]
        let expectedOutput = 1
        XCTAssertEqual(sut.maxWidthRamp(input), expectedOutput)
    }
    
    func test_maximumWidthRamp_matchInTheMiddle() {
        let input = [9,9,3,5,4,0,2,0,4,1]
        let expectedOutput = 6
        XCTAssertEqual(sut.maxWidthRamp(input), expectedOutput)
    }
}
