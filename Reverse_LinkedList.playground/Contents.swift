class Node {
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}


let nodeThree = Node.init(value: 3, next: nil)
let nodeTwo = Node.init(value: 2, next: nodeThree)
let nodeOne = Node.init(value: 1, next: nodeTwo)

func printlist(head: Node?) {
    var currentNode = head
    
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

func reverseList(head: Node?) -> Node? {
    
    var currentNode = head
    var next: Node?
    var prev: Node?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        prev = currentNode
        currentNode = next
    }
    
    return prev
}

let myReverse = reverseList(head: nodeOne)
printlist(head: myReverse)

