import XCTest

final class DifferenceBetweenElementSumAndDigitSumOfAnArrayTests: XCTestCase {
    
    let sut = Solution()
    
    func test_differenceBetweenElementSumAndDigitSumOfAnArray() {
        let input = [1,15,6,3]
        let expectedOutput = 9
        XCTAssertEqual(sut.differenceOfSum(input), expectedOutput)
    }
    
    func test_differenceBetweenElementSumAndDigitSumOfAnArray_empty() {
        let input: [Int] = []
        let expectedOutput = 0
        XCTAssertEqual(sut.differenceOfSum(input), expectedOutput)
    }
    
    func test_differenceBetweenElementSumAndDigitSumOfAnArray_singleItem() {
        let input = [15]
        let expectedOutput = 9
        XCTAssertEqual(sut.differenceOfSum(input), expectedOutput)
    }
}
