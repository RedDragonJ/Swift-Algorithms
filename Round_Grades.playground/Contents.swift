

let test = [73,67,38,33,100,62,85,86,75]
let test2 = [80,96,18,73,78,60,60,15,45,15,10,5,46,87,33,60,14,71,65,2,5,97,0]

func gradingStudents(grades: [Int]) -> [Int] {
    
    var newGrades = [Int]()
    
    for i in 0..<grades.count {
        if grades[i] < 38 {
            newGrades.append(grades[i])
        }
        else if grades[i] >= 38 && grades[i] < 100 {
            let remainValue = grades[i]%5
            if remainValue < 3 {
                newGrades.append(grades[i])
            }
            else {
                newGrades.append(grades[i]+(5-remainValue))
            }
        }
        else if grades[i] == 100 {
            newGrades.append(grades[i])
        }
    }
    
    return newGrades
}

print(test2)
print(gradingStudents(grades: test2))
