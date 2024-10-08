/*
 
 283. Move Zeroes
 
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements. Note that you must do this in-place without making a copy of the array.
  

 Example 1:
 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 
 Example 2:
 Input: nums = [0]
 Output: [0]
  

 Constraints:
 1 <= nums.length <= 104
 -2^31 <= nums[i] <= 2^31 - 1
 
 */

extension Solution {
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 1 else {
            return
        }
        
        var left = 0

        for right in 0..<nums.count {
            if nums[right] != 0 {
                let temp =  nums[left]
                nums[left] = nums[right]
                nums[right] = temp
                left += 1
            }
        }
    }
}
