
/*
 Problem: Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.
          Roman numeral literals basically a combination of these
          ["I","V","X","L","C","D","M"]
          which are equivalent to
          [1,5,10,50,100,500,1000]
 Example: NA
 */

func romanToInt(romanStr: String) -> Int {
    let romanDict = ["I":1,
                     "V":5,
                     "X":10,
                     "L":50,
                     "C":100,
                     "D":500,
                     "M":1000]
    
    var results: Int = 0
    var romanStrArr = Array(romanStr)
    
    for i in 0..<romanStrArr.count {
        
        if i < romanStrArr.count - 1 && (romanDict[String(romanStrArr[i])]! < romanDict[String(romanStrArr[i+1])]!) {
            results -= romanDict[String(romanStrArr[i])]!
        }
        else {
            results += romanDict[String(romanStrArr[i])]!
        }
        
    }
    
    return results
}

/* >>>>>>>>>>> TEST <<<<<<<<<<< */

let test1 = "III"
let test2 = "IV"
let test3 = "MMMCMXCIX"
let test4 = "IX"
let test5 = "V"
let test6 = "LVIII"
let test7 = "MCMXCIV"

print(romanToInt(romanStr: test1))
print(romanToInt(romanStr: test2))
print(romanToInt(romanStr: test3))
print(romanToInt(romanStr: test4))
print(romanToInt(romanStr: test5))
print(romanToInt(romanStr: test6))
print(romanToInt(romanStr: test7))

