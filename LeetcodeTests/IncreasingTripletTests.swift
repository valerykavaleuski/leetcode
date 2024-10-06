import XCTest

final class IncreasingTripletTests: XCTestCase {

    let sut = Solution()
    
    func test_increasingTriplet_ascendingOrder() {
        let input = [1,2,3,4,5]
        let expectedOutput = true
        XCTAssertEqual(sut.increasingTriplet(input), expectedOutput)
    }
    
    func test_increasingTriplet_descendingOrder() {
        let input = [5,4,3,2,1]
        let expectedOutput = false
        XCTAssertEqual(sut.increasingTriplet(input), expectedOutput)
    }
    
    func test_increasingTriplet_notOrdered() {
        let input = [2,1,5,0,4,6]
        let expectedOutput = true
        XCTAssertEqual(sut.increasingTriplet(input), expectedOutput)
    }
    
    func test_increasingTriplet_notOrdered2() {
        let input = [1,5,0,4,1,3]
        let expectedOutput = true
        XCTAssertEqual(sut.increasingTriplet(input), expectedOutput)
    }
    
    func test_increasingTriplet_notOrdered3 () {
        let input = [20,100,10,12,5,13]
        let expectedOutput = true
        XCTAssertEqual(sut.increasingTriplet(input), expectedOutput)
    }
    
    func test_increasingTriplet_notEnoughItems() {
        let input = [0,1]
        let expectedOutput = false
        XCTAssertEqual(sut.increasingTriplet(input), expectedOutput)
    }
}
