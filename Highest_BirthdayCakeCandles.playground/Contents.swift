

let candles = [3,2,1,3]

func birthdayCakeCandles(ar: [Int]) -> Int {
    
    var totalCandles = [Int:Int]()
    
    for index in 0..<ar.count {    
        if let count = totalCandles[ar[index]] {
            totalCandles[ar[index]] = count + 1
        }
        else {
            totalCandles[ar[index]] = 1
        }
    }
    
    if let highest = totalCandles.keys.max() {
        return totalCandles[highest]!
    }
    else {
        return 0
    }
}

print(birthdayCakeCandles(ar: candles))
