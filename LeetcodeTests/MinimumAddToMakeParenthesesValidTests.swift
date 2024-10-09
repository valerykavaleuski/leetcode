import XCTest

final class MinimumAddToMakeParenthesesValidTests: XCTestCase {
    
    let sut = Solution()
    
    func test_mininunAddToMakeParenthesesValid_empty() {
        let input = ""
        let expectedOutput = 0
        XCTAssertEqual(sut.minAddToMakeValid(input), expectedOutput)
    }
    
    func test_mininunAddToMakeParenthesesValid_nothingToAdd() {
        let input = "()"
        let expectedOutput = 0
        XCTAssertEqual(sut.minAddToMakeValid(input), expectedOutput)
    }
    
    func test_mininunAddToMakeParenthesesValid_addToTheLeft() {
        let input = "())"
        let expectedOutput = 1
        XCTAssertEqual(sut.minAddToMakeValid(input), expectedOutput)
    }
    
    func test_mininunAddToMakeParenthesesValid_addToTheRight() {
        let input = "((("
        let expectedOutput = 3
        XCTAssertEqual(sut.minAddToMakeValid(input), expectedOutput)
    }
    
    func test_mininunAddToMakeParenthesesValid_addToBoth() {
        let input = "()))(("
        let expectedOutput = 4
        XCTAssertEqual(sut.minAddToMakeValid(input), expectedOutput)
    }
}
