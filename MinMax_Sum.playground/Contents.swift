

let testArr = [396285104,573261094,759641832,819230764,364801279]

func minMaxSum(arr: [Int]) -> Void {
    
    var minSum: Int = 0
    var maxSum: Int = 0
    var numberArr = arr
    
    // Sort the array first
    numberArr.sort {
        return $0 < $1
    }
    
    for index in 0..<numberArr.count {
        
        if index < numberArr.count - 1 {
            minSum += numberArr[index]
        }
        
        if index > 0 {
            maxSum += numberArr[index]
        }
    }
    
    print(minSum, maxSum)
}

minMaxSum(arr: testArr)
