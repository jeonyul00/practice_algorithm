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

/*
정리
 */

