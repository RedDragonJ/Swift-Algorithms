
/*
 Problem: Reverse a singly linked list
 Example:
    Input: 1->2->3->4->5->NULL
    Output: 5->4->3->2->1->NULL
 
*/

class Node {
    var value: Int
    var next: Node?
    
    init(val: Int) {
        self.value = val
    }
    
    func addNodeWith(val: Int) {
        if self.next == nil {
            let newNode = Node(val: val)
            self.next = newNode
        }
        else {
            self.next?.addNodeWith(val: val)
        }
    }
}

func printlist(head: Node?) {
    
    var currentNode = head
    
    while currentNode != nil {
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }
}

func reverseList(node: Node?) -> Node? {
    
    var currentNode = node
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

/* >>>>>>>>>>> TEST <<<<<<<<<<< */

let headNode = Node(val: 1)
headNode.addNodeWith(val: 2)
headNode.addNodeWith(val: 3)
headNode.addNodeWith(val: 4)
headNode.addNodeWith(val: 5)

print("Node in order")
printlist(head: headNode)

print("\nNode in reverse order")
let reversedHead = reverseList(node: headNode)
printlist(head: reversedHead)
