import XCTest

final class FindPivotIndexTests: XCTestCase {
    
    let sut = Solution()
    
    func test_findPivotIndex_firstItemIndex() {
        let input: [Int] = [2,1,-1]
        let expectedOutput: Int = 0
        XCTAssertEqual(sut.pivotIndex(input), expectedOutput)
    }
    
    func test_findPivotIndex_lastItemIndex() {
        let input: [Int] = [-1,-1,0,1,1,0]
        let expectedOutput: Int = 5
        XCTAssertEqual(sut.pivotIndex(input), expectedOutput)
    }
    
    func test_findPivotIndex_emptyArray() {
        let input: [Int] = []
        let expectedOutput: Int = -1
        XCTAssertEqual(sut.pivotIndex(input), expectedOutput)
    }
    
    func test_findPivotIndex_oneItemInArray() {
        let input: [Int] = [1]
        let expectedOutput: Int = 0
        XCTAssertEqual(sut.pivotIndex(input), expectedOutput)
    }
    
    func test_findPivotIndex_indexNotFound() {
        let input: [Int] = [1,2]
        let expectedOutput: Int = -1
        XCTAssertEqual(sut.pivotIndex(input), expectedOutput)
    }
    
    func test_findPivotIndex_hasMatches() {
        let input: [Int] = [1,7,3,6,5,6]
        let expectedOutput: Int = 3
        XCTAssertEqual(sut.pivotIndex(input), expectedOutput)
    }
}
