/*
 
 605. Can Place Flowers
 
 You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots. Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.
  

 Example 1:
 Input: flowerbed = [1,0,0,0,1], n = 1
 Output: true
 
 Example 2:
 Input: flowerbed = [1,0,0,0,1], n = 2
 Output: false
  

 Constraints:
 1 <= flowerbed.length <= 2 * 104
 flowerbed[i] is 0 or 1.
 There are no two adjacent flowers in flowerbed.
 0 <= n <= flowerbed.length
 
 */

extension Solution {
    
    @_optimize(speed)
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        guard n > 0 else {
            return true
        }
        
        guard flowerbed.count > 1 else {
            return flowerbed.count == 1 && flowerbed[0] == 0 && n == 1
        }
        
        var mutable = flowerbed
        var flowersLeft = n
        
        if mutable[0] == 0 && mutable[1] == 0 {
            mutable[0] = 1
            flowersLeft -= 1
        }
        
        if mutable[mutable.count - 1] == 0 && mutable[mutable.count - 2] == 0 {
            mutable[mutable.count - 1] = 1
            flowersLeft -= 1
        }
        
        guard flowersLeft > 0 else {
            return true
        }
        
        let upperbound = (flowerbed.count - 1) - 2
        var count = 0
        
        while upperbound >= count {
            
            if mutable[count] == 0 && mutable[count + 1] == 0 && mutable[count + 2] == 0 {
                mutable[count + 1] = 1
                count += 2
                flowersLeft -= 1

                if flowersLeft == 0 {
                    return true
                }
            } else {
                count += 1
            }
        }
        
        return false
    }
}
