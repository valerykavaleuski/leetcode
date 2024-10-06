import XCTest

final class PlusOneTests: XCTestCase {
    
    let sut = Solution()
    
    func test_plusOne() {
        let input = [1,2,3]
        let expectedOutput = [1,2,4]
        XCTAssertEqual(sut.plusOne(input), expectedOutput)
    }
    
    func test_plusOne_endWithNine() {
        let input = [9]
        let expectedOutput = [1,0]
        XCTAssertEqual(sut.plusOne(input), expectedOutput)
    }
}
