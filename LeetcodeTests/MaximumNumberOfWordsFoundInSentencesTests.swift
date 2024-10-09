import XCTest

final class MaximumNumberOfWordsFoundInSentencesTests: XCTestCase {
    
    let sut = Solution()
    
    func test_maximumNumberOfWordsFoundInSentences() {
        let input = ["alice and bob love leetcode","i think so too","this is great thanks very much"]
        let expectedOutput = 6
        XCTAssertEqual(sut.mostWordsFound(input), expectedOutput)
    }
    
    func test_maximumNumberOfWordsFoundInSentences_empty() {
        let input: [String] = []
        let expectedOutput = 0
        XCTAssertEqual(sut.mostWordsFound(input), expectedOutput)
    }
    
    func test_maximumNumberOfWordsFoundInSentences_emptyWord() {
        let input = [""]
        let expectedOutput = 1
        XCTAssertEqual(sut.mostWordsFound(input), expectedOutput)
    }
    
    func test_maximumNumberOfWordsFoundInSentences_noSentences() {
        let input = ["hello", "leetcode"]
        let expectedOutput = 1
        XCTAssertEqual(sut.mostWordsFound(input), expectedOutput)
    }

}
