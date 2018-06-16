func fibNumber(value: Int) -> [Int] {
    var sequence = [0, 1]
    if value <= 1 {
        return sequence
    }
    
    for _ in 0...value - 2 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        sequence.append(first + second)
    }
    return sequence
}

print(fibNumber(value: 5))

/////////////////////////////////

func fibRecursion(value: Int, first: Int, second: Int) -> [Int] {
    if value == 0 {
        return []
    }
    return [first + second] + fibRecursion(value: value - 1, first: second, second: first + second)
}

//[0, 1] + fibRecursion(value: 1, first: 0, second: 1)

