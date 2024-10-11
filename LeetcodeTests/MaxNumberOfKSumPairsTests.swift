import XCTest

final class MaxNumberOfKSumPairsTests: XCTestCase {
    
    let sut = Solution()
    
    func test_maxNumberOfKSumPairs_twoPairs() {
        let inputNums: [Int] = [1,2,3,4]
        let inputK: Int = 5
        let expectedOutput: Int = 2
        XCTAssertEqual(sut.maxOperations(inputNums, inputK), expectedOutput)
    }
    
    func test_maxNumberOfKSumPairs_onePair() {
        let inputNums: [Int] = [3,1,3,4,3]
        let inputK: Int = 6
        let expectedOutput: Int = 1
        XCTAssertEqual(sut.maxOperations(inputNums, inputK), expectedOutput)
    }
    
    func test_maxNumberOfKSumPairs_oneElementNums() {
        let inputNums: [Int] = [1]
        let inputK: Int = 1
        let expectedOutput: Int = 0
        XCTAssertEqual(sut.maxOperations(inputNums, inputK), expectedOutput)
    }
    
    func test_maxNumberOfKSumPairs_kShouldBeGreater() {
        let inputNums: [Int] = [0,0]
        let inputK: Int = 0
        let expectedOutput: Int = 0
        XCTAssertEqual(sut.maxOperations(inputNums, inputK), expectedOutput)
    }
}
