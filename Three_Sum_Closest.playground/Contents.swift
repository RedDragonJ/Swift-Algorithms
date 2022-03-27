/*
 Problem: Given an array S of n integers, find three integers in S such that the sum is closest to a given number, target. Return the sum of         the three integers. You may assume that each input would have exactly one solution.
 Example:
    Given array S = [-1, 2, 1, -4], target = 1,
    The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
 
 */

func threeSumClosest(numbers: [Int], target: Int) -> Int {
    
    var minimalDist = Int.max
    var res = 0
    
    var nums = numbers
    nums.sort()
    
    for (index, _) in nums.dropLast(1).enumerated() {
        
        var i = index
        var l = index + 1
        var r = nums.count - 1
        
        while (l < r) {
            
            let sum = nums[i] + nums[l] + nums[r]
            
            if sum == target {
                return target
                
            } else if sum > target {
                
                if (sum - target) < minimalDist {
                    minimalDist = sum - target
                    res = sum
                }
                r -= 1
                
            } else {
                
                if (target - sum) < minimalDist {
                    minimalDist = target - sum
                    res = sum
                }
                l += 1
                
            }
        }
        
        while ((i < nums.count - 1) && (nums[i] == nums[i + 1])) {
            i += 1
        }
    }
    return res
}

/* >>>>>>>>>>> TEST <<<<<<<<<<< */
let testArray1 = [-1, 2, 1, -4]
let testArray2 = [-1, 2, 0, -4]
let testArray3 = [-2, 2, 3, 2]

let targetInt = 1

print(threeSumClosest(numbers: testArray1, target: targetInt)) // -1 + 2 + 1 = 2
print(threeSumClosest(numbers: testArray2, target: targetInt)) // -1 + 2 + 0 = 1
print(threeSumClosest(numbers: testArray3, target: targetInt)) // -2 + 2 + 2 = 2
