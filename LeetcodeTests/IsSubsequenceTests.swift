import XCTest

final class IsSubsequenceTests: XCTestCase {
    
    let sut = Solution()
    
    func test_isSubsequenceEqualStrings() {
        let sInput = "abc"
        let tInput = "abc"
        let expectedOutput = true
        XCTAssertEqual(sut.isSubsequence(sInput, tInput), expectedOutput)
    }
    
    func test_isSubsequence1() {
        let sInput = "abc"
        let tInput = "ahbgdc"
        let expectedOutput = true
        XCTAssertEqual(sut.isSubsequence(sInput, tInput), expectedOutput)
    }
    
    func test_isSubsequence2() {
        let sInput = "b"
        let tInput = "acdtb"
        let expectedOutput = true
        XCTAssertEqual(sut.isSubsequence(sInput, tInput), expectedOutput)
    }
    
    func test_isSubsequence_sLessThanT() {
        let sInput = "b"
        let tInput = "abc"
        let expectedOutput = true
        XCTAssertEqual(sut.isSubsequence(sInput, tInput), expectedOutput)
    }
    
    func test_isSubsequence_sIsEmpty() {
        let sInput = ""
        let tInput = "abc"
        let expectedOutput = true
        XCTAssertEqual(sut.isSubsequence(sInput, tInput), expectedOutput)
    }
    
    func test_isSubsequence_tIsEmpty() {
        let sInput = "abc"
        let tInput = ""
        let expectedOutput = false
        XCTAssertEqual(sut.isSubsequence(sInput, tInput), expectedOutput)
    }
}
