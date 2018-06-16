

/*
 Two Sum
 
 Given an array of integers, find two numbers such that they add up to a specific target number.
 
 The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are zero-based.
 
 numbers=[2, 7, 11, 15], target=9
 
 return [0, 1]
 
 */


let numbers = [2,7,11,15]
let targ = 9

func twoSum(_ nums: [Int], _ target: Int) -> (Int, Int)? {
    var dict = [Int: Int]()
    
    for (index, element) in nums.enumerated() {
        let complement = target - element
        print(complement)
        // Check if the complement is in the dictionary.
        if let complementIndex = dict[complement] {
            return (complementIndex, index)
        }
        
        // Store n and its index into the dictionary.
        dict[element] = index
    }
    
    return nil
}



print(twoSum(numbers, targ) ?? "No Sum")



// Other ways

//1.  Find first two sum and return boolean

func findTwoSum(_ inputArray: [Int], _ inputResult: Int) -> Bool {
    
    var tempDict = [Int:Int]()
    
    var index = 0
    
    for item in inputArray {
        let difference = inputResult - item
        
        if tempDict[difference] != nil {
            return true
        }
        
        tempDict[item] = index
        index += 1
    }
    
    return false
}

// TEST
if findTwoSum(numbers,targ) {
    print("Found it")
}
else {
    print("Not find")
}




//2.  Find first two sum and retunr index

func findTwoSum(_ inputArray: [Int], _ inputResult: Int) -> (Int, Int)? {
    
    var tempDict = [Int:Int]()
    var index = 0
    
    for item in inputArray {
        let difference = inputResult - item
        
        if let dictIndex = tempDict[difference] {
            return (dictIndex, index)
        }
        
        tempDict[item] = index
        index += 1
    }
    
    return nil
}

//TEST
print(findTwoSum(numbers,targ) ?? "Not found")
