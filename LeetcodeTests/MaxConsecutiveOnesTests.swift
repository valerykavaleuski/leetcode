import XCTest

final class MaxConsecutiveOnesTests: XCTestCase {
    
    let sut = Solution()
    
    func test_maxConsecutiveOnes1() {
        let input = [1,1,0,1,1,1]
        let expectedResult = 3
        XCTAssertEqual(sut.findMaxConsecutiveOnes(input), expectedResult)
    }
    
    func test_maxConsecutiveOnes2() {
        let input = [1,0,1,1,0,1]
        let expectedResult = 2
        XCTAssertEqual(sut.findMaxConsecutiveOnes(input), expectedResult)
    }
}
