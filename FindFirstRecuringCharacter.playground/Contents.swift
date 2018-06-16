let characters = ["A","B","C","D"]
let charactersTwo = [String]()

/*
 1. check if the array is empty
    if empty return nil
 2. create a dictionary [string:Int]
 3. loop through array
    if character exist in dictionary
        return the character
    else
        add character to dictionary and count is 1
 
    return nil
 */

func firstRecurringChar(array: [String]) -> String? {
    
    // Check the array length see if there's something
    if array.count == 0 {
        return nil
    }
    
    var dictionary = [String:Int]()
    for char in array {
        if dictionary.index(forKey: char) != nil { // Character already exist in the dictionary
            return char
        }
        else {
            dictionary[char] = 1 // No found character in the dictionary so save the character in the dictionary
        }
    }
    return nil
}

print(firstRecurringChar(array: characters) ?? "No recurring character found")


