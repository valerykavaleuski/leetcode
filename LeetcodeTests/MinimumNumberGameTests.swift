import XCTest

final class MinimumNumberGameTests: XCTestCase {
    
    let sut = Solution()
    
    func test_minimumNumberGame1() {
        let input = [5,4,2,3]
        let expectedOutput = [3,2,5,4]
        XCTAssertEqual(sut.numberGame(input), expectedOutput)
    }
    
    func test_minimumNumberGame2() {
        let input = [2,5]
        let expectedOutput = [5,2]
        XCTAssertEqual(sut.numberGame(input), expectedOutput)
    }
}
