
/*
 Problem: Reverse digits if an integer
 Example:
    x = 123, return 321
    x = -123, return -321
 
    Also if the integer last digits is 0, what should the output be? case like 10, 100
    Also if we assume the input is a 32 bit integer, then the reverse of 1000000003 overflows.
    However, it maybe not the case for example the Int can be either 32 bit or 64 bit depend on which OS you use on MaxBook
 */

import Foundation

func reverse(input: Int) -> Int {
    
    var x = input
    var returnVal = 0
//    var countZeros = 0
    
    while (x != 0){
        
//        let remainder = x % 10
//        if remainder == 0 { // Track the zeros we get
//            countZeros += 1
//        }
        
        returnVal = 10 * returnVal + x % 10
        x = x / 10
    }
    
    /* Here we can actually loop through and add 0 if we only output string
       However, since we need integer so we convert back to int type
       But it will never going to work.
       So here is something to think about, maybe you can have a better solution
     */
//    if countZeros > 0 {
//        for _ in 1...countZeros {
//            let newIntString = String(format: "0%i", returnVal)
//            returnVal = Int(newIntString)!
//        }
//    }
    
    // Here we can check if the integer value overflows or not
    // If overflows we return 0
    // Otherwise we just return whatever the value
    if (returnVal > Int.max || returnVal < Int.min) {
        return 0
    }else{
        return returnVal
    }
    
}

/* >>>>>>>>>>> TEST <<<<<<<<<<< */

let example1 = 123
let example2 = -123
let example3 = 10
let example4 = 100
let example5 = 1000000003

print(reverse(input: example1))
print(reverse(input: example2))
print(reverse(input: example3))
print(reverse(input: example4))
print(reverse(input: example5))
