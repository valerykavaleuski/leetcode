/*
 
 345. Reverse Vowels of a String
 
 Given a string s, reverse only all the vowels in the string and return it. The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

 Example 1:
 Input: s = "IceCreAm"
 Output: "AceCreIm"

 Explanation:
 The vowels in s are ['I', 'e', 'e', 'A']. On reversing the vowels, s becomes "AceCreIm".

 Example 2:
 Input: s = "leetcode"
 Output: "leotcede"

  
 Constraints:
 1 <= s.length <= 3 * 105
 s consist of printable ASCII characters.
 
 */

extension Solution {
    
    @_optimize(speed)
    func reverseVowels(_ s: String) -> String {
        var chars = s.map { $0 }
        var vowels: [String.Element] = []
        var indicies: [Int] = []

        for i in 0..<chars.count {
            if chars[i].isVowel {
                vowels.append(chars[i])
                indicies.append(i)
            }
        }

        for index in indicies {
            chars[index] = vowels.removeLast()
        }

        return String(chars)
    }
}

private extension String.Element {
    var isVowel: Bool {
        ["a", "e", "i", "o", "u"].contains(self.lowercased())
    }
}
