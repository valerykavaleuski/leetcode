import XCTest

final class ContainsDublicateTests: XCTestCase {

    let sut = Solution()
    
    func test_containsDublicate_true() {
        let input: [Int] = [1,2,3,1]
        let expectedOutput = true
        let output = sut.containsDuplicate(input)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_containsDublicate_false() {
        let input: [Int] = [1,2,3,4]
        let expectedOutput = false
        let output = sut.containsDuplicate(input)
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test_containsDublicate_oneElement() {
        let input: [Int] = [1]
        let expectedOutput = false
        let output = sut.containsDuplicate(input)
        XCTAssertEqual(output, expectedOutput)
    }
}
