
/*
 Problem: Given a string, find the length of the longest substring without repeating characters.
 Example:
    Given "abcabcbb", the answer is "abc", which the length is 3
    Given "bbbbb", the answer is "b", with the length of 1
    Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring
 */

func lengthOfLongestSubstring(words: String) -> Int {
    
    if words.count == 0 {
        return 0
    }
    
    var charTable = [Character:Int]()
    var maxLength: Int = 0
    var lastDuplicateIndex: Int = -1 // Last index of the samiliar character
    
    let charArray = Array(words) // Convert the string to character array
    
    for i in 0..<charArray.count {
        
        if let lastCharIndex = charTable[charArray[i]], lastDuplicateIndex < lastCharIndex { // Check if character already exist in dictionary and check if lastDuplicateIndex is smaller than the lastChartIndex from dictionary
            lastDuplicateIndex = lastCharIndex // Update the lastDuplicateIndex
        }
        maxLength = max(maxLength, i-lastDuplicateIndex) // Find the greatest number
        charTable[charArray[i]] = i // Add the existing to the dictionary
    
    }
    
    return maxLength
}

/* >>>>>>>>>>> TEST <<<<<<<<<<< */

let testWords1 = "abcabcbb"
let testWords2 = "bbbbb"
let testWords3 = "pwwkew"

print("Result is ", lengthOfLongestSubstring(words: testWords1))
print("Result is ", lengthOfLongestSubstring(words: testWords2))
print("Result is ", lengthOfLongestSubstring(words: testWords3))
