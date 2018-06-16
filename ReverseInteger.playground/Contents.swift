//: Playground - noun: a place where people can play

import UIKit

let example1 = 123
let example2 = -123


func reverse2(_ inputInt: Int) -> Int {
    var y = inputInt
    var returnVal = 0
    
    while (y != 0){
        returnVal = 10 * returnVal + y % 10
        y = y / 10
    }
    
    if (returnVal > Int.max || returnVal < Int.min) {
        return 0
    }else{
        return returnVal
    }
    
}

print(reverse2(example2))
