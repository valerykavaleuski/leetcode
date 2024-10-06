import XCTest

final class ProductExceptSelfTests: XCTestCase {
    
    let sut = Solution()
    
    func test_productExceptSelf() {
        let input = [1,2,3,4]
        let output = [24,12,8,6]
        XCTAssertEqual(sut.productExceptSelf(input), output)
    }
    
    func test_productExceptSelf2() {
        let input = [-1,1,0,-3,3]
        let output = [0,0,9,0,0]
        XCTAssertEqual(sut.productExceptSelf(input), output)
    }
}
