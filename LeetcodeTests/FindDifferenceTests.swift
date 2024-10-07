import XCTest

final class FindDifferenceTests: XCTestCase {
    
    let sut = Solution()
    
    func test_findDifference1() {
        let inputNums1 = [1,2,3]
        let inputNums2 = [2,4,6]
        let output = sut.findDifference(inputNums1, inputNums2)
        XCTAssertTrue(output[0].contains(1) && output[0].contains(3))
        XCTAssertTrue(output[1].contains(4) && output[1].contains(6))
    }
    
    func test_findDifference2() {
        let inputNums1 = [1,2,3,3]
        let inputNums2 = [1,1,2,2]
        let output = sut.findDifference(inputNums1, inputNums2)
        XCTAssertTrue(output[0].contains(3))
        XCTAssertTrue(output[1].isEmpty)
    }
}
