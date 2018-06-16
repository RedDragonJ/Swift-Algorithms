
// Generics tree

class Node<T> {
    var value: T
    var children: [Node] = [] // Children property
    weak var parent: Node? // Parent property
    
    init(value: T) {
        self.value = value
    }
    
    func add(child: Node) {
        children.append(child)
        child.parent = self
    }
}

// MARK: - Print Tree
extension Node: CustomStringConvertible {
    var description: String {
        
        var text = "\(value)"
        
        if !children.isEmpty {
            text += " {" + children.map { $0.description }.joined(separator: ", ") + "} "
        }
        return text
    }
}

// MARK: - Search Tree
extension Node where T: Equatable {
    func search(value: T) -> Node? {
        if value == self.value {
            return self
        }
        
        for child in children {
            if let found = child.search(value: value) {
                return found
            }
        }
        
        return nil
    }
}

/*    ============================================      */

let beverages = Node(value: "beverages")

let hotBeverages = Node(value: "hot")
let coldBeverages = Node(value: "cold")

let tea = Node(value: "tea")
let coffee = Node(value: "coffee")
let cocoa = Node(value: "cocoa")

let blackTea = Node(value: "black")
let greenTea = Node(value: "green")
let chaiTea = Node(value: "chai")

let soda = Node(value: "soda")
let milk = Node(value: "milk")

let gingerAle = Node(value: "ginger ale")
let bitterLemon = Node(value: "bitter lemon")


beverages.add(child: hotBeverages)
beverages.add(child: coldBeverages)

hotBeverages.add(child: tea)
hotBeverages.add(child: coffee)
hotBeverages.add(child: cocoa)

coldBeverages.add(child: soda)
coldBeverages.add(child: milk)

tea.add(child: blackTea)
tea.add(child: greenTea)
tea.add(child: chaiTea)

soda.add(child: gingerAle)
soda.add(child: bitterLemon)

//print(beverages)
print(beverages.search(value: "black") ?? "Nothing found")





///////////// NON GENERIC WAY ///////////////////////////
class Node {
    var value: Int
    weak var parentNode: Node?
    var leftNode: Node?
    var rightNode: Node?
    
    init(val: Int) {
        self.value = val
    }
    
    var isLeftChild: Bool {
        return self.parentNode?.leftNode === self
    }
    
    var isRightChild: Bool {
        return self.parentNode?.rightNode === self
    }
    
    var hasLeftChild: Bool {
        return self.leftNode != nil
    }
    
    var hasRightChild: Bool {
        return self.rightNode != nil
    }
    
    var isLeaf: Bool {
        return self.leftNode == nil && self.rightNode == nil
    }
    
    func insert(val: Int) {
        if val < self.value {
            // Go left
            if let left = self.leftNode {
                left.insert(val: val)
            }
            else {
                self.leftNode = Node(val: val)
                self.leftNode?.parentNode = self
            }
        }
        else {
            // Go right
            if let right = self.rightNode {
                right.insert(val: val)
            }
            else {
                self.rightNode = Node(val: val)
                self.rightNode?.parentNode = self
            }
        }
    }
    
    func search(val: Int) -> Node? {
        if val < self.value {
            // Go left
            return self.leftNode?.search(val: val)
        }
        else if val > self.value {
            // Go right
            return self.rightNode?.search(val: val)
        }
        else {
            return self
        }
    }
    
    func traverseInOrder() {
        // Left, self, right
        self.leftNode?.traverseInOrder()
        print(self.value)
        self.rightNode?.traverseInOrder()
    }
    
    func traversePreOder() {
        // Self, left, right
        print(self.value)
        self.leftNode?.traversePreOder()
        self.rightNode?.traversePreOder()
    }
    
    func traversePostOder() {
        // Left, right, self
        self.leftNode?.traversePostOder()
        self.rightNode?.traversePostOder()
        print(self.value)
    }
    
    func height() -> Int {
        if self.isLeaf {
            return 0
        }
        else {
            return 1 + max(self.leftNode?.height() ?? 0, self.rightNode?.height() ?? 0)
        }
    }
    
    //////////////////////
    func verticalSum() {
        
        var distanceMapDict = [Int:Int]()
        verticalSumUtil(node: self, distance: 0, mapDict: distanceMapDict)
        if distanceMapDict.count > 0 {
            print(distanceMapDict)
        }
        
    }
    
    func verticalSumUtil(node: Node?, distance: Int, mapDict: [Int:Int]) {
        if node == nil {
            return
        }
        
        var mapDictHolder = mapDict
        
        verticalSumUtil(node: node!.leftNode, distance: distance - 1, mapDict: mapDictHolder)
        
        var prevSum: Int = 0
        if mapDictHolder[distance] == nil {
            prevSum = 0
        }
        else {
            prevSum = mapDictHolder[distance]!
        }
        mapDictHolder[distance] = prevSum + node!.value
        
        verticalSumUtil(node: node!.rightNode, distance: distance + 1, mapDict: mapDictHolder)
        
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        var s = ""
        if let left = leftNode {
            s += "(\(left.description)) <- "
        }
        s += "\(value)"
        if let right = rightNode {
            s += " -> (\(right.description))"
        }
        return s
    }
}

//TEST/////////////////////////////////////////////////

let topNode = Node(val: 5)
topNode.insert(val: 2)
topNode.insert(val: 12)
topNode.insert(val: -4)
topNode.insert(val: 3)
topNode.insert(val: 9)
topNode.insert(val: 21)
topNode.insert(val: 19)
topNode.insert(val: 25)

// print(topNode.search(val: 6) ?? "Not Found")

// topNode.traverseInOrder()
// topNode.traversePreOder()
// topNode.traversePostOder()

// let minNode = topNode.minimum()
// let maxNode = topNode.maximum()
// print(minNode.value)
// print(maxNode.value)

// print(topNode.height())

topNode.verticalSum()

