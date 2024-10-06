import Foundation

extension Solution {
    
    /// 345. Reverse Vowels of a String
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
