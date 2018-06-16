//: Playground - noun: a place where people can play

import UIKit

let str1 = "James"
let str2 = "semaJ"

func isPalindrome(_ firstWord: String, _ secondWord: String) -> Bool {
    
    if firstWord.count != secondWord.count {
        return false
    }
    
    let wordOne = Array(firstWord.lowercased())
    let wordTwo = Array(secondWord.lowercased())
    
    for (index, character) in wordOne.enumerated() {
        if character != wordTwo[wordTwo.count-index-1] {
            return false
        }
    }
    return true
}

print(isPalindrome(str1, str2))
