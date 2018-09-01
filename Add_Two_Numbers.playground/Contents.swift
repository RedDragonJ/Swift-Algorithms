
/*
 Problem: You are given two linked lists representing two non-negative numbers. 
 The digits are stored in reverse order and each of their nodes contain a single digit. 
 Add the two numbers and return it as a linked list
 
 Example:
    Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
    Output: 7 -> 0 -> 8
 */

class ListNode {
    var value: Int = 0
    var next: ListNode?
    
    init(val: Int) {
        self.value = val
    }
    
    func addNodeToList(nodeVal: Int) {
        if self.next != nil {
            self.next?.addNodeToList(nodeVal: nodeVal)
        }
        else {
            let newList = ListNode(val: nodeVal)
            self.next = newList
        }
    }
    
    func displayNodes() {
        print(self.value)
        self.next?.displayNodes()
    }
}

func addTwoNumbers(list1: ListNode?, list2: ListNode?) -> ListNode {
    var tempHead: ListNode? // Node to contain the return list
    var l1 = list1
    var l2 = list2
    var carryOver: Int = 0
    
    while l1 != nil || l2 != nil || carryOver != 0 {
        
        var x1: Int
        var x2: Int
        
        if l1 == nil { // If hit the end of the list 1
            x1 = 0
        }
        else {
            x1 = l1!.value
        }
        
        if l2 == nil { // If hit the end of the list 2
            x2 = 0
        }
        else {
            x2 = l2!.value
        }
    
        let sum = x1 + x2 + carryOver
        carryOver = sum / 10
        
        if tempHead == nil { // If the first time use tempHead we need create a node for it or you can create a dummyhead node
            tempHead = ListNode(val: sum%10) // EX: 7 % 10 = 7
        }
        else {
            tempHead?.addNodeToList(nodeVal: sum%10) // Add the new value to the node.next which has already handled in the node class
        }
        
        l1 = l1?.next // Update the node
        l2 = l2?.next // Update the node
    }
    
    if carryOver == 1 {
        tempHead?.addNodeToList(nodeVal: carryOver)
    }
    
    return tempHead!
}

/* >>>>>>>>>>> TEST <<<<<<<<<<< */

let firstList = ListNode(val: 2)
firstList.addNodeToList(nodeVal: 4)
firstList.addNodeToList(nodeVal: 3)

let secondList = ListNode(val: 5)
secondList.addNodeToList(nodeVal: 6)
secondList.addNodeToList(nodeVal: 4)

let results = addTwoNumbers(list1: firstList, list2: secondList)
results.displayNodes()

