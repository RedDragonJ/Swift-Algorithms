let arrayOne = [1,2,3,4,5,6]
let arrayTwo = [1,2,3,4,5,6,7,8,9]

func findDifference(arr1: [Int], arr2: [Int]) -> [Int]? {
    var shortArrSet = Set<Int>()
    var largeArr = [Int]()
    var diffArr = [Int]()
    
    // Compare the two array differences and put shortest in set
    if arr1.count < arr2.count {
        for item in arr1 {
            shortArrSet.insert(item)
        }
        largeArr = arr2
    }
    else if arr2.count < arr1.count {
        for item in arr2 {
            shortArrSet.insert(item)
        }
        largeArr = arr1
    }
    else {
        return nil
    }
    
    // Loop through longest array and check if set contains the value then append to a new array
    for value in largeArr {
        if shortArrSet.contains(value) == false {
            diffArr.append(value)
        }
    }
    return diffArr
}

print(findDifference(arr1: arrayOne, arr2: arrayTwo) ?? "No extra")

