/*
 
 962. Maximum Width Ramp

 A ramp in an integer array nums is a pair (i, j) for which i < j and nums[i] <= nums[j]. The width of such a ramp is j - i. Given an integer array nums, return the maximum width of a ramp in nums. If there is no ramp in nums, return 0.


 Example 1:
 Input: nums = [6,0,8,2,1,5]
 Output: 4
 Explanation: The maximum width ramp is achieved at (i, j) = (1, 5): nums[1] = 0 and nums[5] = 5.
 
 Example 2:
 Input: nums = [9,8,1,0,1,9,4,0,4,1]
 Output: 7
 Explanation: The maximum width ramp is achieved at (i, j) = (2, 9): nums[2] = 1 and nums[9] = 1.
  

 Constraints:
 2 <= nums.length <= 5 * 104
 0 <= nums[i] <= 5 * 104
 
 */

extension Solution {
    
    @_optimize(speed)
    func maxWidthRamp(_ nums: [Int]) -> Int {
        let n = nums.count
        var stack: [Int] = []
        var ans = 0

        // First pass: Push indices of potential left boundaries into the stack
        // We only push indices where the value is smaller than the previous stack top
        for i in 0..<n {
            if stack.isEmpty || nums[stack.last!] > nums[i] {
                stack.append(i)
            }
        }
                
        // Second pass: Iterate from right to left to find the maximum width ramp
        for i in (0..<n).reversed() {
            // While the stack is not empty and the current element is greater than or equal to the stack top
            while !stack.isEmpty && nums[stack.last!] <= nums[i] {
                // Calculate the width of the ramp and update the maximum
                ans = max(ans, i - stack.last!)
                // Remove the top element as we've found a valid ramp for it
                stack.removeLast()
            }
        }
        
        // Return the maximum width ramp found
        return ans
    }
}
