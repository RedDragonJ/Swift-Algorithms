/**
 Problem: Write a function to find the longest common prefix string amongst an array of strings.
 
 Example: Enter: ["flower","flow","flight"]
          Output: "fl"
 
          Enter: ["dog", "cat", "mouse"]
          Output: "" (NOTE: No common prefix)
 */

func longestCommonPrefix(_ stringArray: [String]) -> String? {
    
    if stringArray.count == 0 {
        return nil
    }
    
    if stringArray.count == 1 {
        return stringArray[0]
    }
    
    var prefixStr = stringArray[0]
 
    for i in 1..<stringArray.count { // Loop through the string array
        let singleString = stringArray[i] // Get each string from array one at time
        
        if singleString.count > 0, !singleString.isEmpty { // Only check for the prefix if the string is not empty string
            while !singleString.hasPrefix(prefixStr) { // Continue to loop if the string does not contain a prefix
                prefixStr = String(prefixStr.prefix(prefixStr.count - 1)) // Reduce the prefix string character by 1 from right to left
                if prefixStr.isEmpty {
                    return nil // At this point the prefix does not match any string
                }
            }
        }
    }
    
    return prefixStr
}

/// TEST

let test1 = ["flight", "flower", "flow"]
let test2 = ["flower", "flow", "flight"]
let test3 = ["dog", "cat", "mouse"]
let test4 = ["dog", "", "dodge"]
let test5 = ["dog"]
let test6 = [""]
let test7 = [String]()

print(longestCommonPrefix(test1) ?? "No common prefix")
print(longestCommonPrefix(test2) ?? "No common prefix")
print(longestCommonPrefix(test3) ?? "No common prefix")
print(longestCommonPrefix(test4) ?? "No common prefix")
print(longestCommonPrefix(test5) ?? "No common prefix")
print(longestCommonPrefix(test6) ?? "No common prefix")
print(longestCommonPrefix(test7) ?? "No common prefix")
