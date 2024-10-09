import XCTest

final class FirstUniqueCharacterInAStringTests: XCTestCase {
    
    let sut = Solution()
    
    func test_firstUniqueCharacterInAString_hasUniques() {
        let input = "leetcode"
        let expectedOutput = 0
        XCTAssertEqual(sut.firstUniqChar(input), expectedOutput)
    }
    
    func test_firstUniqueCharacterInAString_noUniques() {
        let input = "aabb"
        let expectedOutput = -1
        XCTAssertEqual(sut.firstUniqChar(input), expectedOutput)
    }
}
