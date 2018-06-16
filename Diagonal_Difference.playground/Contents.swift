

//let twoDArr = [[3],
//               [11,2,4],
//               [4,5,6],
//               [10,8,-12]]


// ONLY if the size is the first element of the two demensional array
//func diagonalDifference(a: [[Int]]) -> Int {
//
//    let matrixSize = a[0][0]
//    var firstDiagonal: Int = 0
//    var secondDiagonal: Int = 0
//    var differenceValue: Int = 0
//
//    for row in 1...matrixSize {
//        firstDiagonal += a[row][row-1]
//        secondDiagonal += a[row][matrixSize-row]
//
//        // TEST
//        print(firstDiagonal, secondDiagonal)
//    }
//
//    differenceValue = firstDiagonal - secondDiagonal
//    if differenceValue < 0 {
//        return -1 * differenceValue
//    }
//    return differenceValue
//}

let twoDArr = [[11,2,4],
               [4,5,6],
               [10,8,-12]]

func diagonalDifference(a: [[Int]]) -> Int {
    
    let matrixSize = a[0].count
    var firstDiagonal: Int = 0
    var secondDiagonal: Int = 0
    var differenceValue: Int = 0
    
    for row in 0..<matrixSize {
        firstDiagonal += a[row][row]
        secondDiagonal += a[row][matrixSize-1-row]
        
        // TEST
        print(firstDiagonal, secondDiagonal)
    }
    
    differenceValue = firstDiagonal - secondDiagonal
    if differenceValue < 0 {
        return -1 * differenceValue
    }
    return differenceValue
}


print(diagonalDifference(a: twoDArr))
