import XCTest

final class FindCommonElementsBetweenTwoArraysTests: XCTestCase {
    
    let sut = Solution()
    
    func test_findCommonElementBetweenTwoArrays() {
        let inputNums1: [Int] = [2,3,2]
        let inputNums2: [Int] = [1,2]
        let expectedOutput: [Int] = [2,1]
        XCTAssertEqual(sut.findIntersectionValues(inputNums1, inputNums2), expectedOutput)
    }
    
    func test_findCommonElementBetweenTwoArrays_moreIntersections() {
        let inputNums1: [Int] = [4,3,2,3,1]
        let inputNums2: [Int] = [2,2,5,2,3,6]
        let expectedOutput: [Int] = [3,4]
        XCTAssertEqual(sut.findIntersectionValues(inputNums1, inputNums2), expectedOutput)
    }
    
    func test_findCommonElementBetweenTwoArrays_noIntersections() {
        let inputNums1: [Int] = [3,4,2,3]
        let inputNums2: [Int] = [1,5]
        let expectedOutput: [Int] = [0,0]
        XCTAssertEqual(sut.findIntersectionValues(inputNums1, inputNums2), expectedOutput)
    }
    
    func test_findCommonElementBetweenTwoArrays_nums1empty() {
        let inputNums1: [Int] = []
        let inputNums2: [Int] = [1,2]
        let expectedOutput: [Int] = [0,0]
        XCTAssertEqual(sut.findIntersectionValues(inputNums1, inputNums2), expectedOutput)
    }
    
    func test_findCommonElementBetweenTwoArrays_nums2empty() {
        let inputNums1: [Int] = [1,2]
        let inputNums2: [Int] = []
        let expectedOutput: [Int] = [0,0]
        XCTAssertEqual(sut.findIntersectionValues(inputNums1, inputNums2), expectedOutput)
    }
}
