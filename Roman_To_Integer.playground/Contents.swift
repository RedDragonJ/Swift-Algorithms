
/*
 Problem: Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.
          Roman numeral literals basically a combination of these
          ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
          which are equivalent to
          [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
 Example: NA
 */

func romanToInt(romanStr: String) -> Int {
    let romanDict = ["M": 1000,
                     "CM": 900,
                     "D": 500,
                     "CD": 400,
                     "C": 100,
                     "XC": 90,
                     "L": 50,
                     "XL": 40,
                     "X": 10,
                     "IX": 9,
                     "V": 5,
                     "IV": 4,
                     "I": 1]
    
    var finalResult: Int = 0 // Variable for final results
    let romanStrArr = Array(romanStr).reversed() // Reverse the string character array
    var previousNumber = romanDict[String(romanStrArr.first!)]! // Get the first string character number
    
    return romanStrArr.dropFirst().reduce(previousNumber) { result, current in
        
        let currentNumber = romanDict[String(current)]! // Get the current string character number
        finalResult = result // Assign the result of integer to the final result variable
        
        if currentNumber < previousNumber {
            finalResult -= currentNumber
        } else {
            finalResult += currentNumber
        }
        
        previousNumber = currentNumber // Replace the previous number with current number and move to next
        return finalResult
    }
}

/* >>>>>>>>>>> TEST <<<<<<<<<<< */

let test1 = "III" // 3
let test2 = "IV" // 4
let test3 = "MMMCMXCIX" // 3999
let test4 = "IX" // 9
let test5 = "V" // 5
let test6 = "LVIII" // 58
let test7 = "MCMXCIV" // 1994

print(romanToInt(romanStr: test1))
print(romanToInt(romanStr: test2))
print(romanToInt(romanStr: test3))
print(romanToInt(romanStr: test4))
print(romanToInt(romanStr: test5))
print(romanToInt(romanStr: test6))
print(romanToInt(romanStr: test7))

