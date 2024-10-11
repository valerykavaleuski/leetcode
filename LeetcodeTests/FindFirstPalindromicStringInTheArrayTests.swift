import XCTest

final class FindFirstPalindromicStringInTheArrayTests: XCTestCase {
    
    let sut = Solution()
    
    func test_findFirstPalindromicStringInTheArray_containsPalindrome() {
        let input = ["abc","car","ada","racecar","cool"]
        let expectedOutput = "ada"
        XCTAssertEqual(sut.firstPalindrome(input), expectedOutput)
    }
    
    func test_findFirstPalindromicStringInTheArray_containsPalindromes() {
        let input = ["racecar","car","ada","gf","cool"]
        let expectedOutput = "racecar"
        XCTAssertEqual(sut.firstPalindrome(input), expectedOutput)
    }
    
    func test_findFirstPalindromicStringInTheArray_inputOfOneElement_noPalindrome() {
        let input = ["af"]
        let expectedOutput = ""
        XCTAssertEqual(sut.firstPalindrome(input), expectedOutput)
    }
    
    func test_findFirstPalindromicStringInTheArray_inputOfOneElement_hasPalindrome() {
        let input = ["ada"]
        let expectedOutput = "ada"
        XCTAssertEqual(sut.firstPalindrome(input), expectedOutput)
    }
}
