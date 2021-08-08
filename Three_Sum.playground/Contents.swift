/**
 Problem: Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which           gives the sum of zero.
 
          Note: The solution set must not contain duplicate triplets.
                if nums[i] == nums[i-1],
                which means if there is a triplet [i-1, l, r] == 0,
                you need to skip i, same applies to l, l-1 and r, r+1
 
 Example: Given array S = [-1, 0, 1, 2, -1, -4]
          Solution:
            [
                [-1, 0, 1],
                [-1, -1, 2]
            ]
*/

func threeSum(numbers: [Int]) -> [[Int]]? {
    
    var numberSet = [[Int]]()
    
    if numbers.count < 3 {
        return nil // Not enough number for 3 sum
    }
    
    let sortedNumbers = numbers.sorted() // Sort the number array
    
    for i in 0...sortedNumbers.count - 1 {
        
        if (i > 0) && (sortedNumbers[i] == sortedNumbers[i - 1]) {
            continue // Skip the duplicate triples
        }
        
        var left = i + 1 // Second integer index
        var right = sortedNumbers.count - 1 // Last integer index of sorted array
        let first = sortedNumbers[i] // Current integer at the current index of sorted array
        
        while right > left { // Finished check each integer in the sorted array
            let second = sortedNumbers[left] // Integer from the left
            let third = sortedNumbers[right] // Integer from the right
            let sum = first + second + third // Current integer + Integer from the left + Integer from the right
            
            if sum < 0 {
                left += 1 // Increase the index by 1 from left to right
                
            } else if sum > 0 {
                right -= 1 // Decrease the index by 1 from right to left
                
            } else {
                if (left - 1 > i) && (sortedNumbers[left] == sortedNumbers[left - 1]) {
                    left += 1 // Increase the index by 1 from left to right if find duplicate triplets
                    
                } else {
                    numberSet.append([first, second, third]) // Add the number set
                    left += 1 // Increase the index by 1 from left to right
                }
            }
        }
    }
    
    return numberSet.count > 0 ? numberSet : nil
}

// TEST //

let test1 = [-1, 0, 1, 2, -1, -4]
let test2 = [1, -1]
let test3 = [1, 0, -1, 1, 0, -1]
let test4 = [1, 1, 1, 1]

print(threeSum(numbers: test1) ?? "No three sum!")
print(threeSum(numbers: test2) ?? "No three sum!")
print(threeSum(numbers: test3) ?? "No three sum!")
print(threeSum(numbers: test4) ?? "No three sum!")
