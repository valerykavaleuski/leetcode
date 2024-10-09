/*
 
 387. First Unique Character in a String
 
 Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

  
 Example 1:
 Input: s = "leetcode"
 Output: 0
 Explanation:
 The character 'l' at index 0 is the first character that does not occur at any other index.

 Example 2:
 Input: s = "loveleetcode"
 Output: 2
 Example 3:
 Input: s = "aabb"
 Output: -1
  

 Constraints:
 1 <= s.length <= 105
 s consists of only lowercase English letters.
 
 */

extension Solution {
    
    @_optimize(speed)
    func firstUniqChar(_ s: String) -> Int {
        let array = Array(s.utf8)
        var hashMap: [UInt8: Int] = [:]
        var set = Set<(UInt8)>()
        
        for i in 0..<array.count {
            if let value = hashMap[array[i]] {
                hashMap[array[i]] = value + 1
                set.remove(array[i])
            } else {
                hashMap[array[i]] = 1
                set.insert(array[i])
            }
        }
        
        for i in 0..<array.count {
            if set.contains(array[i]) {
                return i
            }
        }
        
        return -1
    }
}
