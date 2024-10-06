import XCTest

final class StringCompressionTests: XCTestCase {
    
    let sut = Solution()
    
    func test_stringCompression1() {
        var input: [Character] = ["a","a","b","b","c","c","c"]
        let modifiedInput: [Character] = ["a", "2", "b", "2", "c", "3"]
        let expectedOutput = 6
        XCTAssertEqual(sut.compress(&input), expectedOutput)
        XCTAssertEqual(input, modifiedInput)
    }
    
    func test_stringCompression2() {
        var input: [Character] = ["a"]
        let modifiedInput: [Character] = ["a"]
        let expectedOutput = 1
        XCTAssertEqual(sut.compress(&input), expectedOutput)
        XCTAssertEqual(input, modifiedInput)
    }

    
    func test_stringCompression3() {
        var input: [Character] = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
        let modifiedInput: [Character] = ["a", "b", "1", "2"]
        let expectedOutput = 4
        XCTAssertEqual(sut.compress(&input), expectedOutput)
        XCTAssertEqual(input, modifiedInput)
    }
}
