import XCTest

final class ProductExceptSelfTests: XCTestCase {
    
    let sut = Solution()
    
    func test_productExceptSelf() {
        let input = [1,2,3,4]
        let expectedOutput = [24,12,8,6]
        XCTAssertEqual(sut.productExceptSelf(input), expectedOutput)
    }
    
    func test_productExceptSelf2() {
        let input = [-1,1,0,-3,3]
        let expectedOutput = [0,0,9,0,0]
        XCTAssertEqual(sut.productExceptSelf(input), expectedOutput)
    }
}
