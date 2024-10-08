import XCTest

final class ContainerWithMostWaterTests: XCTestCase {
    
    let sut = Solution()
    
    func test_containerWithMostWater() {
        let input = [1,8,6,2,5,4,8,3,7]
        let expectedOutput = 49
        XCTAssertEqual(sut.maxArea(input), expectedOutput)
    }
    
    func test_containerWithMostWater_emptyArray() {
        let input: [Int] = []
        let expectedOutput = 0
        XCTAssertEqual(sut.maxArea(input), expectedOutput)
    }
    
    func test_containerWithMostWater_singleElementArray() {
        let input: [Int] = [1]
        let expectedOutput = 0
        XCTAssertEqual(sut.maxArea(input), expectedOutput)
    }
    
    func test_containerWithMostWater_twoElements() {
        let input: [Int] = [1,6]
        let expectedOutput = 1
        XCTAssertEqual(sut.maxArea(input), expectedOutput)
    }
}
