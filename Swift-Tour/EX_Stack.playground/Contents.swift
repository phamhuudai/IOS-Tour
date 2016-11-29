//: Playground - noun: a place where people can play

import UIKit


class Node {
    var value: Int?
    var next: Node?
    init(){
        
    }
    init(value: Int){
        self.value = value
        self.next = Node()
    }
}

class Stack {
    var size : Int = 0
    var top : Node = Node()
    init (){
        
    }
    func isEmpty() -> Bool {
        return self.size == 0
    }
    func push(value: Int){
        if(isEmpty()){
            self.top = Node()
        }
        
        let node = Node(value: value)
        node.next = top
        self.top = node
        self.size = self.size + 1
    }
    func pop() -> Int{
        if(isEmpty()){
            return 0
        }
        let node = self.top
        self.top = node.next!
        self.size = self.size - 1
        return node.value!
        
    }

}

var stk = Stack()
for i in 0..<5{
    stk.push(value: i)
    print("pushed \(i)")
    
}

print(stk.pop())
print(stk.pop())


