/*
 
 485. Max Consecutive Ones
 
 Given a binary array nums, return the maximum number of consecutive 1's in the array.

 Example 1:
 Input: nums = [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.
 
 Example 2:
 Input: nums = [1,0,1,1,0,1]
 Output: 2

 Constraints:
 1 <= nums.length <= 105
 nums[i] is either 0 or 1.
 
 */

extension Solution {
    
    @_optimize(speed)
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var counter = 0
        var maxValue = 0
        
        for num in nums {
            if num == 1 {
                counter += 1
            } else {
                counter = 0
            }
            
            if counter > maxValue {
                maxValue = counter
            }
        }
        
        return maxValue
    }
}
