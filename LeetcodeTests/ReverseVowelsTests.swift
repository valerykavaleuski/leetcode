import XCTest

final class ReverseVowelsTests: XCTestCase {

    let sut = Solution()

    func test_reverseVowels() {
        let input = "IceCreAm"
        let expectedOutput = "AceCreIm"
        XCTAssertEqual(sut.reverseVowels(input), expectedOutput)
    }
    
    func test_reverseVowels2() {
        let input = "leetcode"
        let expectedOutput = "leotcede"
        XCTAssertEqual(sut.reverseVowels(input), expectedOutput)
    }
}
