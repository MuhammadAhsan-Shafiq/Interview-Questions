class Node:
    def __init__(self, value):
        self.value = value
        self.nextNode = None


class LinkedList:
    def __init__(self):
        self.firstNode = None

    def add_to_end(self, newValue):
        newNode = Node(newValue)

        if not self.firstNode:
            self.firstNode = newNode
            return

        currentNode = self.firstNode
        while currentNode.nextNode:
            currentNode = currentNode.nextNode

        currentNode.nextNode = newNode

    def printList(self):
        currentNode = self.firstNode
        while currentNode:
            print(currentNode.value, end=" -> ")
            currentNode = currentNode.nextNode
        print("None")


# Test
ll = LinkedList()
ll.add_to_end(10)
ll.add_to_end(20)
ll.add_to_end(39)
ll.printList()
