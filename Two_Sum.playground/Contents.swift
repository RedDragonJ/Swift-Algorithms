
/*
 Problem: Given an array of integers, return indices of the two numbers such that they add up to a specific target. 
 You may assume that each input would have exactly one solution.
 Example:
    Given nums = [2,7,11,15], target = 9,
    Because nums[0] + nums[1] = 2 + 7 = 9, return[0,1]
 
 */

func twoSum(nums: [Int], target: Int) -> (Int, Int)? { // You can return an integer array as well
    
    var differenceDict = [Int:Int]()
    
    for i in 0..<nums.count {
        
        let difference = target - nums[i] // Find the difference Ex: 9 - 2 = 7, 9 - 7 = 2
        
        if let differ = differenceDict[nums[i]] { // Check if the current number exist in the dictionary as a key
            return (differ, i) // If exist then return the first index and current index
        }
        
        differenceDict[difference] = i
    }
    
    return nil
}

/* >>>>>>>>>>> TEST <<<<<<<<<<< */

let test = [2,7,11,15]
let target = 9

print(twoSum(nums: test, target: target) ?? "Not found")
