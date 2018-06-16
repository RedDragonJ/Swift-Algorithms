//: Playground - noun: a place where people can play

import UIKit

let inputArray = [-3,0,0,0,0,3]

func subArraySum(_ inputArray: [Int]) -> (Int, Int)?{
    var indexDict = [Int:Int]()
    var sum = 0
    
    for (index,item) in inputArray.enumerated() {
        
        sum += item
        
        if sum == 0 {
            if let firstIndex = indexDict.first {
                return (firstIndex.value, index)
            }
        }
        else {
            indexDict[sum] = index
        }
    }
    return nil
}

print(subArraySum(inputArray) ?? "Not found")
