import XCTest

final class DetermineIfTwoStringsAreCloseTests: XCTestCase {
    
    let sut = Solution()
    
    func test_closeStrings1() {
        let input1 = "abc"
        let input2 = "bca"
        let expectedOutput = true
        XCTAssertEqual(sut.closeStrings(input1, input2), expectedOutput)
    }
    
    func test_closeStrings2() {
        let input1 = "abc"
        let input2 = "bca"
        let expectedOutput = true
        XCTAssertEqual(sut.closeStrings(input1, input2), expectedOutput)
    }
    
    func test_closeStrings_notEqualLength() {
        let input1 = "aa"
        let input2 = "a"
        let expectedOutput = false
        XCTAssertEqual(sut.closeStrings(input1, input2), expectedOutput)
    }

    func test_closeStrings_notEqualOccurences() {
        let input1 = "uau"
        let input2 = "ssx"
        let expectedOutput = false
        XCTAssertEqual(sut.closeStrings(input1, input2), expectedOutput)
    }
}
