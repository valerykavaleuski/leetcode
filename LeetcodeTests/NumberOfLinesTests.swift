import XCTest

final class NumberOfLinesTests: XCTestCase {
    
    let sut = Solution()
    
    func test_numberOfLines() {
        let inputWidth = [10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
        let inputString = "abcdefghijklmnopqrstuvwxyz"
        let expectedOutput = [3,60]
        XCTAssertEqual(sut.numberOfLines(inputWidth, inputString), expectedOutput)
    }
    
    func test_numberOfLines2() {
        let inputWidth = [4,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
        let inputString = "bbbcccdddaaa"
        let expectedOutput = [2,4]
        XCTAssertEqual(sut.numberOfLines(inputWidth, inputString), expectedOutput)
    }
}
