/*
 
 443. String Compression
 
 Given an array of characters chars, compress it using the following algorithm:
 Begin with an empty string s. For each group of consecutive repeating characters in chars:

 If the group's length is 1, append the character to s.
 Otherwise, append the character followed by the group's length. The compressed string s should not be returned separately, but instead, be stored in the input character array chars. Note that group lengths that are 10 or longer will be split into multiple characters in chars.

 After you are done modifying the input array, return the new length of the array.

 You must write an algorithm that uses only constant extra space.
 
 */

extension Solution {
    
    @_optimize(speed)
    func compress(_ chars: inout [Character]) -> Int {
        var count = 0
        var s = ""
        
        func appendCountToChars() {
            if count > 1 {
                if count < 10 {
                    s.append(count.description)
                } else {
                    count.description.forEach { number in
                        s.append(number)
                    }
                }
            }
        }
        
        chars.forEach { char in
            guard char != s.last else {
                count += 1
                return
            }
            
            appendCountToChars()
            s.append(char)
            count = 1
        }

        appendCountToChars()
        chars = Array(s)
        return s.count
    }
}
