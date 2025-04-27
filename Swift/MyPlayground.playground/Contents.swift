//// MARK: - Node Class
//class Node {
//    var value: Int
//    var nextNode: Node?
//    
//    init(_ val: Int) {
//        self.value = val
//        self.nextNode = nil
//    }
//}
//
//// MARK: - LinkedList Class
//class LinkedList {
//    var firstNode: Node?
//    
//    // MARK: - Insert node at specific index
//    func addToSpecificIndex(_ newValue: Int, _ index: Int) {
//        guard index >= 0 else {
//            print("Index is negative.")
//            return
//        }
//        
//        var newNode = Node(newValue)
//        
//        if index == 0 {
//            newNode.nextNode = firstNode
//            firstNode = newNode
//            return
//        }
//        
//        var currentNode = firstNode
//        var currentIndex = 0
//        
//        while currentNode != nil && currentIndex < index - 1 {
//            currentNode = currentNode?.nextNode
//            currentIndex += 1
//        }
//        
//        // If currentNode is nil, the index is out of bounds
//        if currentNode == nil {
//            print("Index out of bounds.")
//            return
//        }
//        
//        // Insert the new node after the current node
//        newNode.nextNode = currentNode?.nextNode
//        currentNode?.nextNode = newNode
//    }
//    
//    // MARK: - Insert at Beginning
//    func addToBeginning(_ newValue: Int) {
//        var newNode: Node?
//        newNode = Node(newValue)
//        newNode?.nextNode = firstNode
//        firstNode = newNode
//    }
//    
//    // MARK: - Insert at End
//    func addToEnd(_ newValue: Int) {
//        let newNode = Node(newValue)
//        
//        if firstNode == nil {
//            firstNode = newNode
//            return
//        }
//        
//        var currentNode = firstNode
//        while currentNode?.nextNode != nil {
//            currentNode = currentNode?.nextNode
//        }
//        
//        currentNode?.nextNode = newNode
//    }
//    
//    // MARK: - Delete node at specific index
//    func deleteNode(at index: Int) {
//        guard index >= 0 else {
//            print("Index cannot be negative")
//            return
//        }
//        
//        if index == 0 {
//            firstNode = firstNode?.nextNode
//            return
//        }
//        
//        var currentNode = firstNode
//        var currentIndex = 0
//        
//        while currentNode != nil && currentIndex < index - 1 {
//            currentNode = currentNode?.nextNode
//            currentIndex += 1
//        }
//        
//        // If currentNode is nil, the index is out of bounds
//        if currentNode == nil || currentNode?.nextNode == nil {
//            print("Index out of bounds.")
//            return
//        }
//        
//        // Delete the node by skipping it
//        currentNode?.nextNode = currentNode?.nextNode?.nextNode
//    }
//    
//    // MARK: - Delete node by value
//    func deleteNode(withValue valueToDelete: Int) {
//        // If the list is empty, print an error and return
//        if firstNode == nil {
//            print("The list is empty")
//            return
//        }
//        
//        // first node has value, remove it
//        if firstNode?.value == valueToDelete {
//            firstNode = firstNode?.nextNode
//            return
//        }
//        
//        var currentNode = firstNode
//        var previousNode: Node? = nil
//        
//        //Traverse the list to find the node with matching value
//        while currentNode != nil && currentNode?.value != valueToDelete {
//            previousNode = currentNode
//            currentNode = currentNode?.nextNode
//        }
//        
//        // If we didn't find the value in the list, print an error
//        if currentNode == nil {
//            print("Value \(valueToDelete) not found in the list.")
//            return
//        }
//        
//        // Remove the node by linking the previous node to the next node
//            previousNode?.nextNode = currentNode?.nextNode
//    }
//    
//    // MARK: search by value
//    func search(for value: Int) -> Bool {
//        var currentNode = firstNode
//        
//        while currentNode != nil {
//            if currentNode?.value == value {
//                print("yes, we found it \(value)")
//                return true
//            }
//            currentNode = currentNode?.nextNode
//        }
//        return false
//    }
//    
//    //MARK: Reverse the list
//    func reverseList() {
//        var previouseNode: Node? = nil
//        var currentNode: Node? = firstNode
//        
//        while let node = currentNode {
//            let nextNode = currentNode?.nextNode
//            currentNode?.nextNode = previouseNode
//            previouseNode = currentNode
//            currentNode = nextNode
//        }
//        firstNode = previouseNode
//    }
//    
//    //MARK: Get the length of list
//    func length() -> Int {
//        var count = 0
//        var currentNode = firstNode
//        while currentNode != nil {
//            count += 1
//            currentNode = currentNode?.nextNode
//        }
//        print(count)
//        return count
//    }
//    
//    //Mark: checking list has loop or not
//    func hasLoop() -> Bool {
//        var slow: Node? = firstNode
//        var fast: Node? = firstNode
//        
//        while slow != nil && fast != nil && fast?.nextNode != nil {
//            slow = slow?.nextNode
//            fast = fast?.nextNode?.nextNode
//            
//            if slow === fast {
//                return true
//            }
//        }
//        
//        return false
//    }
//    
//    //Mark: find middle node
//    func findMiddleNode() -> Node? {
//        var slow: Node? = firstNode
//        var fast: Node? = firstNode
//        
//        while slow != nil && fast != nil && fast?.nextNode != nil {
//            slow  = slow?.nextNode
//            fast  = fast?.nextNode?.nextNode
//        }
//        
//        return slow
//    }
//    // MARK: - Print List
//    func printList() {
//        var currentNode = firstNode
//        while currentNode != nil {
//            print("\(currentNode!.value) ->", terminator: "")
//            currentNode = currentNode?.nextNode
//        }
//        print("nil")
//    }
//}
//
//func runTests() {
//    let list = LinkedList()
//
//    print("\n🧪 Test 1: Insert at Beginning")
//    list.addToBeginning(1)
//    list.printList() // Expected: 1 -> nil
//
//    print("\n🧪 Test 2: Insert at End")
//    list.addToEnd(2)
//    list.addToEnd(3)
//    list.printList() // Expected: 1 -> 2 -> 3 -> nil
//
//    print("\n🧪 Test 3: Insert at Specific Index")
//    list.addToSpecificIndex(100, 1)
//    list.printList() // Expected: 1 -> 100 -> 2 -> 3 -> nil
//
//    print("\n🧪 Test 4: Delete Node by Index")
//    list.deleteNode(at: 2)
//    list.printList() // Expected: 1 -> 100 -> 3 -> nil
//
//    print("\n🧪 Test 5: Delete Node by Value")
//    list.deleteNode(withValue: 100)
//    list.printList() // Expected: 1 -> 3 -> nil
//
//    print("\n🧪 Test 6: Search for Value (Exists)")
//    let _ = list.search(for: 3) // Expected: Yes, we found it 3
//
//    print("\n🧪 Test 7: Search for Value (Not Exists)")
//    let _ = list.search(for: 99) // Expected: nothing printed
//
//    print("\n🧪 Test 8: Length of List")
//    _ = list.length() // Expected: 2
//
//    print("\n🧪 Test 9: Reverse the List")
//    list.reverseList()
//    list.printList() // Expected: 3 -> 1 -> nil
//
//    print("\n🧪 Test 10: Detect Loop (Should be false)")
//    print("Loop detected? \(list.hasLoop() ? "Yes" : "No")") // Expected: No
//
//    print("\n🧪 Test 11: Create and Detect Loop (Should be true)")
//    // Creating a loop manually
//    if let secondNode = list.firstNode?.nextNode {
//        var last = list.firstNode
//        while last?.nextNode != nil {
//            last = last?.nextNode
//        }
//        last?.nextNode = secondNode // Creates a loop
//    }
//
//    print("Loop detected? \(list.hasLoop() ? "Yes" : "No")") // Expected: Yes
//
//    print("\n🧪 Test 12: Find Middle of Odd-Length List")
//    let oddList = LinkedList()
//    [1, 2, 3, 4, 5].forEach { oddList.addToEnd($0) }
//    if let middle = oddList.findMiddleNode() {
//        print("Middle node (odd list): \(middle.value)") // Expected: 3
//    }
//
//    print("\n🧪 Test 13: Find Middle of Even-Length List")
//    let evenList = LinkedList()
//    [10, 20, 30, 40, 50, 60].forEach { evenList.addToEnd($0) }
//    if let middle = evenList.findMiddleNode() {
//        print("Middle node (even list): \(middle.value)") // Expected: 40
//    }
//}
//runTests()


//MARK: Doubly linked list
class DoublyNode {
    
    var value: Int
    var nextNode: DoublyNode?
    var previousNode: DoublyNode?
    
    init(_ value: Int) {
        self.value = value
    }
}

class DoublyLinkedList {
    
    var headNode: DoublyNode?
    var tailNode: DoublyNode?
    
    //MARK: 1 - Adding List Node at end
    func addToEnd(_ value: Int) {
        let newNode = DoublyNode(value)
        if tailNode == nil {
            headNode = newNode
            tailNode = newNode
        } else {
            tailNode?.nextNode = newNode
            newNode.previousNode = tailNode
            tailNode = newNode
        }
    }
    
    //MARK: 2 - Adding list Node at begining
    func addToBeginning(_ value: Int) {
        let newNode = DoublyNode(value)
        if headNode == nil {
            headNode = newNode
            tailNode = newNode
        } else {
            headNode?.previousNode = newNode
            newNode.nextNode = headNode
            headNode = newNode
        }
    }
    
    func printList() {
        var currentNode = headNode
        while let node = currentNode {
            print("\(node.value)", terminator: "<->")
            currentNode = node.nextNode
        }
        print("nil")
    }
    
}


func runTest() {
    let list = DoublyLinkedList()
   
    print("Initially:")
    list.printList()
    
    // MARK: - Test: Adding nodes at the end
    print("\nAfter adding elements to the end:")
    list.addToEnd(10)
    list.addToEnd(20)
    list.addToEnd(30)
    
    print("Expected order: 10 <-> 20 <-> 30")
    list.printList()
    
    // MARK: - Test: Adding nodes at the beginning
    print("\nAfter adding elements to the beginning:")
    list.addToBeginning(5)
    list.addToBeginning(2)
    
    print("Expected order: 2 <-> 5 <-> 10 <-> 20 <-> 30")
    list.printList()
}

runTest()
