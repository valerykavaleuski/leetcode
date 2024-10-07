/*
 
 1657. Determine if Two Strings Are Close
 
 Two strings are considered close if you can attain one from the other using the following operations:

 Operation 1: Swap any two existing characters.
 For example, abcde -> aecdb
 
 Operation 2: Transform every occurrence of one existing character into another existing character, and do the same with the other character.
 For example, aacabb -> bbcbaa (all a's turn into b's, and all b's turn into a's)
 You can use the operations on either string as many times as necessary.

 Given two strings, word1 and word2, return true if word1 and word2 are close, and false otherwise.

  

 Example 1:

 Input: word1 = "abc", word2 = "bca"
 Output: true
 Explanation: You can attain word2 from word1 in 2 operations.
 Apply Operation 1: "abc" -> "acb"
 Apply Operation 1: "acb" -> "bca"
 Example 2:

 Input: word1 = "a", word2 = "aa"
 Output: false
 Explanation: It is impossible to attain word2 from word1, or vice versa, in any number of operations.
 Example 3:

 Input: word1 = "cabbba", word2 = "abbccc"
 Output: true
 Explanation: You can attain word2 from word1 in 3 operations.
 Apply Operation 1: "cabbba" -> "caabbb"
 Apply Operation 2: "caabbb" -> "baaccc"
 Apply Operation 2: "baaccc" -> "abbccc"
  

 Constraints:

 1 <= word1.length, word2.length <= 105
 word1 and word2 contain only lowercase English letters.
 
 */

extension Solution {
    
    @_optimize(speed)
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        var hashMap1: [Character: Int] = [:]
        var hashMap2: [Character: Int] = [:]
        
        word1.forEach { letter in
            if let value = hashMap1[letter] {
//                hashMap1[letter, default: 0]
                hashMap1[letter] = value + 1
            } else {
                hashMap1[letter] = 1
            }
        }
        
        word2.forEach { letter in
            if let value = hashMap2[letter] {
                hashMap2[letter] = value + 1
            } else {
                hashMap2[letter] = 1
            }
        }
        
        let keysAreEqual = Set(hashMap1.keys) == Set(hashMap2.keys)
        let occurencesAreEqual = hashMap1.values.sorted(by: <) == hashMap2.values.sorted(by: <)
        return keysAreEqual && occurencesAreEqual
    }
}
