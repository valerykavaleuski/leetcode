import XCTest

final class CheckIfTheSentenceIsPangramTests: XCTestCase {
    
    let sut = Solution()
    
    func test_checkIfTheSentenceIsPangram_true() {
        let input = "thequickbrownfoxjumpsoverthelazydog"
        let expectedOutput = true
        XCTAssertEqual(sut.checkIfPangram(input), expectedOutput)
    }
    
    func test_checkIfTheSentenceIsPangram_false() {
        let input = "leetcode"
        let expectedOutput = false
        XCTAssertEqual(sut.checkIfPangram(input), expectedOutput)
    }
}
