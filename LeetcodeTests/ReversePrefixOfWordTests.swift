import XCTest

final class ReversePrefixOfWordTests: XCTestCase {
    
    let sut = Solution()
    
    func test_reversePrefixOfWord() {
        let inputWord = "abcdefd"
        let inputChar: Character = "d"
        let expectedOutput = "dcbaefd"
        XCTAssertEqual(sut.reversePrefix(inputWord, inputChar), expectedOutput)
    }
    
    func test_reversePrefixOfWord2() {
        let inputWord = "xyxzxe"
        let inputChar: Character = "z"
        let expectedOutput = "zxyxxe"
        XCTAssertEqual(sut.reversePrefix(inputWord, inputChar), expectedOutput)
    }
    
    func test_reversePrefixOfWord_charNotFound() {
        let inputWord = "abcd"
        let inputChar: Character = "z"
        let expectedOutput = "abcd"
        XCTAssertEqual(sut.reversePrefix(inputWord, inputChar), expectedOutput)
    }
    
    func test_reversePrefixOfWord_emptyWord() {
        let inputWord = ""
        let inputChar: Character = "z"
        let expectedOutput = ""
        XCTAssertEqual(sut.reversePrefix(inputWord, inputChar), expectedOutput)
    }
    
    func test_reversePrefixOfWord_wordMatchingChar() {
        let inputWord = "z"
        let inputChar: Character = "z"
        let expectedOutput = "z"
        XCTAssertEqual(sut.reversePrefix(inputWord, inputChar), expectedOutput)
    }
}
