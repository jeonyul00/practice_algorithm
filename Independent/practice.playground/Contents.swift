import UIKit

let minValue = Int.min
let maxValue:Int = .max
minValue
maxValue

/*
 2진수: 0b
 8진수: 0o
 16진수: 0x
 */
let decimalInteger = 17          // 10진수
let binaryInteger = 0b10001      // 2진수 (0b로 시작)
let octalInteger = 0o21          // 8진수 (0o로 시작)
let hexadecimalInteger = 0x11    // 16진수 (0x로 시작)

print(decimalInteger)          // 17 (10진수)
print(binaryInteger)           // 17 (2진수 -> 10진수로 출력)
print(octalInteger)            // 17 (8진수 -> 10진수로 출력)
print(hexadecimalInteger)      // 17 (16진수 -> 10진수로 출력)

let number = 0b00010001010101010

// 2진수 변환
let binaryString = String(number, radix: 2)
print("Binary: \(binaryString)")

// 8진수 변환
let octalString = String(number, radix: 8)
print("Octal: \(octalString)")  // Octal: 21

// 16진수 변환
let hexadecimalString = String(number, radix: 16)
print("Hexadecimal: \(hexadecimalString)")  // Hexadecimal: 11

let value = 18
print(String(value, radix: 16))

/*
 튜플은 비구조화 할당이 됨
 */
let (x, y) = (1, 2)

/* 튜플도 비교 가능
 위의 예제 첫번째 줄에서 왼쪽에서 오른쪽으로 비교하는 동작을 확인할 수 있습니다. 튜플의 다른 어떤값과 상관없이 1 이 2 보다 작기 때문에 (1, "zebra") 는 (2, "apple") 보다 작습니다. 튜플의 첫번째 요소에 의해 비교가 이미 마쳤기 때문에 "zebra" 가 "apple" 보다 더 작은지 여부는 아무런 상관이 없습니다. 그러나 튜플의 첫번째 요소가 같을 때는 두번째 요소가 비교됩니다. - 위 예제에서 두번째와 세번째 줄의 결과를 살펴보면 알 수 있습니다.
 */
(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" are not compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

/*
 아스키 코드 구하기
 A == 65
 a == 97
 */

let aAsciiValue = UInt8(Character("a").asciiValue!)
print(aAsciiValue)

let character = Character(UnicodeScalar(aAsciiValue))
print(character)

/*
 String.Index 타입을 Int로 변환
 distance
 */

let str = "Hello, World!"
if let index = str.firstIndex(of: "W") {
    let intIndex = str.distance(from: str.startIndex, to: index)
    print(intIndex)  // 출력: 7
}

let repeatingArr = Array(repeating:0, count:10)
repeatingArr

// 이건 좀 막아놔야 되는거 아니냐. append가 있는데
var mergedArr = repeatingArr + [1,1]
mergedArr[0] = 18
mergedArr
mergedArr.append(180)
mergedArr

// Set: 집합 문제 나오면 Set
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
favoriteGenres.contains("Rock")


// 딕셔너리 Key 타입은 집합의 값 타입과 같이 반드시 Hashable 프로토콜을 준수해야 합니다.
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
print(namesOfIntegers)
namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]
print(namesOfIntegers)


/*
 in out
 */
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107

swapTwoInts(&someInt, &anotherInt)
someInt
anotherInt

/*
 enum
 */
//CaseIterable
//allCases
//rawValue

// ---

// 데이터 구조 만들어보자
public struct Stack<T>: Sequence {
    private var elements = [T]()
    
    public init() {}
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    public mutating func push(_ element: T) {
        self.elements.append(element)
    }
    
    public func peek() -> T? {
        return self.elements.last
    }
    
    public func isEmpty() -> Bool {
        return self.elements.isEmpty
    }
    
    public var count: Int {
        return self.elements.count
    }
    
    // Sequence를 구현하기 위한 makeIterator() 메서드
    public func makeIterator() -> StackIterator<T> {
        return StackIterator(self)
    }
}

// IteratorProtocol을 준수하는 이터레이터 구현
public struct StackIterator<T>: IteratorProtocol {
    private var stack: Stack<T>
    
    init(_ stack: Stack<T>) {
        self.stack = stack
    }
    
    public mutating func next() -> T? {
        return stack.pop()
    }
}

public struct Queue<T>: Sequence {
    private var data = [T]()
    
    public init() {}
    
    public mutating func dequeue() -> T? {
        guard !data.isEmpty else { return nil }
        return self.data.removeFirst()
    }
    
    public func peek() -> T? {
        return self.data.first
    }
    
    public mutating func enqueue(_ element: T) {
        self.data.append(element)
    }
    
    public func makeIterator() -> QueueIterator<T> {
        return QueueIterator(self)
    }
}

public struct QueueIterator<T>: IteratorProtocol {
    private var queue: Queue<T>
    
    init(_ queue: Queue<T>) {
        self.queue = queue
    }
    
    public mutating func next() -> T? {
        return queue.dequeue()
    }
}

public struct CircularBuffer<T> {
    private var buffer: [T?]
    private var head: Int = 0
    private var tail: Int = 0
    private var isFull: Bool = false
    private var capacity: Int
    
    public var isFutllBuffer: Bool {
        return isFull
    }
    public var isEmpty: Bool {
        return head == tail && !isFull
    }
    
    init(size:Int) {
        self.capacity = size
        self.buffer = Array(repeating: nil, count: size)
    }
    
    public mutating func enqueue(_ element: T) {
        buffer[head] = element
        tail = (tail + 1) % capacity
        
        if isFull {
            head = (head + 1) % capacity // 가득 차 있으면 head 이동
        }
        isFull = (tail == head)
        
    }
    
    public mutating func dequeue() -> T? {
        guard !isEmpty else { return nil }
        
        let element = buffer[head]
        buffer[head] = nil
        head = (head + 1) % capacity
        isFull = false
        
        return element
    }
    
    // 버퍼에서 가장 오래된 요소를 확인
    public func peek() -> T? {
        return buffer[head]
    }
    
    
}


// 이진트리
class BinaryTreeNode<T: Comparable> {
    var value:T
    var left: BinaryTreeNode?
    var right: BinaryTreeNode?
    var parent: BinaryTreeNode?
    
    init(value: T, left: BinaryTreeNode? = nil, right: BinaryTreeNode? = nil, parent: BinaryTreeNode? = nil) {
        self.value = value
        self.left = left
        self.right = right
        self.parent = parent
    }
    
    // 삽입
    public func insertNodeFromNode(_ value: T) {
        if let _ = self.parent { return }
        self.addNode(value)
    }
    
    private func addNode(_ value:T) {
        // 나보다 작은 경우: 왼쪽
        if value < self.value {
            // 좌측 노드가 있는 경우 || 없는 경우
            if let leftNode = self.left {
                leftNode.addNode(value)
            } else {
                let newNode = BinaryTreeNode(value: value)
                newNode.parent = self
                self.left = newNode
            }
        } else {
            // 나보다 큰 경우: 오른쪽
            if let rightNode = self.right {
                rightNode.addNode(value)
            } else {
                let newNode = BinaryTreeNode(value: value)
                newNode.parent = self
                self.right = newNode
            }
        }
    }
    
    // 중위 순회: 왼 -> 나 -> 오
    public func inOrder() {
        self.left?.preOrder()
        print(self.value)
        self.right?.preOrder()
    }
    
    // 전위 순회: 나 -> 왼 -> 오
    public func preOrder() {
        print(self.value)
        self.left?.preOrder()
        self.right?.preOrder()
    }
    
    // 후위 순회: 왼 -> 오 -> 나
    public func postOrder() {
        self.left?.preOrder()
        self.right?.preOrder()
        print(self.value)
    }
    
    // 검색
    public func search(value:T) -> BinaryTreeNode? {
        // 키 값을 찾은 경우
        if value == self.value {
            return self
        }
        
        // 해당 키값이 나보다 작은 경우: 왼쪽 서브트리로 이동
        if value < self.value {
            guard let left = self.left else { return nil }
            return left.search(value: value)
        } else {
            // 해당 키값이 나보다 큰 경우: 오른쪽 서브트리로 이동
            guard let right = self.right else { return nil }
            return right.search(value: value)
        }
    }
}


let root = BinaryTreeNode(value: 10)
root.insertNodeFromNode(5)
root.insertNodeFromNode(15)
root.insertNodeFromNode(3)
root.insertNodeFromNode(7)
root.insertNodeFromNode(12)
root.insertNodeFromNode(18)

// 검색 호출
if let foundNode = root.search(value: 7) {
    print("검색된 값: \(foundNode.value)")
} else {
    print("값을 찾을 수 없습니다.")
}
