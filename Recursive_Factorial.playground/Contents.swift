

func recursiveFactorial(value: UInt) -> UInt {
    if value == 0 {
        return 1
    }
    
    return value * recursiveFactorial(value: value - 1)
}


print(recursiveFactorial(value: 3))
