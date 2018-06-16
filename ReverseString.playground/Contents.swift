//: Playground - noun: a place where people can play

import UIKit

// With swift function
let str = "James"
let reversed = String(str.reversed())
print(reversed)

// Customized function
func reverse(_ str: String) -> String {
    var reversedStr = ""
    
    for char in str {
        reversedStr = String(char) + reversedStr
    }
    
    return reversedStr
}

print(reverse(str))
