import XCTest

final class MergeStringsAlternatelyTests: XCTestCase {
    
    let sut = Solution()
    
    func test_mergeStringsAlternately1() {
        let inputWord1 = "abc"
        let inputWord2 = "pqr"
        let expectedOutput = "apbqcr"
        XCTAssertEqual(sut.mergeAlternately(inputWord1, inputWord2), expectedOutput)
    }
    
    func test_mergeStringsAlternately_firstSmallerThanSecond() {
        let inputWord1 = "ab"
        let inputWord2 = "pqrs"
        let expectedOutput = "apbqrs"
        XCTAssertEqual(sut.mergeAlternately(inputWord1, inputWord2), expectedOutput)
    }
    
    func test_mergeStringsAlternately_firstGreaterThanSecond() {
        let inputWord1 = "abcd"
        let inputWord2 = "pq"
        let expectedOutput = "apbqcd"
        XCTAssertEqual(sut.mergeAlternately(inputWord1, inputWord2), expectedOutput)
    }
}
