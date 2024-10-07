import XCTest

final class FindNumbersWithEvenNumberOfDigitsTests: XCTestCase {
    
    let sut = Solution()
    
    func test_findNumbersWithEvenNumberOfDigits() {
        let input = [12,345,2,6,7896]
        let expectedOutput = 2
        XCTAssertEqual(sut.findNumbers(input), expectedOutput)
    }
    
    func test_findNumbersWithEvenNumberOfDigits_empty() {
        let input: [Int] = []
        let expectedOutput = 0
        XCTAssertEqual(sut.findNumbers(input), expectedOutput)
    }
}
