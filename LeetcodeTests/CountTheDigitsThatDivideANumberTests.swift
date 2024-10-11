import XCTest

final class CountTheDigitsThatDivideANumberTests: XCTestCase {
    
    let sut = Solution()
    
    func test_countTheDigitsThatDivideANumber() {
        let input: Int = 7
        let expectedOutput: Int = 1
        XCTAssertEqual(sut.countDigits(input), expectedOutput)
    }
    
    func test_countTheDigitsThatDivideANumber_divideSameItem() {
        let input: Int = 121
        let expectedOutput: Int = 2
        XCTAssertEqual(sut.countDigits(input), expectedOutput)
    }
    
    func test_countTheDigitsThatDivideANumber_allDivide() {
        let input: Int = 1248
        let expectedOutput: Int = 4
        XCTAssertEqual(sut.countDigits(input), expectedOutput)
    }
}
