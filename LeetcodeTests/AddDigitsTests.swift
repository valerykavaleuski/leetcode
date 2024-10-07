import XCTest

final class AddDigitsTests: XCTestCase {
    
    let sut = Solution()
    
    func test_addDigits() {
        let input = 38
        let expectedOutput = 2
        XCTAssertEqual(sut.addDigits(input), expectedOutput)
    }
    
    func test_addDigits_endWithNine() {
        let input = 19999
        let expectedOutput = 1
        XCTAssertEqual(sut.addDigits(input), expectedOutput)
    }
}
