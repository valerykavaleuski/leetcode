/*
 
 921. Minimum Add to Make Parentheses Valid
 
 A parentheses string is valid if and only if:

 - It is the empty string,
 - It can be written as AB (A concatenated with B), where A and B are valid strings, or
 - It can be written as (A), where A is a valid string.
 
 You are given a parentheses string s. In one move, you can insert a parenthesis at any position of the string.

 For example, if s = "()))", you can insert an opening parenthesis to be "(()))" or a closing parenthesis to be "())))".
 Return the minimum number of moves required to make s valid.

  

 Example 1:

 Input: s = "())"
 Output: 1
 Example 2:

 Input: s = "((("
 Output: 3
  

 Constraints:

 1 <= s.length <= 1000
 s[i] is either '(' or ')'.
 
 
 */

extension Solution {
    
    @_optimize(speed)
    func minAddToMakeValid(_ s: String) -> Int {
        // UInt8(40) - "("
        // UInt8(41) - ")"
        
        var result = 0
        var sum = 0
        
        for char in s.utf8 {
            if char == UInt8(40) {
                result += 1
            } else {
                result -= 1
            }
                        
            if result < 0 {
                sum += abs(result)
                result = 0
            }
        }
        
        return sum + result
    }
}
