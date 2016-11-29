//: Playground - noun: a place where people can play

import UIKit

class Node {
    var value: Int?
    var next: Node?
    init(){
        self.value = nil
        self.next = nil
    }
    init(value: Int){
        self.value = value
        self.next = Node()
    }
}
class LinkedList{
    var List : Node?
    init(){
        self.List = nil
    }
    func isEmpty() -> Bool{
        return self.List == nil
    }
    func lenght() -> Int{
        var p : Node? = self.List
        var i: Int = 0
        while p != nil{
            i+=1
            p = p?.next
            
        }
        return i
        
    }
    func insertFirst(item: Int){
        let newNode = Node(value: item)
        newNode.next = self.List
        self.List = newNode
    }
    func insertAtPosition(item: Int, position : Int){
      
        if position < 1 || position > lenght() + 1{
            print("Position not valiable !")
        }else{
            let newNode = Node(value: item)
            var p: Node? = self.List
            var i: Int = 1
            if position == 1{
                insertFirst(item: item)
            }else{
                while p != nil && i != position-1{
                    i += 1
                    p = p?.next
                }
               newNode.next = p?.next
               p?.next=newNode
                
            }
        }
        
    }
    func search(item: Int) -> Int{
        var p = self.List
        var i:Int = 1
        while p != nil && p?.value != item{
            p = p?.next
            i += 1
        }
        if p != nil {
            return i
        }else{
            return 0
        }
    }
    func delFirst(){
        let p : Node? = self.List?.next
        self.List = p
        
    }
    func delAtPosition(position: Int){
        var p : Node? = self.List
        var i: Int = 1
        if position<1 || position>lenght(){
            print("Position not valiable !")
        }else{
            if position==1{
              delFirst()
            }else{
                while p != nil && i != position-1 {
                    p = p?.next
                    i += 1
                }
                p?.next = p?.next?.next
            }
        }
        
    }
    func delValue(item: Int){
        let position = search(item: item)
        delAtPosition(position: position)
    }
    func display(){
        var p = self.List
        while p != nil {
            print(p!.value!)
            p = p?.next
        }
    }
    
    
    
    
}
var l = LinkedList()
l.isEmpty()
l.lenght()
l.insertFirst(item: 3)
l.insertFirst(item: 5)
l.insertFirst(item: 6)
l.insertFirst(item: 9)

l.insertAtPosition(item: 10, position: 4)
l.display()
