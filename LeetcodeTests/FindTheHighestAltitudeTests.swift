import XCTest

final class FindTheHighestAltitudeTests: XCTestCase {
    
    let sut = Solution()
    
    func test_findTheHighestAltitude_zeroItems() {
        let input: [Int] = []
        let expectedOutput = 0
        XCTAssertEqual(sut.largestAltitude(input), expectedOutput)
    }
    
    func test_findTheHighestAltitude_oneItem() {
        let input: [Int] = [5]
        let expectedOutput = 5
        XCTAssertEqual(sut.largestAltitude(input), expectedOutput)
    }
    
    func test_findTheHighestAltitude_firstIsTheHighest() {
        let input: [Int] = [52,-91,72]
        let expectedOutput = 52
        XCTAssertEqual(sut.largestAltitude(input), expectedOutput)
    }
    
    func test_findTheHighestAltitude() {
        let input: [Int] = [-5,1,5,0,-7]
        let expectedOutput = 1
        XCTAssertEqual(sut.largestAltitude(input), expectedOutput)
    }
    
    func test_findTheHighestAltitude_negativeAltitude() {
        let input: [Int] = [-4,-3,-2,-1,4,3,2]
        let expectedOutput = 0
        XCTAssertEqual(sut.largestAltitude(input), expectedOutput)
    }
}
