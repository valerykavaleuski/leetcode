import XCTest

final class SearchInsertTests: XCTestCase {
    
    let sut = Solution()
    
    func test_searchInsertPosition() {
        let inputNums = [1,3,5,6]
        let inputTarget = 5
        let expectedOutput = 2
        XCTAssertEqual(sut.searchInsert(inputNums, inputTarget), expectedOutput)
    }
    
    func test_searchInsertPosition_notFoundIndex_butLess() {
        let inputNums = [1,3,5,6]
        let inputTarget = 2
        let expectedOutput = 1
        XCTAssertEqual(sut.searchInsert(inputNums, inputTarget), expectedOutput)
    }
    
    func test_searchInsertPosition_notFoundIndex_butGreater() {
        let inputNums = [1,3,5,6]
        let inputTarget = 7
        let expectedOutput = 4
        XCTAssertEqual(sut.searchInsert(inputNums, inputTarget), expectedOutput)
    }
}
