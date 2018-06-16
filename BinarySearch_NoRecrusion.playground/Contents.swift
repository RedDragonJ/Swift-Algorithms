let numbers = [1, 2, 3, 5, 6, 7, 9, 10, 11, 12, 14]

func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1

    while leftIndex <= rightIndex {
        let midIndex = (leftIndex + rightIndex) / 2
        let midValue = array[midIndex]
        
        if midValue == searchValue {
            return true
        }
        
        if searchValue < midValue {
            rightIndex = midIndex - 1
        }
        
        if searchValue > midValue {
            leftIndex = midIndex + 1
        }
    }
    
    return false
}

print(binarySearch(searchValue: 0, array: numbers))
