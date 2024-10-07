import XCTest

final class UniqueNumberOfOccurencesTests: XCTestCase {
    
    let sut = Solution()
    
    func test_uniqueNumberOfOccurences1() {
        let input = [1,2,2,1,1,3]
        let expectedOutput = true
        XCTAssertEqual(sut.uniqueOccurrences(input), expectedOutput)
    }
    
    func test_uniqueNumberOfOccurences2() {
        let input = [1,2]
        let expectedOutput = false
        XCTAssertEqual(sut.uniqueOccurrences(input), expectedOutput)
    }
    
    func test_uniqueNumberOfOccurences3() {
        let input = [-3,0,1,-3,1,1,1,-3,10,0]
        let expectedOutput = true
        XCTAssertEqual(sut.uniqueOccurrences(input), expectedOutput)
    }
}
