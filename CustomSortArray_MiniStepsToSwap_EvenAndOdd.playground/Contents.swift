
let test1 = [4,13,10,21,20] //1
let test2 = [5,8,5,11,4,6] //2
let test3 = [11,82921272,110219722,162495938,470311130,583170602,329963077,403414481,437623101,485366585,599466263,959094281] //0
let test4 = [1] //0
let test5 = [2] //0
let test6 = [0] //0


func moves(a: [Int]) -> Int {
    
    var moves: Int = 0
    var i: Int = 0
    var j: Int = a.count-1
    
    while i <= j {
        if a[i]%2 != 0 && a[j]%2 == 0 {
            moves += 1
            i += 1
            j -= 1
        }
        else {
            if a[i]%2 == 0 {
                i += 1
            }
            if a[j]%2 != 0 {
                j -= 1
            }
        }
    }
    
    return moves
}

print(moves(a: test1))
print(moves(a: test2))
print(moves(a: test3))
print(moves(a: test4))
print(moves(a: test5))
print(moves(a: test6))
