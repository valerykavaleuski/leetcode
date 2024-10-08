import XCTest

final class ReverseWordsInAStringTests: XCTestCase {
    
    let sut = Solution()
    
    func test_reverseWordsInAString_oneWord() {
        let input = "leetcode"
        let expectedOutput = "leetcode"
        XCTAssertEqual(sut.reverseWords(input), expectedOutput)
    }
    
    func test_reverseWordsInAString_severalWords() {
        let input = "leetcode is fancy"
        let expectedOutput = "fancy is leetcode"
        XCTAssertEqual(sut.reverseWords(input), expectedOutput)
    }

    func test_reverseWordsInAString_severalWords2() {
        let input = "the sky is blue"
        let expectedOutput = "blue is sky the"
        XCTAssertEqual(sut.reverseWords(input), expectedOutput)
    }
    
    func test_reverseWordsInAString_multipleSpaces() {
        let input = "the     sky  is            blue"
        let expectedOutput = "blue is sky the"
        XCTAssertEqual(sut.reverseWords(input), expectedOutput)
    }
    
    func test_reverseWordsInAString_leadingSpace() {
        let input = "            the sky is blue"
        let expectedOutput = "blue is sky the"
        XCTAssertEqual(sut.reverseWords(input), expectedOutput)
    }
    
    func test_reverseWordsInAString_trailingSpace() {
        let input = "the sky is blue   "
        let expectedOutput = "blue is sky the"
        XCTAssertEqual(sut.reverseWords(input), expectedOutput)
    }
}

