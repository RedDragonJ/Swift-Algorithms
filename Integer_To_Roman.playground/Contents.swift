
/*
 Problem: Given an integer, convert it to a roman numeral. Input is guaranteed to be within the range from 1 to 3999.
          Roman numeral literals basically a combination of these
          ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
          which are equivalent to
          [1000,900,500,400,100,90,50,40,10,9,5,4,1]
 Example: NA
 */

func intToRoman(number: Int) -> String? {
    
    if number <= 1 && number > 3999 {
        return nil
    }
    
    let symbols = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
    let values = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
    
    var romanStr = String()
    var newNumber = number
    
    while newNumber != 0 { // Check the value of number is 0
        for i in 0..<values.count { // Go through the values
            let result = newNumber - values[i]
            if result >= 0 { // Anytime if the difference smaller than 0 we skip
                newNumber = result // Update the newNumber(aka: number)
                romanStr.append(symbols[i])
                break // Leave inside loop once found one, no need continue to finish the entire loop
            }
        }
    }
    
    return romanStr
    
}

/* >>>>>>>>>>> TEST <<<<<<<<<<< */

let test1 = 20
let test2 = 233
let test3 = 500
let test4 = 2999
let test5 = 3999
let test6 = 1
let test7 = 5
let test8 = 8

print(intToRoman(number: test1) ?? "Wrong number")
print(intToRoman(number: test2) ?? "Wrong number")
print(intToRoman(number: test3) ?? "Wrong number")
print(intToRoman(number: test4) ?? "Wrong number")
print(intToRoman(number: test5) ?? "Wrong number")
print(intToRoman(number: test6) ?? "Wrong number")
print(intToRoman(number: test7) ?? "Wrong number")
print(intToRoman(number: test8) ?? "Wrong number")
