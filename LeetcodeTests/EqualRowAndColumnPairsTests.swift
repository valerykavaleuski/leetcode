import XCTest

final class EqualRowAndColumnPairsTests: XCTestCase {
    
    let sut = Solution()
    
    func test_equalRowAndColumnPairs_allEqual() {
        let input = [[13,13],[13,13]]
        let expectedOutput = 4
        XCTAssertEqual(sut.equalPairs(input), expectedOutput)
    }
    
    func test_equalRowAndColumnPairs_checkWithSameDigits() {
        let input = [[11,1],[1,11]]
        let expectedOutput = 2
        XCTAssertEqual(sut.equalPairs(input), expectedOutput)
    }
    
    func test_equalRowAndColumnPairs1() {
        let input = [[3,2,1],[1,7,6],[2,7,7]]
        let expectedOutput = 1
        XCTAssertEqual(sut.equalPairs(input), expectedOutput)
    }
    
    func test_equalRowAndColumnPairs2() {
        let input = [[3,1,2,2],[1,4,4,5],[2,4,2,2],[2,4,2,2]]
        let expectedOutput = 3
        XCTAssertEqual(sut.equalPairs(input), expectedOutput)
    }
}
