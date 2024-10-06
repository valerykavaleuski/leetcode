import XCTest

final class ReverseVowelsTests: XCTestCase {

    let sut = Solution()

    func test_reverseVowels() {
        let input = "IceCreAm"
        let output = "AceCreIm"
        XCTAssertEqual(sut.reverseVowels(input), output)
    }
    
    func test_reverseVowels2() {
        let input = "leetcode"
        let output = "leotcede"
        XCTAssertEqual(sut.reverseVowels(input), output)
    }
}
