import XCTest

final class CanPlaceFlowersTests: XCTestCase {
    
    let sut = Solution()
    
    func test_canPlaceFlowers_zeroFlowers() {
        let flowerbedInput = [1,0,0,0,1]
        let nInput = 0
        let expectedOutput = true
        XCTAssertEqual(sut.canPlaceFlowers(flowerbedInput, nInput), expectedOutput)
    }
    
    func test_canPlaceFlowers_flowerbedCountZero() {
        let flowerbedInput: [Int] = []
        let nInput = 2
        let expectedOutput = false
        XCTAssertEqual(sut.canPlaceFlowers(flowerbedInput, nInput), expectedOutput)
    }
    
    func test_canPlaceFlowers_flowerbedCountOnePlanted() {
        let flowerbedInput = [1]
        let nInput = 1
        let expectedOutput = false
        XCTAssertEqual(sut.canPlaceFlowers(flowerbedInput, nInput), expectedOutput)
    }
    
    func test_canPlaceFlowers_flowerbedCountOneFree() {
        let flowerbedInput = [0]
        let nInput = 1
        let expectedOutput = true
        XCTAssertEqual(sut.canPlaceFlowers(flowerbedInput, nInput), expectedOutput)
    }
    
    func test_canPlaceFlowers_plantAtFirstIndex() {
        let flowerbedInput = [0,0,0,0,1]
        let nInput = 2
        let expectedOutput = true
        XCTAssertEqual(sut.canPlaceFlowers(flowerbedInput, nInput), expectedOutput)
    }
    
    func test_canPlaceFlowers_plantAtLastIndex() {
        let flowerbedInput = [1,0,0,0,0]
        let nInput = 2
        let expectedOutput = true
        XCTAssertEqual(sut.canPlaceFlowers(flowerbedInput, nInput), expectedOutput)
    }
    
    func test_canPlaceFlowers_allFree() {
        let flowerbedInput = [0,0,0,0,0]
        let nInput = 3
        let expectedOutput = true
        XCTAssertEqual(sut.canPlaceFlowers(flowerbedInput, nInput), expectedOutput)
    }
}
