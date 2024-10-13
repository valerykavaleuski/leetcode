/*
 
 724. Find Pivot Index
 
 Given an array of integers nums, calculate the pivot index of this array. The pivot index is the index where the sum of all the numbers strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right. If the index is on the left edge of the array, then the left sum is 0 because there are no elements to the left. This also applies to the right edge of the array. Return the leftmost pivot index. If no such index exists, return -1.
  

 Example 1:
 Input: nums = [1,7,3,6,5,6]
 Output: 3
 Explanation:
 The pivot index is 3.
 Left sum = nums[0] + nums[1] + nums[2] = 1 + 7 + 3 = 11
 Right sum = nums[4] + nums[5] = 5 + 6 = 11
 
 Example 2:
 Input: nums = [1,2,3]
 Output: -1
 Explanation:
 There is no index that satisfies the conditions in the problem statement.
 
 Example 3:
 Input: nums = [2,1,-1]
 Output: 0
 Explanation:
 The pivot index is 0.
 Left sum = 0 (no elements to the left of index 0)
 Right sum = nums[1] + nums[2] = 1 + -1 = 0
  

 Constraints:
 1 <= nums.length <= 104
 -1000 <= nums[i] <= 1000
  

 Note: This question is the same as 1991: https://leetcode.com/problems/find-the-middle-index-in-array/
 */

extension Solution {
    
    @_optimize(speed)
    func pivotIndex(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return nums.count == 1 ? 0 : -1
        }
        
        let lowerbound = 0
        let upperbound = nums.count - 1
        var mutable = nums
        
        for index in (lowerbound..<upperbound).reversed() {
            mutable[index] = mutable[index + 1] + mutable[index]
        }
        
        mutable[lowerbound] = nums[lowerbound]
        if mutable[lowerbound + 1] == 0 {
            return lowerbound
        }
              
        for index in (lowerbound + 1)..<upperbound {
            mutable[index] = mutable[index - 1] + nums[index]
            if mutable[index - 1] == mutable[min((index + 1), (nums.count - 1))] {
                return index
            }
            
            if index == upperbound - 1 && mutable[index] == 0 {
                return upperbound
            }
        }
        
        return -1
    }
}
