//: Playground - noun: a place where people can play

import UIKit

let scores = ["a":1,
              "b":2,
              "c":3,
              "d":4,
              "e":5,
              "f":6,
              "g":7,
              "h":8,
              "i":9,
              "j":10,
              "k":11,
              "l":12,
              "m":13,
              "n":14,
              "o":15,
              "p":16,
              "q":17,
              "r":18,
              "s":19,
              "t":20,
              "u":21,
              "v":22,
              "w":23,
              "x":24,
              "y":25,
              "z":26]

func getSortIndex(dict: [Int:Int]) -> [Int] {
    let sortedDict = dict.sorted(by: {$0.value <= $1.value})
    var sortedIndex = [Int]()
    
    for (key, _) in sortedDict {
        sortedIndex.append(key)
    }
    
    return sortedIndex
}

func sortString(unsortedStr: [String]) -> [String] {
    
    var dictForSort = [Int:Int]()
    var totalScore: Int = 0
    
    for i in 0..<unsortedStr.count {
        let item = unsortedStr[i].lowercased()
        for char in item {
            let charStr = String(char)
            if charStr == "a" || charStr == "e" || charStr == "i" || charStr == "o" || charStr == "u" {
                totalScore += (scores[charStr]! * 2)
            }
            else {
                totalScore += scores[charStr]!
            }
        }
        dictForSort[i] = totalScore
        totalScore = 0
    }
    
    let indexes = getSortIndex(dict: dictForSort)
    var sortedArray = [String]()
    
    for item in indexes {
        sortedArray.append(unsortedStr[item])
    }
    
    return sortedArray
}



let testStrings = ["James","Kev","Angel","Ibrahim","Jim","Dumbdumb"]
sortString(unsortedStr: testStrings)
