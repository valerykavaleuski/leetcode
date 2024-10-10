import XCTest

final class CountPairsWhoseSumIsLessThanTargetTests: XCTestCase {
    
    let sut = Solution()
    
    func test_countPairsWhoseSumIsLessThanTarget() {
        let inputNums: [Int] = [-6,2,5,-2,-7,-1,3]
        let inputTarget: Int = -2
        let expectedOutput: Int = 10
        XCTAssertEqual(sut.countPairs(inputNums, inputTarget), expectedOutput)
    }
    
    func test_countPairsWhoseSumIsLessThanTarget2() {
        let inputNums: [Int] = [-1,1,2,3,1]
        let inputTarget: Int = 2
        let expectedOutput: Int = 3
        XCTAssertEqual(sut.countPairs(inputNums, inputTarget), expectedOutput)
    }
    
    func test_countPairsWhoseSumIsLessThanTarget_emptyNums() {
        let inputNums: [Int] = []
        let inputTarget: Int = 1
        let expectedOutput: Int = 0
        XCTAssertEqual(sut.countPairs(inputNums, inputTarget), expectedOutput)
    }
    
    func test_countPairsWhoseSumIsLessThanTarget_notEnoughNums() {
        let inputNums: [Int] = [1]
        let inputTarget: Int = 1
        let expectedOutput: Int = 0
        XCTAssertEqual(sut.countPairs(inputNums, inputTarget), expectedOutput)
    }
    
    func test_countPairsWhoseSumIsLessThanTarget_noPairs() {
        let inputNums: [Int] = [1,2]
        let inputTarget: Int = 1
        let expectedOutput: Int = 0
        XCTAssertEqual(sut.countPairs(inputNums, inputTarget), expectedOutput)
    }
    
    func test_countPairsWhoseSumIsLessThanTarget_onePair() {
        let inputNums: [Int] = [1,2]
        let inputTarget: Int = 4
        let expectedOutput: Int = 1
        XCTAssertEqual(sut.countPairs(inputNums, inputTarget), expectedOutput)
    }
}
